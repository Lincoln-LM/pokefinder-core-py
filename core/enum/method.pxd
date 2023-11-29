from ..types cimport *

cdef extern from "../PokeFinder/Source/Core/Enum/Method.hpp":
    cdef enum Method:
        None,

        Method1,
        Method1Reverse,
        Method2,
        Method4,

        XDColo,
        Channel,

        EBred,
        EBredSplit,
        EBredAlternate,
        EBredPID,
        RSFRLGBred,
        RSFRLGBredSplit,
        RSFRLGBredAlternate,
        RSFRLGBredMixed,

        CuteCharmDPPt,
        CuteCharmHGSS,
        MethodJ,
        MethodK,
        PokeRadar,
        WondercardIVs,

        Method5IVs,
        Method5CGear,
        Method5