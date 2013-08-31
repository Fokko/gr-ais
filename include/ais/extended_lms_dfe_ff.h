#ifndef INCLUDED_AIS_EXTENDED_LMS_DFE_FF_H
#define INCLUDED_AIS_EXTENDED_LMS_DFE_FF_H

#include <cmath>
#include <gnuradio/sync_block.h>

/*!
 * \brief Least-Mean-Square Decision Feedback Equalizer (float in/out) with reset input and preamble training
 * \ingroup eq_blk
 */
namespace gr {

namespace ais {


class extended_lms_dfe_ff: virtual public gr::sync_block
{
	public:
		typedef boost::shared_ptr<extended_lms_dfe_ff> extended_lms_dfe_ff_sptr;

		virtual extended_lms_dfe_ff_sptr make_extended_lms_dfe_ff(float lambda_ff,
				float lambda_fb, unsigned int num_fftaps, unsigned int num_fbtaps);


		virtual int work(int noutput_items, gr_vector_const_void_star &input_items,
				gr_vector_void_star &output_items);
};
}
}
#endif
