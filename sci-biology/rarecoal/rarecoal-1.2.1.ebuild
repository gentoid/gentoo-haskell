# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

# ebuild generated by hackport 0.5.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="tools to process and analyse genome sequencing data"
HOMEPAGE="https://github.com/stschiff/rarecoal"
SRC_URI="https://github.com/stschiff/rarecoal/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-haskell/attoparsec:=[profile?]
	dev-haskell/data-memocombinators:=[profile?]
	dev-haskell/errors:=[profile?]
	dev-haskell/hmatrix:=[profile?]
	dev-haskell/hmatrix-gsl:=[profile?]
	dev-haskell/hslogger:=[profile?]
	dev-haskell/missingh:=[profile?]
	dev-haskell/monad-loops:=[profile?]
	dev-haskell/optparse-applicative:=[profile?]
	dev-haskell/parallel:=[profile?]
	dev-haskell/parsec:=[profile?]
	dev-haskell/pipes-attoparsec:=[profile?]
	dev-haskell/pipes-text:=[profile?]
	dev-haskell/quickcheck:2=[profile?]
	dev-haskell/random:=[profile?]
	dev-haskell/split:=[profile?]
	dev-haskell/tasty:=[profile?]
	dev-haskell/tasty-hunit:=[profile?]
	dev-haskell/tasty-quickcheck:=[profile?]
	dev-haskell/text:=[profile?]
	dev-haskell/vector:=[profile?]
	>=dev-lang/ghc-7.8.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
"
