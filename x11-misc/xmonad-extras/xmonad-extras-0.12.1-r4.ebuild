# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

# ebuild generated by hackport 0.5.9999
#hackport: flags: -testing,with_hint:eval,with_mpd:mpd,-with_hlist,-with_template_haskell,with_parsec:volume,with_split:volume,+with_regex_posix

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Third party extensions for xmonad with wacky dependencies"
HOMEPAGE="http://projects.haskell.org/xmonad-extras"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="+eval +mpd +volume +volume"

RDEPEND="dev-haskell/mtl:=[profile?]
	dev-haskell/old-locale:=[profile?]
	dev-haskell/old-time:=[profile?]
	dev-haskell/random:=[profile?]
	dev-haskell/regex-posix:=[profile?]
	>=dev-haskell/x11-1.4.3:=[profile?]
	>=dev-lang/ghc-7.4.1:=
	>=x11-wm/xmonad-0.10:=[profile?]
	>=x11-wm/xmonad-contrib-0.10:=[profile?]
	eval? ( >=dev-haskell/hint-0.3.3.3:=[profile?]
		dev-haskell/network:=[profile?] )
	mpd? ( >=dev-haskell/libmpd-0.9:=[profile?] )
	volume? ( >=dev-haskell/parsec-2:=[profile?] <dev-haskell/parsec-4:=[profile?]
			>=dev-haskell/split-0.1:=[profile?] <dev-haskell/split-0.3:=[profile?] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.2.1
"

PATCHES=("${FILESDIR}"/${P}-libmpd-0.9.patch)

src_prepare() {
	default

	cabal_chdeps \
		'libmpd >= 0.8 && < 0.9' 'libmpd >= 0.9' \
		'hint >= 0.3.3.3 && < 0.5' 'hint >= 0.3.3.3' \
		'xmonad>=0.10 && <0.13' 'xmonad>=0.10' \
		'xmonad-contrib>=0.10 && <0.13' 'xmonad-contrib>=0.10'
}

src_configure() {
	haskell-cabal_src_configure \
		--flag=-testing \
		$(cabal_flag eval with_hint) \
		--flag=-with_hlist \
		$(cabal_flag mpd with_mpd) \
		$(cabal_flag volume with_parsec) \
		--flag=with_regex_posix \
		$(cabal_flag volume with_split) \
		--flag=-with_template_haskell
}
