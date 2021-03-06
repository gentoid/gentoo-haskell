# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

# ebuild generated by hackport 0.4.6.9999

CABAL_FEATURES="bin lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Library and command-line utility for accessing Google services and APIs"
HOMEPAGE="http://code.google.com/p/hgdata"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/base64-bytestring-0.9.1.4:=[profile?]
	>=dev-haskell/binary-0.5.1.1:=[profile?]
	>=dev-haskell/case-insensitive-0.2:=[profile?]
	>=dev-haskell/cmdargs-0.9.4:=[profile?]
	>=dev-haskell/data-default-0.5.3:=[profile?]
	>=dev-haskell/genericpretty-1.0.0:=[profile?]
	>=dev-haskell/http-4000.2.5:=[profile?]
	>=dev-haskell/http-conduit-2:=[profile?]
	>=dev-haskell/json-0.5:=[profile?]
	>=dev-haskell/network-2.5.0.0:=[profile?]
	dev-haskell/old-locale:=[profile?]
	>=dev-haskell/puremd5-2.1.2.1:=[profile?]
	dev-haskell/random:=[profile?]
	>=dev-haskell/regex-posix-0.95.2:=[profile?]
	>=dev-haskell/resourcet-1.1.3:=[profile?]
	>=dev-haskell/split-0.2.0.0:=[profile?]
	dev-haskell/unix-compat:=[profile?]
	dev-haskell/utf8-string:=[profile?]
	>=dev-haskell/xml-1.2.6:=[profile?]
	>=dev-lang/ghc-7.10.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.22.2.0
"

PATCHES=("${FILESDIR}"/${P}-http-client-0.5.patch)
