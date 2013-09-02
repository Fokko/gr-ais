//unstuff.h
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
#ifndef unstuff_H_IMPL
#define unstuff_H_IMPL

#include <gnuradio/block.h>
#include <../include/ais/unstuff.h>


/*!
 * \brief unstuff a packed stream of bits.
 * \ingroup block
 *
 *
 * This uses the preferred technique: subclassing gr_block.
 */
namespace gr {
namespace ais {
class unstuff_impl: public gr::ais::unstuff {
private:


public:
	unstuff_impl();   // private constructor
	/*
	 * Specify constraints on number of input and output streams.
	 * This info is used to construct the input and output signatures
	 * (2nd & 3rd args to gr_block's constructor).  The input and
	 * output signatures are used by the runtime system to
	 * check that a valid number and type of inputs and outputs
	 * are connected to this block.  In this case, we accept
	 * only 1 input and 1 output.
	 */
	static const int MIN_IN = 1;    // mininum number of input streams
	static const int MAX_IN = 1;    // maximum number of input streams
	static const int MIN_OUT = 1;   // minimum number of output streams
	static const int MAX_OUT = 1;   // maximum number of output streams

	int general_work(int noutput_items, gr_vector_int &ninput_items,
			gr_vector_const_void_star &input_items,
			gr_vector_void_star &output_items);

	void forecast(int noutput_items, gr_vector_int &ninput_items_required);
};
}
}
#endif /* unstuff_H */

