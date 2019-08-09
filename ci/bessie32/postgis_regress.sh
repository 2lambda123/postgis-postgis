export PATH=${PATH}:/usr/local:/usr/local/lib:/usr/local/bin
sh autogen.sh
./configure --without-interrupt-tests
make clean
make
export PGUSER=postgres
export PGIS_REG_TMPDIR=~/tmp/pgis_reg_${BRANCH}
psql -c "DROP DATABASE IF EXISTS postgis_reg;"
make check RUNTESTFLAGS="-v"
sudo make install
make check RUNTESTFLAGS="-v --extension"
