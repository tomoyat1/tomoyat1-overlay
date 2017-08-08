# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit cmake-utils git-r3

DESCRIPTION="Collection of C utilities taken and cleaned up from Cloudef's other projects"
HOMEPAGE="https://github.com/Cloudef/chck"
EGIT_REPO_URI="https://github.com/Cloudef/${PN}.git"

LICENSE="ZLIB"
SLOT="0"
KEYWORDS="~amd64 ~x86"

src_configure() {
	cmake-utils_src_configure
}
