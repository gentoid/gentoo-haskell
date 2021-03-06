# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

# ebuild generated by hackport 0.4.7.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="A pure-Haskell SSH server library"
HOMEPAGE="http://hub.darcs.net/ganesh/ssh"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/asn1-encoding-0.8:=[profile?]
	>=dev-haskell/asn1-types-0.3:=[profile?]
	dev-haskell/base64-string:=[profile?]
	dev-haskell/binary:=[profile?]
	dev-haskell/cereal:=[profile?]
	dev-haskell/crypto-api:=[profile?]
	>=dev-haskell/crypto-pubkey-types-0.2:=[profile?]
	dev-haskell/cryptohash-cryptoapi:=[profile?]
	>=dev-haskell/hsopenssl-0.8:=[profile?]
	dev-haskell/network:=[profile?]
	dev-haskell/random:=[profile?]
	>=dev-haskell/rsa-2.1.0:=[profile?]
	dev-haskell/sha:=[profile?]
	dev-haskell/simpleaes:=[profile?]
	dev-haskell/split:=[profile?]
	dev-haskell/transformers:=[profile?]
	>=dev-lang/ghc-7.6.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.16.0
	test? ( >=dev-haskell/hunit-1.0
		>=dev-haskell/libssh2-0.2 <dev-haskell/libssh2-0.3
		>=dev-haskell/pseudomacros-0.0 <dev-haskell/pseudomacros-0.1
		>=dev-haskell/quickcheck-2.8
		>=dev-haskell/tasty-0.10
		>=dev-haskell/tasty-hunit-0.9 <dev-haskell/tasty-hunit-0.10
		>=dev-haskell/tasty-quickcheck-0.8 <dev-haskell/tasty-quickcheck-0.9
		>=dev-haskell/th-lift-instances-0.1 <dev-haskell/th-lift-instances-0.2 )
"

src_prepare() {
	default

	cabal_chdeps \
		'RSA >= 2.1.0 && < 2.1.1' 'RSA >= 2.1.0' \
		'HUnit                      >= 1.0   && < 1.3' 'HUnit                      >= 1.0' \
		'tasty                      >= 0.10  && < 0.11' 'tasty                      >= 0.10' \
		'template-haskell           >= 2.8   && < 2.11' 'template-haskell           >= 2.8' \
		'QuickCheck                 >= 2.8   && < 2.9' 'QuickCheck                 >= 2.8' \
		'directory                  >= 1.2   && < 1.3' 'directory                  >= 1.2'
}
