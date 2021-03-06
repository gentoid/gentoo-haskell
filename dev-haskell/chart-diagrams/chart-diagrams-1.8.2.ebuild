# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

# ebuild generated by hackport 0.5.1.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

MY_PN="Chart-diagrams"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="Diagrams backend for Charts"
HOMEPAGE="https://github.com/timbod7/haskell-chart/wiki"
SRC_URI="mirror://hackage/packages/archive/${MY_PN}/${PV}/${MY_P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/blaze-markup-0.7:=[profile?] <dev-haskell/blaze-markup-0.9:=[profile?]
	>=dev-haskell/chart-1.8.2:=[profile?] <dev-haskell/chart-1.9:=[profile?]
	>=dev-haskell/colour-2.2.1:=[profile?] <dev-haskell/colour-2.4:=[profile?]
	<dev-haskell/data-default-class-0.2:=[profile?]
	>=dev-haskell/diagrams-core-1.3:=[profile?] <dev-haskell/diagrams-core-1.5:=[profile?]
	>=dev-haskell/diagrams-lib-1.2:=[profile?] <dev-haskell/diagrams-lib-1.5:=[profile?]
	>=dev-haskell/diagrams-postscript-0.7:=[profile?] <dev-haskell/diagrams-postscript-1.5:=[profile?]
	>=dev-haskell/diagrams-svg-1.4:=[profile?] <dev-haskell/diagrams-svg-1.5:=[profile?]
	>=dev-haskell/lens-3.9:=[profile?] <dev-haskell/lens-4.16:=[profile?]
	dev-haskell/mtl:=[profile?]
	dev-haskell/old-locale:=[profile?]
	>=dev-haskell/operational-0.2.2:=[profile?] <dev-haskell/operational-0.3:=[profile?]
	>=dev-haskell/svg-builder-0.1:=[profile?] <dev-haskell/svg-builder-0.2:=[profile?]
	>=dev-haskell/svgfonts-1.4:=[profile?] <dev-haskell/svgfonts-1.7:=[profile?]
	dev-haskell/text:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.6
"

S="${WORKDIR}/${MY_P}"
