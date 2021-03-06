# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

# ebuild generated by hackport 0.4.6.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Numeric Linear Algebra"
HOMEPAGE="https://github.com/albertoruiz/hmatrix"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-haskell/binary:=[profile?]
	dev-haskell/random:=[profile?]
	dev-haskell/split:=[profile?]
	dev-haskell/storable-complex:=[profile?]
	>=dev-haskell/vector-0.8:=[profile?]
	>=dev-lang/ghc-7.10.1:=
	virtual/blas
	virtual/lapack
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.22.2.0
"

PATCHES=("${FILESDIR}"/${PN}-0.17.0.1-gentoo-blas.patch)

src_prepare() {
	default

	# https://ghc.haskell.org/trac/ghc/ticket/10667
	[[ $(ghc-version) == 7.10.1.20150630 ]] && replace-hcflags -g ''
	[[ $(ghc-version) == 7.10.2 ]] && replace-hcflags -g ''
}
