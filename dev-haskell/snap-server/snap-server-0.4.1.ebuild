# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

# ebuild generated by hackport 0.2.13

EAPI="3"

CABAL_FEATURES="lib profile haddock hscolour"
inherit haskell-cabal

DESCRIPTION="A fast, iteratee-based, epoll-enabled web server for the Snap Framework"
HOMEPAGE="http://snapframework.com/"
SRC_URI="http://hackage.haskell.org/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="=dev-haskell/attoparsec-0.8*
		=dev-haskell/attoparsec-enumerator-0.2*
		=dev-haskell/binary-0.5*
		<dev-haskell/blaze-builder-0.4
		=dev-haskell/blaze-builder-enumerator-0.2*
		dev-haskell/bytestring-nums
		dev-haskell/directory-tree
		>=dev-haskell/enumerator-0.4.7
		=dev-haskell/monadcatchio-transformers-0.2*
		=dev-haskell/mtl-2.0*
		=dev-haskell/murmur-hash-0.1*
		=dev-haskell/network-2.3*
		=dev-haskell/psqueue-1.1*
		>=dev-haskell/snap-core-0.4.1
		dev-haskell/time
		dev-haskell/transformers
		=dev-haskell/unix-compat-0.2*
		dev-haskell/utf8-string
		=dev-haskell/vector-0.7*
		=dev-haskell/vector-algorithms-0.4*
		>=dev-lang/ghc-6.10.1"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.6"

src_prepare() {
	sed -e 's@blaze-builder >= 0.2.1.4 && <0.3@blaze-builder >= 0.2.1.4 \&\& <0.4@' \
		-i "${S}/${PN}.cabal" || die "Could not loosen blaze-builder dependency in ${S}/${PN}.cabal"
}
