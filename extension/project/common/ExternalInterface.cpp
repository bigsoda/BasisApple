#define IMPLEMENT_API
#include <hx/CFFI.h>

#include <hxcpp.h>

#include "basis/Basis.h"

using namespace basis;

extern "C" void basis_main ()
{	
	doesNothing();
}
DEFINE_ENTRY_POINT (basis_main);
extern "C" int basis_register_prims () { return 0; }