from pkgutil import extend_path
import imp
import sys
_usdQt = imp.load_module('luma.UsdQt._usdQt',
                         *imp.find_module('_usdQt',
                                          extend_path([], 'luma.UsdQt')))
sys.modules['luma'].UsdQt = sys.modules['luma.UsdQt']
import luma.UsdQt
# make this module proxy the usdQt package
globals().update(luma.UsdQt.__dict__)

del sys, imp, extend_path
