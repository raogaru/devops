vLine="################################################################################"
ECHO() {
echo "$*"
}
# --------------------
LINE() {
echo ${vLine}
}
# --------------------------------------------------------------------------------

LINE
ECHO "clone postgres software"
git clone https://github.com/postgres/postgres.git ${MYDIR}/code

LINE
ECHO "touch all files"
find ${MYDIR}/code -type f -exec touch -t 202501010000 {} \;

LINE
cd ${MYDIR}/code
ECHO "Run AutoConfigure ..."
./autoconf

LINE
ECHO "Run Configure ..."
./configure --prefix=${MYDIR}/soft --without-icu -q

LINE
ECHO "make clean ..."
make -s clean

LINE
ECHO "make ..."
make -s

LINE
ECHO "test using make check ..."
make -s check

LINE
ECHO "make install ..."
make -s install

mkdir -p ${MYDIR}/code ${MYDIR}/logs ${MYDIR}/data ${MYDIR}/soft

LINE
ECHO "initdb ..."
${MYDIR}/soft/bin/initdb -D ${MYDIR}/data

LINE
ECHO "start db ..."
${MYDIR}/soft/bin/pg_ctl -D ${MYDIR}/data start -l ${MYDIR}/logs/postgres.log

LINE
ECHO "status db ..."
${MYDIR}/soft/bin/pg_ctl -D ${MYDIR}/data status -l ${MYDIR}/logs/postgres.log

LINE
ECHO "postgres bootstrap Completed !"

