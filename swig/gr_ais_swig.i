
%include "gnuradio.i"			// the common stuff

%{
#include "../include/ais/invert.h"
#include "../include/ais/unstuff.h"
#include "../include/ais/parse.h"
#include "../include/ais/extended_lms_dfe_ff.h"
#include "../include/ais/freqest.h"
%}

GR_SWIG_BLOCK_MAGIC2(ais, invert);
GR_SWIG_BLOCK_MAGIC2(ais, unstuff);
GR_SWIG_BLOCK_MAGIC2(ais, parse);
GR_SWIG_BLOCK_MAGIC2(ais, extended_lms_dfe_ff);
GR_SWIG_BLOCK_MAGIC2(ais, freqest);


