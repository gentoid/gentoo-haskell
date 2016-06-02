# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

# ebuild generated by hackport 0.5.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Runtime Haskell interpreter (GHC API wrapper)"
HOMEPAGE="https://github.com/mvdan/hint"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-haskell/exceptions:=[profile?]
	dev-haskell/ghc-paths:=[profile?]
	dev-haskell/mtl:=[profile?]
	dev-haskell/random:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.9.2
	test? ( dev-haskell/extensible-exceptions
		dev-haskell/hunit )
"

PATCHES=("${FILESDIR}"/${P}-ghc-8.patch)