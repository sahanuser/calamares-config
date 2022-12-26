# Maintainer: Sahan Rasanjana <sahan.user@gmail.com>
pkgname=calamares-config
_destname="/etc"
pkgver=4
pkgrel=3
pkgdesc="calamares for Aster Linux"
arch=('any')
url="https://github.com/asterlinux"
license=('GPL3')
makedepends=('git')
depends=()
conflicts=()
provides=("${pkgname}")
options=(!strip !emptydirs)
source=("calamares-config.tar.gz")
sha256sums=('SKIP')
package() {
	install -dm755 ${pkgdir}${_destname}
	cp -r ${srcdir}/${pkgname}/${_destname}/* ${pkgdir}${_destname}
}
