# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

CABAL_FEATURES="lib profile haddock"

inherit haskell-cabal eutils

DESCRIPTION="Third party extentions for xmonad"
HOMEPAGE="http://www.xmonad.org/"
SRC_URI="http://hackage.haskell.org/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~sparc ~x86"

IUSE=""

DEPEND="dev-haskell/mtl
	~x11-wm/xmonad-${PV}
	>=dev-lang/ghc-6.6
	>=dev-haskell/x11-1.4.1
	>=dev-haskell/cabal-1.2.1"
RDEPEND="${DEPEND}"

src_unpack() {
	unpack $A
	cd "${S}"
	epatch "${FILESDIR}/${P}-urgency-seconds.patch"
}

src_compile() {
	CABAL_CONFIGURE_FLAGS="--constraint=base<4 --flags=-use_xft --flags=-with_utf8"
	cabal_src_compile
}
