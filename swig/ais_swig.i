/* -*- c++ -*- */

#define AIS_API

%include "gnuradio.i"			// the common stuff

//load generated python docstrings
%include "ais_swig_doc.i"

%{
#include "gnuradio/msg_queue.h"
#include "gnuradio/misc.h"
#include "ais/extended_lms_dfe_ff.h"
#include "ais/freqest.h"
#include "ais/invert.h"
#include "ais/parse.h"
#include "ais/unstuff.h"
%}


%include "ais/extended_lms_dfe_ff.h"
%include "ais/freqest.h"
%include "ais/invert.h"
%include "ais/parse.h"
%include "ais/unstuff.h"


GR_SWIG_BLOCK_MAGIC2(ais, extended_lms_dfe_ff);
GR_SWIG_BLOCK_MAGIC2(ais, freqest);
GR_SWIG_BLOCK_MAGIC2(ais, invert);
GR_SWIG_BLOCK_MAGIC2(ais, parse);
GR_SWIG_BLOCK_MAGIC2(ais, unstuff);
