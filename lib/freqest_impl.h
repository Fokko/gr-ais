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

#ifndef INCLUDED_AIS_FREQEST_IMPL_H
#define INCLUDED_AIS_FREQEST_IMPL_H

#include <ais/freqest.h>

namespace gr {
  namespace ais {

    class freqest_impl : public freqest
    {
     private:
	unsigned int d_offset;
	float d_binsize;
      // Nothing to declare in this block.

     public:
      freqest_impl(int sample_rate, int data_rate, int fftlen);
      ~freqest_impl();

      // Where all the action really happens
      virtual int work(int noutput_items,
	       gr_vector_const_void_star &input_items,
	       gr_vector_void_star &output_items);
    };

  } // namespace ais
} // namespace gr

#endif /* INCLUDED_AIS_FREQEST_IMPL_H */

