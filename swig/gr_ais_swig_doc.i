
/*
 * This file was automatically generated using swig_doc.py.
 * 
 * Any changes to it will be lost next time it is regenerated.
 */




%feature("docstring") ais_extended_lms_dfe_ff "Least-Mean-Square Decision Feedback Equalizer (float in/out) with reset input and preamble training."

%feature("docstring") ais_extended_lms_dfe_ff::ais_extended_lms_dfe_ff "

Params: (lambda_ff, lambda_fb, num_fftaps, num_fbtaps)"

%feature("docstring") ais_extended_lms_dfe_ff::reset "

Params: ()"

%feature("docstring") ais_extended_lms_dfe_ff::work "

Params: (noutput_items, input_items, output_items)"

%feature("docstring") ais_make_extended_lms_dfe_ff "Least-Mean-Square Decision Feedback Equalizer (float in/out) with reset input and preamble training.

Params: (lambda_ff, lambda_fb, num_fftaps, num_fbtaps)"

%feature("docstring") ais_freqest "freqest a packed stream of bits.

This uses the preferred technique: subclassing gr_sync_block.

Return a shared_ptr to a new instance of ais_freqest.

To avoid accidental use of raw pointers, ais_freqest's constructor is private. ais_make_freqest is the public interface for creating new instances."

%feature("docstring") ais_freqest::ais_freqest "

Params: (sample_rate, data_rate, fftlen)"

%feature("docstring") ais_freqest::~ais_freqest "

Params: (NONE)"

%feature("docstring") ais_freqest::work "

Params: (noutput_items, input_items, output_items)"

%feature("docstring") ais_make_freqest "freqest a packed stream of bits.

This uses the preferred technique: subclassing gr_sync_block.

Return a shared_ptr to a new instance of ais_freqest.

To avoid accidental use of raw pointers, ais_freqest's constructor is private. ais_make_freqest is the public interface for creating new instances.

Params: (sample_rate, data_rate, fftlen)"

%feature("docstring") ais_invert "invert a packed stream of bits.

This uses the preferred technique: subclassing gr_sync_block.

Return a shared_ptr to a new instance of ais_invert.

To avoid accidental use of raw pointers, ais_invert's constructor is private. ais_make_invert is the public interface for creating new instances."

%feature("docstring") ais_invert::ais_invert "

Params: (NONE)"

%feature("docstring") ais_invert::~ais_invert "

Params: (NONE)"

%feature("docstring") ais_invert::work "

Params: (noutput_items, input_items, output_items)"

%feature("docstring") ais_make_invert "invert a packed stream of bits.

This uses the preferred technique: subclassing gr_sync_block.

Return a shared_ptr to a new instance of ais_invert.

To avoid accidental use of raw pointers, ais_invert's constructor is private. ais_make_invert is the public interface for creating new instances.

Params: (NONE)"



%feature("docstring") ais_parse::ais_parse "

Params: (queue, designator)"

%feature("docstring") ais_parse::parse_data "

Params: (data, len)"

%feature("docstring") ais_parse::reverse_bit_order "

Params: (data, length)"

%feature("docstring") ais_parse::crc "

Params: (buffer, len)"

%feature("docstring") ais_parse::unpack "

Params: (buffer, start, length)"

%feature("docstring") ais_parse::nmea_checksum "

Params: (buffer)"

%feature("docstring") ais_parse::work "

Params: (noutput_items, input_items, output_items)"

%feature("docstring") ais_make_parse "

Params: (queue, designator)"

%feature("docstring") ais_unstuff "unstuff a packed stream of bits.

This uses the preferred technique: subclassing gr_block.

Return a shared_ptr to a new instance of ais_unstuff.

To avoid accidental use of raw pointers, ais_unstuff's constructor is private. ais_make_unstuff is the public interface for creating new instances."

%feature("docstring") ais_unstuff::ais_unstuff "

Params: (NONE)"

%feature("docstring") ais_unstuff::~ais_unstuff "

Params: (NONE)"

%feature("docstring") ais_unstuff::general_work "

Params: (noutput_items, ninput_items, input_items, output_items)"

%feature("docstring") ais_unstuff::forecast "

Params: (noutput_items, ninput_items_required)"

%feature("docstring") ais_make_unstuff "unstuff a packed stream of bits.

This uses the preferred technique: subclassing gr_block.

Return a shared_ptr to a new instance of ais_unstuff.

To avoid accidental use of raw pointers, ais_unstuff's constructor is private. ais_make_unstuff is the public interface for creating new instances.

Params: (NONE)"