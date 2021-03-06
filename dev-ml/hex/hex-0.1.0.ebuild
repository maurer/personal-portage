EAPI="5"
inherit eutils findlib versionator
MY_PN="ocaml-${PN}"
MY_PV=${PV}
MY_P="${MY_PN}-${MY_PV}"

DESCRIPTION="Mininal library providing hexadecimal converters."
HOMEPAGE="https://github.com/mirage/ocaml-hex"
SRC_URI="https://github.com/mirage/${MY_PN}/archive/${MY_PV}.tar.gz -> ${MY_P}.tar.gz"

LICENSE="ISC"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="
  dev-lang/ocaml
  dev-ml/findlib"

src_unpack() {
    if [ "${A}" != "" ]; then
        unpack ${A}
    fi
	mv ${MY_P} ${S}
}

src_configure() {
	ocaml setup.ml -configure --destdir ${D}
}

src_compile() {
	emake
}

src_install() {
	findlib_src_install
}
