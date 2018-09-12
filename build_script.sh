#!/usr/bin/env bash
mkdir build
cd build
pwd

#      -DOPENEXR_HOME="/tools/package/openexr/2.2.0" \
#      -DILMBASE_HOME="/tools/package/ilmbase/2.2.0" \
#      -DOPENGL_gl_LIBRARY='/tools/package/glfw/3.1.0' \
#      -DGLEW_LOCATION='/tools/package/glew/2.0.0'\
#      -DMAYA_DEVKIT_LOCATION='/tools/package/mayadevkit/2018u3' \
#      -DMAYA_LOCATION='/tools/package/maya/2018.sp3' \


cmake -DCMAKE_PREFIX_PATH="/tools/package/boost/1.55.0;/tools/package/hdf5/1.10.0-patch1;/tools/package/glew/2.0.0;/tools/package/openimageio/1.7.14_nobin;/tools/package/tbb/4.4.6;/tools/package/openexr/2.2.0;/tools/package/ilmbase/2.2.0;/tools/package/alembic/1.7.7_gcc4.8.5;/tools/package/opensubdiv/3.1.1;/tools/package/libjpeg/9b;/tools/package/libpng/1.6.29;/tools/package/tiff/4.0.6" \
      -DCMAKE_INSTALL_PREFIX='/dd/shows/DEVSGTK/user/work.gverma/git/USD_qt_build' \
      -DCMAKE_BUILD_TYPE=RelWithDebInfo \
      -DCMAKE_C_COMPILER="/tools/package/gcc/4.8.5/bin/gcc" \
      -DCMAKE_CXX_COMPILER="/tools/package/gcc/4.8.5/bin/g++" \
      -DBOOST_ROOT:PATHNAME="/tools/package/boost/1.55.0" \
      -DBoost_LIBRARY_DIRS:FILEPATH="/tools/package/boost/1.55.0/lib" \
      -DBoost_NO_BOOST_CMAKE=TRUE \
      -DBoost_NO_SYSTEM_PATHS=TRUE \
      -DUSD_ROOT='/tools/package/usd/18.09_internal_maya2018.sp3' \
      ..

make -j 16 install
cd -
