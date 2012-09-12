# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

# ebuild generated by hackport 0.2.18.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

MY_PN="HTTP"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="A library for client-side HTTP"
HOMEPAGE="https://github.com/haskell/HTTP"
SRC_URI="mirror://hackage/packages/archive/${MY_PN}/${PV}/${MY_P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~alpha ~amd64 ~ia64 ~ppc ~ppc64 ~sparc ~x86 ~x86-fbsd ~ppc-macos ~x86-macos"


RDEPEND=">=dev-haskell/mtl-2.0[profile?]
		<dev-haskell/mtl-2.2[profile?]
		dev-haskell/network[profile?]
		dev-haskell/parsec[profile?]
		>=dev-lang/ghc-6.8.2"
DEPEND="${RDEPEND}
		test? ( =dev-haskell/case-insensitive-0.4*
			=dev-haskell/conduit-0.4*
			=dev-haskell/deepseq-1.3*
			=dev-haskell/http-types-0.6*
			dev-haskell/httpd-shed
			dev-haskell/hunit
			=dev-haskell/puremd5-2.1*
			=dev-haskell/split-0.1*
			dev-haskell/test-framework
			dev-haskell/test-framework-hunit
			=dev-haskell/wai-1.2*
			=dev-haskell/warp-1.2*
		)
		>=dev-haskell/cabal-1.8"

S="${WORKDIR}/${MY_P}"
