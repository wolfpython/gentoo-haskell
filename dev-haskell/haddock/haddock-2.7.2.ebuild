# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

# ebuild generated by hackport 0.2.9

EAPI="2"

CABAL_FEATURES="bin lib profile haddock hscolour"
inherit haskell-cabal pax-utils

DESCRIPTION="A documentation-generation tool for Haskell libraries"
HOMEPAGE="http://www.haskell.org/haddock/"
SRC_URI="http://hackage.haskell.org/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/cabal-1.6
		dev-haskell/ghc-paths
		>=dev-lang/ghc-6.12"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.6"

# although haddock depends on alex and happy to build from scratch, we don't
# want this ebuild to depend on those packages.
# we use haddock to build the documentation enabled by USE="doc".
# alex and happy only build executables, which does not require haddock.
# however, happy depends on mtl which can be build with USE="doc", which would
# create a circular dependency.
# haddock upstream solved this by bundling preprocessed files.
# unfortunately cabal has recently changed which directory it uses for these
# intermediate files and thus the solution does not work anymore.
# to fix this we move those preprocessed files back to the source tree.

src_prepare() {
	for f in Lex Parse; do
		rm "src/Haddock/$f."*
		mv "dist/build/haddock/haddock-tmp/Haddock/$f.hs" src/Haddock/
	done
}

src_install() {
	cabal_src_install
	# haddock uses GHC-api to process TH source.
	# TH requires GHCi which needs mmap('rwx') (bug #299709)
	pax-mark -m "${D}/usr/bin/${PN}"
}
