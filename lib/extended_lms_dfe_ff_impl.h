#ifndef INCLUDED_EXTENDED_LMS_DFE_FF_H_IMPL
#define INCLUDED_EXTENDED_LMS_DFE_FF_H_IMPL

#include <../include/ais/extended_lms_dfe_ff.h>

class extended_lms_dfe_ff_impl;


namespace gr {
namespace ais {

/*!
 * \brief Least-Mean-Square Decision Feedback Equalizer (float in/out) with reset input and preamble training
 * \ingroup eq_blk
 */
class extended_lms_dfe_ff_impl: public gr::ais::extended_lms_dfe_ff {

private:
	float d_lambda_ff;
	float d_lambda_fb;
	std::vector<float> d_ff_delayline;
	std::vector<float> d_fb_delayline;
	std::vector<float> d_ff_taps;
	std::vector<float> d_fb_taps;
	unsigned int d_ff_index;
	unsigned int d_fb_index;
	unsigned int d_resetcounter;

	extended_lms_dfe_ff_impl (float lambda_ff, float lambda_fb,
			unsigned int num_fftaps, unsigned int num_fbtaps);

	void reset(void);

public:

	int work(int noutput_items, gr_vector_const_void_star &input_items,
			gr_vector_void_star &output_items);
};
}
}
#endif
