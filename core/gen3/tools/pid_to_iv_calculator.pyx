# distutils: language = c++

from cython.operator import dereference, preincrement
from .pid_to_iv_calculator cimport *
from ..states.pid_to_iv_state cimport PIDToIVState, PyPIDToIVState

def calculate_ivs(u32 pid):
    cdef vector[PIDToIVState] results = calculateIVs(pid)
    cdef list py_results = []
    cdef vector[PIDToIVState].iterator it = results.begin()
    cdef PyPIDToIVState result
    while it < results.end():
        result = PyPIDToIVState()
        result.from_cpp(dereference(it))
        py_results.append(result)
        preincrement(it)
    return py_results
