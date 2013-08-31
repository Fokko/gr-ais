//freqest.h
/* -*- c++ -*- */
/*
 * Copyright 2004 Free Software Foundation, Inc.
 * 
 * This file is part of GNU Radio
 * 
 * GNU Radio is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2, or (at your option)
 * any later version.
 * 
 * GNU Radio is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 * 
 * You should have received a copy of the GNU General Public License
 * along with GNU Radio; see the file COPYING.  If not, write to
 * the Free Software Foundation, Inc., 51 Franklin Street,
 * Boston, MA 02110-1301, USA.
 */
#ifndef freqest_H_IMPL
#define freqest_H_IMPL

#include <gnuradio/sync_block.h>
#include <../include/ais/freqest.h>

namespace gr {
namespace ais {
class freqest_impl: public freqest {
private:

public:
	freqest_impl(int sample_rate, int data_rate, int fftlen); // private constructor

	static const int MIN_IN = 1;    // mininum number of input streams
	static const int MAX_IN = 1;    // maximum number of input streams
	static const int MIN_OUT = 1;   // minimum number of output streams
	static const int MAX_OUT = 1;   // maximum number of output streams

	int work(int noutput_items, gr_vector_const_void_star &input_items,
			gr_vector_void_star &output_items);
};
}
}
#endif /* freqest_H */

