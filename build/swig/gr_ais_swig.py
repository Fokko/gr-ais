# This file was automatically generated by SWIG (http://www.swig.org).
# Version 2.0.8
#
# Do not make changes to this file unless you know what you are doing--modify
# the SWIG interface file instead.



from sys import version_info
if version_info >= (2,6,0):
    def swig_import_helper():
        from os.path import dirname
        import imp
        fp = None
        try:
            fp, pathname, description = imp.find_module('_gr_ais_swig', [dirname(__file__)])
        except ImportError:
            import _gr_ais_swig
            return _gr_ais_swig
        if fp is not None:
            try:
                _mod = imp.load_module('_gr_ais_swig', fp, pathname, description)
            finally:
                fp.close()
            return _mod
    _gr_ais_swig = swig_import_helper()
    del swig_import_helper
else:
    import _gr_ais_swig
del version_info
try:
    _swig_property = property
except NameError:
    pass # Python < 2.2 doesn't have 'property'.
def _swig_setattr_nondynamic(self,class_type,name,value,static=1):
    if (name == "thisown"): return self.this.own(value)
    if (name == "this"):
        if type(value).__name__ == 'SwigPyObject':
            self.__dict__[name] = value
            return
    method = class_type.__swig_setmethods__.get(name,None)
    if method: return method(self,value)
    if (not static):
        self.__dict__[name] = value
    else:
        raise AttributeError("You cannot add attributes to %s" % self)

def _swig_setattr(self,class_type,name,value):
    return _swig_setattr_nondynamic(self,class_type,name,value,0)

def _swig_getattr(self,class_type,name):
    if (name == "thisown"): return self.this.own()
    method = class_type.__swig_getmethods__.get(name,None)
    if method: return method(self)
    raise AttributeError(name)

def _swig_repr(self):
    try: strthis = "proxy of " + self.this.__repr__()
    except: strthis = ""
    return "<%s.%s; %s >" % (self.__class__.__module__, self.__class__.__name__, strthis,)

try:
    _object = object
    _newclass = 1
except AttributeError:
    class _object : pass
    _newclass = 0


def _swig_setattr_nondynamic_method(set):
    def set_attr(self,name,value):
        if (name == "thisown"): return self.this.own(value)
        if hasattr(self,name) or (name == "this"):
            set(self,name,value)
        else:
            raise AttributeError("You cannot add attributes to %s" % self)
    return set_attr


class invert_sptr(object):
    """Proxy of C++ boost::shared_ptr<(gr::ais::invert)> class"""
    thisown = _swig_property(lambda x: x.this.own(), lambda x, v: x.this.own(v), doc='The membership flag')
    __repr__ = _swig_repr
    def __init__(self, *args): 
        """
        __init__(boost::shared_ptr<(gr::ais::invert)> self) -> invert_sptr
        __init__(boost::shared_ptr<(gr::ais::invert)> self, gr::ais::invert * p) -> invert_sptr
        """
        this = _gr_ais_swig.new_invert_sptr(*args)
        try: self.this.append(this)
        except: self.this = this
    def __deref__(self):
        """__deref__(invert_sptr self) -> gr::ais::invert *"""
        return _gr_ais_swig.invert_sptr___deref__(self)

    __swig_destroy__ = _gr_ais_swig.delete_invert_sptr
    __del__ = lambda self : None;
invert_sptr_swigregister = _gr_ais_swig.invert_sptr_swigregister
invert_sptr_swigregister(invert_sptr)

invert_sptr.__repr__ = lambda self: "<gr_block %s (%d)>" % (self.name(), self.unique_id())
invert = invert.make;

class unstuff_sptr(object):
    """Proxy of C++ boost::shared_ptr<(gr::ais::unstuff)> class"""
    thisown = _swig_property(lambda x: x.this.own(), lambda x, v: x.this.own(v), doc='The membership flag')
    __repr__ = _swig_repr
    def __init__(self, *args): 
        """
        __init__(boost::shared_ptr<(gr::ais::unstuff)> self) -> unstuff_sptr
        __init__(boost::shared_ptr<(gr::ais::unstuff)> self, gr::ais::unstuff * p) -> unstuff_sptr
        """
        this = _gr_ais_swig.new_unstuff_sptr(*args)
        try: self.this.append(this)
        except: self.this = this
    def __deref__(self):
        """__deref__(unstuff_sptr self) -> gr::ais::unstuff *"""
        return _gr_ais_swig.unstuff_sptr___deref__(self)

    __swig_destroy__ = _gr_ais_swig.delete_unstuff_sptr
    __del__ = lambda self : None;
