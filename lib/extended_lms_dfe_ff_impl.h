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

#ifndef INCLUDED_AIS_EXTENDED_LMS_DFE_FF_IMPL_H
#define INCLUDED_AIS_EXTENDED_LMS_DFE_FF_IMPL_H

#include <ais/extended_lms_dfe_ff.h>

namespace gr {
  namespace ais {

    class extended_lms_dfe_ff_impl : virtual public extended_lms_dfe_ff
    {
     private:

      // Nothing to declare in this block.
	float d_lambda_ff;
	float d_lambda_fb;
	std::vector<float> d_ff_delayline;
	std::vector<float> d_fb_delayline;
	std::vector<float> d_ff_taps;
	std::vector<float> d_fb_taps;
	unsigned int d_ff_index;
	unsigned int d_fb_index;
	unsigned int d_resetcounter;

 	inline void zero_vector(std::vector<float> &v)
  	{
    		for(unsigned int i=0; i < v.size(); i++)
      			v[i] = 0;
  	}

	inline float slice(float val) {
		if (val > 0)	
			return 1;
		else
			return -1;
	}



    	inline unsigned int roundup(unsigned int n)
    	{
    		int i;
    		for(i=0;((n-1)>>i) != 0;i++);
	}

	void reset(void);
     public:
      extended_lms_dfe_ff_impl(float lambda_ff, float lambda_fb, unsigned int num_fftaps, unsigned int num_fbtaps);
      ~extended_lms_dfe_ff_impl();


      virtual int work(int noutput_items,
	       gr_vector_const_void_star &input_items,
	       gr_vector_void_star &output_items);
    };

  } // namespace ais
} // namespace gr

#endif /* INCLUDED_AIS_EXTENDED_LMS_DFE_FF_IMPL_H */

