# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

CABAL_FEATURES="profile haddock lib"
inherit haskell-cabal

MY_PN="SDL-mixer"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="Binding to libSDL_mixer"
HOMEPAGE="http://hackage.haskell.org/cgi-bin/hackage-scripts/package/SDL-mixer"
SRC_URI="http://hackage.haskell.org/packages/archive/${MY_PN}/${PV}/${MY_P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=">=dev-lang/ghc-6.4.2
		dev-haskell/sdl
		media-libs/sdl-mixer"

S="${WORKDIR}/${MY_P}"

src_unpack() {
	unpack "${A}"

	echo "Include-Dirs: /usr/include/SDL" >> "${S}/SDL-mixer.cabal"
}
