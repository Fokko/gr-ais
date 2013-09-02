//ais_unstuff.h
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
#ifndef AIS_unstuff_H
#define AIS_unstuff_H

#include <gnuradio/block.h>


/*!
 * \brief unstuff a packed stream of bits.
 * \ingroup block
 *
 *
 * This uses the preferred technique: subclassing gr_block.
 */
namespace gr {

namespace ais {
class unstuff: virtual public gr::block {
public:

	typedef boost::shared_ptr<unstuff> unstuff_sptr;

	// Static
	static unstuff_sptr make_unstuff();

	// Functions
	int general_work(int noutput_items, gr_vector_int &ninput_items,
			gr_vector_const_void_star &input_items,
			gr_vector_void_star &output_items) = 0;

	void forecast(int noutput_items, gr_vector_int &ninput_items_required) = 0;
};
}
}
#endif
