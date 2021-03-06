# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

# ebuild generated by hackport 0.2.13

EAPI="3"

CABAL_FEATURES="lib profile haddock hscolour"
inherit haskell-cabal

MY_PN="RepLib"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="Generic programming library with representation types"
HOMEPAGE="http://code.google.com/p/replib/"
SRC_URI="http://hackage.haskell.org/packages/archive/${MY_PN}/${PV}/${MY_P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="=dev-haskell/mtl-2.0*
		>=dev-lang/ghc-7.0.1"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.6"

S="${WORKDIR}/${MY_P}"
