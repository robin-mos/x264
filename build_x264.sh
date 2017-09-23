export TMPDIR=$(pwd)/tmp
export NDK=/home/ndk/android-ndk-r10b
export PLATFORM=$NDK/platforms/android-L/arch-arm
export PREBUILT=$NDK/toolchains/arm-linux-androideabi-4.9/prebuilt/linux-x86_64
export PREFIX=$(pwd)/android-lib
./configure --prefix=$PREFIX \
--enable-static \
--enable-pic \
--disable-asm \
--disable-cli \
--host=arm-linux \
--cross-prefix=$PREBUILT/bin/arm-linux-androideabi- \
--sysroot=$PLATFORM

make -j4

cp libx264.a android-lib/lib/
cp x264cli.h android-lib/include/
cp x264.h android-lib/include/
cp x264_config.h android-lib/include/
