# distutils: language = c++

from libc.stdlib cimport malloc, free
from libc.string cimport memcpy
from .pid_to_iv_state cimport PIDToIVState

cdef class PyPIDToIVState:
    def __cinit__(self):
        self.state_ptr = <PIDToIVState*>malloc(sizeof(self.state_ptr))

    cdef from_cpp(self, PIDToIVState& state_ptr):
        memcpy(self.state_ptr, &state_ptr, sizeof(PIDToIVState))

    def get_ivs(self):
        cdef array_u8_6 ivs = self.state_ptr.getIVs()
        return [iv for iv in ivs]

    def get_seed(self):
        return self.state_ptr.getSeed()

    def get_method(self):
        return self.state_ptr.getMethod()

    def __dealloc__(self):
        free(self.state_ptr)
