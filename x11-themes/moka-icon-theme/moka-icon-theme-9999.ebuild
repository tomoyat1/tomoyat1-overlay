# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit autotools git-r3 gnome2-utils

DESCRIPTION="Vertex icon theme"
HOMEPAGE="https://github.com/snwh/moka-icon-theme"
EGIT_REPO_URI="https://github.com/snwh/${PN}.git"

LICENSE="GPL-3"
SLOT="0"
IUSE=""

DEPEND=""

# This ebuild does not install any binaries
RESTRICT="binchecks strip"

src_prepare() {
	default
	eautoreconf
}

pkg_preinst() {
	gnome2_icon_savelist
}

pkg_postinst() {
	gnome2_icon_cache_update
}

pkg_postrm() {
	gnome2_icon_cache_update
}
