# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit eutils autotools-multilib git-r3

DESCRIPTION="RPC/Serialization system with capabilities support"
HOMEPAGE="http://capnproto.org"

EGIT_REPO_URI="https://github.com/kentonv/capnproto.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

S=${WORKDIR}/${P}/c++

src_prepare() {
  epatch ${FILESDIR}/${P}-no-ldconfig.patch
  epatch_user
  eautoreconf
}
