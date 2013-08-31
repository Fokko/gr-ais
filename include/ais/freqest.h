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
#ifndef AIS_freqest_H
#define AIS_freqest_H

#include <gnuradio/sync_block.h>

namespace gr {

namespace ais {

class freqest: virtual public gr::sync_block {
public:
	typedef boost::shared_ptr<freqest> freqest_sptr;

	static freqest_sptr make_freqest(int sample_rate, int data_rate,
			int fftlen);

	virtual int work(int noutput_items, gr_vector_const_void_star &input_items,
			gr_vector_void_star &output_items) = 0;
};
}
}
#endif

