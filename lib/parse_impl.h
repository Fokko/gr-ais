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

#ifndef INCLUDED_AIS_PARSE_IMPL_H
#define INCLUDED_AIS_PARSE_IMPL_H

#include <ais/parse.h>

#define FIELD_DELIM ((unsigned char)128)

// level 0, output ascii only
#define V_DECODE     1 // level 1, output ascii and decode packet
#define V_DEBUG_2    2 // level 2, output ascii, decode packet and debug less
#define V_DEBUG_3    4 // level 3, decode broken packets, debug more
#define V_DEBUG_4    8 // level 4, debug even more
#define V_DEBUG_5   16 // level 5,
#define V_DEBUG_6   32 // level 6,
#define V_MAX_LEVEL 0x00ff

namespace gr {
  namespace ais {

    class parse_impl : public parse
    {
     private:
// Constructors
	void parse_data(char *data, int len);
	void reverse_bit_order(char *data, int length);
	unsigned short crc(char *buffer, unsigned int len);
	unsigned char packet_crc(const char *buffer);
	unsigned long unpack(char *buffer, int start, int length);
	char nmea_checksum(std::string buffer);

	void decode_ais(char *ascii, int len, bool crc_ok);
	void decode_base_station(unsigned char *ais, int len, char *str);
	void decode_position_123A(unsigned char *ais, int len, char *str);
	void decode_static_and_voyage_data(unsigned char *ais, int len, char *str);
	void decode_sar_aircraft_position(unsigned char *ais, int len, char *str);
	void decode_utc_inquiry(unsigned char *ais, int len, char *str);
	void decode_addr_ack_safety_msg(unsigned char *ais, int len, char *str);
	void decode_safety_broadcast_msg(unsigned char *ais, int len, char *str);
	void decode_interrogation(unsigned char *ais, int len, char *str);
	void decode_assignment_mode_command(unsigned char *ais, int len, char *str);
	void decode_dgnss_broadcast_bin_msg(unsigned char *ais, int len, char *str);
	void decode_class_b_position_report(unsigned char *ais, int len, char *str,
			bool extended);
	void decode_aid_to_navigation(unsigned char *ais, int len, char *str);
	void decode_static_data_msg(unsigned char *ais, int len, char *str);
	void decode_long_range_msg(unsigned char *ais, int len, char *str);

	// decoder utils
	void print_position(unsigned char *ais, int bit_pos, char *str,
			const char *obj_type);
	void print_course_over_ground(unsigned char *ais, int bit_pos, char *str);
	void print_speed_over_ground(unsigned char *ais, int bit_pos, char *str,
			bool ship);
	void print_position_fix_type(unsigned char *ais, int bit_pos, char *str);
	void print_payload_hex(unsigned char *ais, int bit_pos, int len,
			const char *data_desc);
	void print_raim(unsigned char *ais, int bit_pos, char *str);
	void print_ship_properties(unsigned char *ais, int bit_pos, char *str);
	void print_ship_dimension(unsigned char *ais, int bit_pos, char *str);
	void print_ship_type(unsigned char *ais, int bit_pos, char *str);
	void print_navigation_status(unsigned char *ais, int bit_pos, char *str);

	char *get_text(unsigned char *ais, int bit_pos, int len6, char *buf);
	void get_lonlat(unsigned char *ais, int bit_pos, double *lon, double *lat);
	double wgs84distance(double lon1, double lat1, double lon2, double lat2);
	double wgs84bearing(double lon1, double lat1, double lon2, double lat2);
	void toDMS(double ll, int *d, int *m, double *s);

	unsigned long value(unsigned char *ais, int bit_pos, int len);
	inline char data_to_ascii(unsigned long unpacked) {
		char ch = unpacked;

		if (ch > 39)
			ch += 8;

		ch += 48;

		return ch;
	}

	inline unsigned char ascii_to_ais(char ascii) {
		unsigned char ais = ascii - 48;

		if (ais > 40)
			ais -= 8;

		return (ais & 0x3f);
	}

	std::ostringstream d_payload; // message output
	gr::msg_queue::sptr d_queue;	  // Destination for decoded messages
	char d_designator;
	unsigned long d_verbose;

     public:
      parse_impl(gr::msg_queue::sptr queue, char designator, int verbose, double lat, double lon);
      ~parse_impl();

      // Where all the action really happens
      virtual int work(int noutput_items,
	       gr_vector_const_void_star &input_items,
	       gr_vector_void_star &output_items);
    };

  } // namespace ais
} // namespace gr

#endif /* INCLUDED_AIS_PARSE_IMPL_H */

