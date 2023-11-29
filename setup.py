from setuptools import setup, Extension
from Cython.Build import cythonize

ext_modules = [
    Extension(
        "core/**/*",
        ["core/**/*.pyx"],
        extra_compile_args=["-std=c++20", "-I", "core/PokeFinder/Source"],
        extra_link_args=["-std=c++20", "-I", "core/PokeFinder/Source"],
    )
]

setup(name="core", ext_modules=cythonize(ext_modules))
