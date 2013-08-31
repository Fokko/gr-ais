/*
 * Copyright 2013 Free Software Foundation, Inc.
 * 
 * This file is part of GNU Radio
 * 
 * GNU Radio is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 3, or (at your option)
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

#ifndef INCLUDED_AIS_PARSE_H
#define INCLUDED_AIS_PARSE_H

#include <gnuradio/sync_block.h>
#include <gnuradio/msg_queue.h>
#include <sstream>

namespace gr {

namespace ais {
class parse: virtual public gr::sync_block {
public:

	typedef boost::shared_ptr<parse> parse_sptr;

	parse_sptr make_parse(gr::msg_queue::sptr queue, char designator,
			int verbose, double lon, double lat);

	int work(int noutput_items, gr_vector_const_void_star &input_items,
			gr_vector_void_star &output_items);

};
}
}
#endif /* INCLUDED_PARSE_H */