# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

# ebuild generated by hackport 0.2.17.9999

EAPI=4

CABAL_FEATURES="bin lib profile haddock hoogle hscolour"
inherit haskell-cabal

MY_PN="ConfigFile"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="Configuration file reading & writing"
HOMEPAGE="http://software.complete.org/configfile"
SRC_URI="http://hackage.haskell.org/packages/archive/${MY_PN}/${PV}/${MY_P}.tar.gz"

LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/missingh-1.0.0[profile?]
		dev-haskell/mtl[profile?]
		dev-haskell/parsec[profile?]
		>=dev-lang/ghc-6.8.2"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.2.3"

S="${WORKDIR}/${MY_P}"
