from ...enum.method cimport *
from ...gen3.states.pid_to_iv_state cimport *
from libcpp.vector cimport vector

cdef extern from "../../PokeFinder/Source/Core/Gen3/Tools/PIDToIVCalculator.cpp":
    pass

cdef extern from "../../PokeFinder/Source/Core/RNG/LCRNGReverse.cpp":
    pass

cdef extern from "../../PokeFinder/Source/Core/Gen3/Tools/PIDToIVCalculator.hpp" namespace "PIDToIVCalculator":
    cdef vector[PIDToIVState] calculateIVs(u32 pid)
