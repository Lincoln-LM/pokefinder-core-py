from libcpp.vector cimport vector

ctypedef unsigned long long u64
ctypedef unsigned int u32
ctypedef unsigned short u16
ctypedef unsigned char u8

cdef extern from "<array>" namespace "std":
    cdef cppclass array_u8_6 "std::array<u8, 6>":
        ctypedef vector[u8].iterator iterator "iterator"
        iterator begin()
        iterator end()
