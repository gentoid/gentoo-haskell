# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

# ebuild generated by hackport 0.4.6.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Bindings to the nanomsg library"
HOMEPAGE="https://github.com/ivarnymoen/nanomsg-haskell"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/binary-0.7:=[profile?]
	>=dev-lang/ghc-7.4.1:=
	dev-libs/nanomsg
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.10
	test? ( dev-haskell/quickcheck
		dev-haskell/test-framework
		dev-haskell/test-framework-quickcheck2
		dev-haskell/test-framework-th )
"

src_prepare() {
	cabal_chdeps \
		'binary >= 0.7 && < 0.8' 'binary >= 0.7'
}