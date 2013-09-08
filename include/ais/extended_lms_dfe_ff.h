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


#ifndef INCLUDED_AIS_EXTENDED_LMS_DFE_FF_H
#define INCLUDED_AIS_EXTENDED_LMS_DFE_FF_H

#include <ais/api.h>
#include <gnuradio/sync_block.h>
#include <gnuradio/io_signature.h>

namespace gr {
  namespace ais {

    /*!
     * \brief <+description of block+>
     * \ingroup ais
     *
     */
    class AIS_API extended_lms_dfe_ff : virtual public gr::sync_block
    {
     public:
      typedef boost::shared_ptr<extended_lms_dfe_ff> sptr;
	
	/*!
       * \brief Return a shared_ptr to a new instance of ais::extended_lms_dfe_ff.
       *
       * To avoid accidental use of raw pointers, ais::extended_lms_dfe_ff's
       * constructor is in a private implementation
       * class. ais::extended_lms_dfe_ff::make is the public interface for
       * creating new instances.
       */
      static sptr make(float lambda_ff, float lambda_fb, unsigned int num_fftaps, unsigned int num_fbtaps);
    };

  } // namespace ais
} // namespace gr

#endif /* INCLUDED_AIS_EXTENDED_LMS_DFE_FF_H */

