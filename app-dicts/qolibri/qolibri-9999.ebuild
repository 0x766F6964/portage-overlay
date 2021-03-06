EAPI=7
inherit cmake git-r3

DESCRIPTION="A QT-based EPWING dictionary viewer"
HOMEPAGE="https://github.com/ludios/qolibri"
EGIT_REPO_URI="https://github.com/ludios/qolibri.git"

LICENSE="GPL-2"
SLOT="0"

RDEPEND="
	dev-libs/eb
	dev-qt/qtcore
	dev-qt/qtmultimedia
	dev-qt/qtwebengine
	sys-libs/zlib
"
BDEPEND="
	dev-util/ninja
	dev-util/cmake
	dev-qt/linguist-tools
"

src_configure() {
	default

	local mycmakeargs=(
		-DCMAKE_BUILD_TYPE=Release
		-DCMAKE_INSTALL_PREFIX="${EPREFIX}${LOCAL_PREFIX}"
	)

	cmake_src_configure
}
