from setuptools import setup, Extension
from Cython.Build import cythonize
import glob

ext_modules = [
    Extension(
        "core/**/*",
        ["core/**/*.pyx"],
        depends=list(glob.glob("core/PokeFinder/Source/Core/**/*.*pp", recursive=True))
        + ["core/PokeFinder/LICENSE"],
        extra_compile_args=["-std=c++20"],
        extra_link_args=["-std=c++20"],
        include_dirs=["core/PokeFinder/Source"],
    )
]

setup(name="core", ext_modules=cythonize(ext_modules))
