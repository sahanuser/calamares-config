# Maintainer: Sahan Rasanjana <sahan.user@gmail.com>
pkgname=calamares-config
_destname="/etc"
pkgver=20230123
pkgrel=1
pkgdesc="calamares for Aster Linux"
arch=('x86_64')
url="https://github.com/asterlinux"
license=('GPL3')
makedepends=('git')
depends=()
conflicts=()
provides=("${pkgname}")
options=(!strip !emptydirs)
source=("calamares-config.tar.gz")
sha256sums=('SKIP')


pkgver() {
  date +%Y%m%d
}


package() {
	install -dm755 ${pkgdir}${_destname}
	cp -r ${srcdir}/${pkgname}/${_destname}/* ${pkgdir}${_destname}
}
