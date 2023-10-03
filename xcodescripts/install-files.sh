set -e -x

MANDIR="$DSTROOT/$DT_TOOLCHAIN_DIR"/usr/share/man/man1
install -d -m 0755 "$MANDIR"
install -c -m 0644 \
	"$PROJECT_DIR"/doc/m4.1 \
	"$MANDIR"/gm4.1

OSV="$DSTROOT"/usr/local/OpenSourceVersions
OSL="$DSTROOT"/usr/local/OpenSourceLicenses
install -d -m 0755 "$OSV"
install -c -m 0644 \
	"$PROJECT_DIR"/gm4.plist \
	"$OSV"
install -d -m 0755 "$OSL"
install -c -m 0644 \
	"$PROJECT_DIR"/COPYING \
	"$OSL"/gm4.txt
