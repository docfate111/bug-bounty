git clone --recursive https://github.com/amzn/ion-c.git ion-c
apt-get -y update
apt-get install -y software-properties-common
add-apt-repository -y ppa:george-edison55/cmake-3.x
apt-get -y update
apt-get install -y cmake
mkdir -p ion-c/build/release
cd ion-c/build/release
mkdir -p build/release
CC="afl-gcc" cmake -DCMAKE_BUILD_TYPE=Release ../..
CC="afl-gcc" make
