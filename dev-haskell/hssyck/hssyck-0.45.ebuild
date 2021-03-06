# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

CABAL_FEATURES="lib profile haddock hscolour"
inherit haskell-cabal

MY_PN="HsSyck"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="Fast, lightweight YAML loader and dumper"
HOMEPAGE="http://hackage.haskell.org/cgi-bin/hackage-scripts/package/HsSyck"
SRC_URI="http://hackage.haskell.org/packages/archive/${MY_PN}/${PV}/${MY_P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=">=dev-lang/ghc-6.8.1
		>=dev-haskell/cabal-1.2.3
		dev-libs/syck"

S="${WORKDIR}/${MY_P}"
