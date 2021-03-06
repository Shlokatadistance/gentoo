# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6
PYTHON_COMPAT=( python3_6 )

inherit distutils-r1 virtualx

DESCRIPTION="Minuit numerical function minimization in Python"
HOMEPAGE="https://github.com/iminuit/iminuit"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"
SLOT="0"
LICENSE="MIT LGPL-2"
KEYWORDS="~amd64 ~x86 ~amd64-linux ~x86-linux"
IUSE="test"
RESTRICT="!test? ( test )"

RDEPEND=""
DEPEND="${RDEPEND}
	dev-python/cython[${PYTHON_USEDEP}]
	dev-python/setuptools[${PYTHON_USEDEP}]
	test? (
	  dev-python/ipython[${PYTHON_USEDEP}]
	  dev-python/matplotlib[${PYTHON_USEDEP}]
	  dev-python/pytest[${PYTHON_USEDEP}] )"

python_test() {
	virtx esetup.py test
}
