from ...types cimport *
from ...enum.method cimport Method

cdef extern from "../../PokeFinder/Source/Core/Gen3/States/PIDToIVState.hpp":
    cdef cppclass PIDToIVState:
        PIDToIVState(u32, u16, u16, Method) except +
        PIDToIVState(u32, u8, u8, u8, u8, u8, u8, Method) except +
        u8 getIV(u8)
        array_u8_6 getIVs()
        Method getMethod()
        u32 getSeed()

cdef class PyPIDToIVState:
    cdef PIDToIVState* state_ptr
    cdef from_cpp(self, PIDToIVState& state_ptr)