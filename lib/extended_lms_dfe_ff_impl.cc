/* -*- c++ -*- */
/* 
 * Copyright 2013 <+YOU OR YOUR COMPANY+>.
 * 
 * This is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 3, or (at your option)
 * any later version.
 * 
 * This software is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 * 
 * You should have received a copy of the GNU General Public License
 * along with this software; see the file COPYING.  If not, write to
 * the Free Software Foundation, Inc., 51 Franklin Street,
 * Boston, MA 02110-1301, USA.
 */

#ifdef HAVE_CONFIG_H
#include "config.h"
#endif

#include <gnuradio/io_signature.h>
#include <gnuradio/misc.h>
#include "extended_lms_dfe_ff_impl.h"

/*!
* \brief Least-Mean-Square Decision Feedback Equalizer (float in/out) with reset input and preamble training
* \ingroup eq_blk
*/
namespace gr {
  namespace ais {

    extended_lms_dfe_ff::sptr
    extended_lms_dfe_ff::make(float lambda_ff, float lambda_fb, unsigned int num_fftaps, unsigned int num_fbtaps)
    {
      return gnuradio::get_initial_sptr
        (new extended_lms_dfe_ff_impl(lambda_ff, lambda_fb, num_fftaps, num_fbtaps));
    }

    /*
     * The private constructor
     */
    extended_lms_dfe_ff_impl::extended_lms_dfe_ff_impl(float lambda_ff, float lambda_fb, unsigned int num_fftaps, unsigned int num_fbtaps)
      : gr::sync_block("extended_lms_dfe_ff",
              gr::io_signature::make2(2, 2, sizeof(float), sizeof(char)),
              gr::io_signature::make(1, 1, sizeof(float))),
	    d_lambda_ff (lambda_ff), d_lambda_fb (lambda_fb), 
	    d_ff_taps(num_fftaps), d_fb_taps(num_fbtaps),
	    d_ff_index(0), d_fb_index(0), d_resetcounter(0),
	    d_ff_delayline(roundup(num_fftaps)),
	    d_fb_delayline(roundup(num_fbtaps))
    {
	zero_vector(d_ff_taps);
	d_ff_taps[d_ff_taps.size() / 2] = 1;

	zero_vector(d_fb_taps);
	zero_vector(d_ff_delayline);
	zero_vector(d_fb_delayline);

	set_output_multiple(300);
    }

    /*
     * Our virtual destructor.
     */
    extended_lms_dfe_ff_impl::~extended_lms_dfe_ff_impl()
    {

    }

    void extended_lms_dfe_ff_impl::reset(void) {
	zero_vector(d_ff_taps);
	d_ff_taps[d_ff_taps.size() / 2] = 1;

	zero_vector(d_fb_taps);
	zero_vector(d_ff_delayline);
	zero_vector(d_fb_delayline);

	d_ff_index = 0;
	d_fb_index = 0;

	d_resetcounter = 0;
    }


    int
    extended_lms_dfe_ff_impl::work(int noutput_items,
			  gr_vector_const_void_star &input_items,
			  gr_vector_void_star &output_items)
    {

	const float *iptr = (const float *) input_items[0];
	const char *i2ptr = (const char *) input_items[1];

	float *optr = (float *) output_items[0];

	float acc, decision, error;
	unsigned int i;

	unsigned int ff_mask = d_ff_delayline.size() - 1;	// size is power of 2
	unsigned int fb_mask = d_fb_delayline.size() - 1;

	int size = noutput_items;
	while (size-- > 0) {

		if ((*i2ptr++ & 0x02) && (d_resetcounter > 50)) {
			if (size < 150) {
				//printf("Returning, not enough to work with\n");
				return noutput_items - size; //don't have enough to work with for an entire packet so wait for the next one
			}
			reset(); //if the correlator bit (bit 1/LSB-1) is set, reset taps to 0

			//now we train the DFE by looping through the first 150 bits a dozen times or so.

			for (int k = 0; k < 12; k++) { //train 12 times
				const float *iptr_train = iptr; //a temporary input pointer to train with
				while ((iptr_train - iptr) < 150) {
					acc = 0;
					d_ff_delayline[d_ff_index] = *iptr_train++;

					// Compute output
					for (i = 0; i < d_ff_taps.size(); i++)
						acc += d_ff_delayline[(i + d_ff_index) & ff_mask]
								* d_ff_taps[i];

					for (i = 0; i < d_fb_taps.size(); i++)
						acc -= d_fb_delayline[(i + d_fb_index) & fb_mask]
								* d_fb_taps[i];

					decision = slice(acc);
					error = decision - acc;

					// Update taps
					for (i = 0; i < d_ff_taps.size(); i++)
						d_ff_taps[i] += d_lambda_ff * error
								* d_ff_delayline[(i + d_ff_index) & ff_mask];

					for (i = 0; i < d_fb_taps.size(); i++)
						d_fb_taps[i] -= d_lambda_fb * error
								* d_fb_delayline[(i + d_fb_index) & fb_mask];

					d_fb_index = (d_fb_index - 1) & fb_mask;  // Decrement index
					d_ff_index = (d_ff_index - 1) & ff_mask;  // Decrement index

					d_fb_delayline[d_fb_index] = decision; // Save decision in feedback
				}
			}
			//printf("Resetting DFE\n");
		}

		d_resetcounter++;

		acc = 0;
		d_ff_delayline[d_ff_index] = *iptr++;

		// Compute output
		for (i = 0; i < d_ff_taps.size(); i++)
			acc += d_ff_delayline[(i + d_ff_index) & ff_mask] * d_ff_taps[i];

		for (i = 0; i < d_fb_taps.size(); i++)
			acc -= d_fb_delayline[(i + d_fb_index) & fb_mask] * d_fb_taps[i];

		decision = slice(acc);
		error = decision - acc;

		// Update taps
		for (i = 0; i < d_ff_taps.size(); i++)
			d_ff_taps[i] += d_lambda_ff * error
					* d_ff_delayline[(i + d_ff_index) & ff_mask];

		for (i = 0; i < d_fb_taps.size(); i++)
			d_fb_taps[i] -= d_lambda_fb * error
					* d_fb_delayline[(i + d_fb_index) & fb_mask];

		d_fb_index = (d_fb_index - 1) & fb_mask;   	// Decrement index
		d_ff_index = (d_ff_index - 1) & ff_mask;   	// Decrement index

		d_fb_delayline[d_fb_index] = decision; 	// Save decision in feedback

		*optr++ = acc;   // Output decision
	}

	return noutput_items;
    }



  } /* namespace ais */
} /* namespace gr */