unstuff_sptr_swigregister = _gr_ais_swig.unstuff_sptr_swigregister
unstuff_sptr_swigregister(unstuff_sptr)

unstuff_sptr.__repr__ = lambda self: "<gr_block %s (%d)>" % (self.name(), self.unique_id())
unstuff = unstuff.make;

class parse_sptr(object):
    """Proxy of C++ boost::shared_ptr<(gr::ais::parse)> class"""
    thisown = _swig_property(lambda x: x.this.own(), lambda x, v: x.this.own(v), doc='The membership flag')
    __repr__ = _swig_repr
    def __init__(self, *args): 
        """
        __init__(boost::shared_ptr<(gr::ais::parse)> self) -> parse_sptr
        __init__(boost::shared_ptr<(gr::ais::parse)> self, gr::ais::parse * p) -> parse_sptr
        """
        this = _gr_ais_swig.new_parse_sptr(*args)
        try: self.this.append(this)
        except: self.this = this
    def __deref__(self):
        """__deref__(parse_sptr self) -> gr::ais::parse *"""
        return _gr_ais_swig.parse_sptr___deref__(self)

    __swig_destroy__ = _gr_ais_swig.delete_parse_sptr
    __del__ = lambda self : None;
parse_sptr_swigregister = _gr_ais_swig.parse_sptr_swigregister
parse_sptr_swigregister(parse_sptr)

parse_sptr.__repr__ = lambda self: "<gr_block %s (%d)>" % (self.name(), self.unique_id())
parse = parse.make;

class extended_lms_dfe_ff_sptr(object):
    """Proxy of C++ boost::shared_ptr<(gr::ais::extended_lms_dfe_ff)> class"""
    thisown = _swig_property(lambda x: x.this.own(), lambda x, v: x.this.own(v), doc='The membership flag')
    __repr__ = _swig_repr
    def __init__(self, *args): 
        """
        __init__(boost::shared_ptr<(gr::ais::extended_lms_dfe_ff)> self) -> extended_lms_dfe_ff_sptr
        __init__(boost::shared_ptr<(gr::ais::extended_lms_dfe_ff)> self, gr::ais::extended_lms_dfe_ff * p) -> extended_lms_dfe_ff_sptr
        """
        this = _gr_ais_swig.new_extended_lms_dfe_ff_sptr(*args)
        try: self.this.append(this)
        except: self.this = this
    def __deref__(self):
        """__deref__(extended_lms_dfe_ff_sptr self) -> gr::ais::extended_lms_dfe_ff *"""
        return _gr_ais_swig.extended_lms_dfe_ff_sptr___deref__(self)

    __swig_destroy__ = _gr_ais_swig.delete_extended_lms_dfe_ff_sptr
    __del__ = lambda self : None;
extended_lms_dfe_ff_sptr_swigregister = _gr_ais_swig.extended_lms_dfe_ff_sptr_swigregister
extended_lms_dfe_ff_sptr_swigregister(extended_lms_dfe_ff_sptr)

extended_lms_dfe_ff_sptr.__repr__ = lambda self: "<gr_block %s (%d)>" % (self.name(), self.unique_id())
extended_lms_dfe_ff = extended_lms_dfe_ff.make;

class freqest_sptr(object):
    """Proxy of C++ boost::shared_ptr<(gr::ais::freqest)> class"""
    thisown = _swig_property(lambda x: x.this.own(), lambda x, v: x.this.own(v), doc='The membership flag')
    __repr__ = _swig_repr
    def __init__(self, *args): 
        """
        __init__(boost::shared_ptr<(gr::ais::freqest)> self) -> freqest_sptr
        __init__(boost::shared_ptr<(gr::ais::freqest)> self, gr::ais::freqest * p) -> freqest_sptr
        """
        this = _gr_ais_swig.new_freqest_sptr(*args)
        try: self.this.append(this)
        except: self.this = this
    def __deref__(self):
        """__deref__(freqest_sptr self) -> gr::ais::freqest *"""
        return _gr_ais_swig.freqest_sptr___deref__(self)

    __swig_destroy__ = _gr_ais_swig.delete_freqest_sptr
    __del__ = lambda self : None;
freqest_sptr_swigregister = _gr_ais_swig.freqest_sptr_swigregister
freqest_sptr_swigregister(freqest_sptr)

freqest_sptr.__repr__ = lambda self: "<gr_block %s (%d)>" % (self.name(), self.unique_id())
freqest = freqest.make;



