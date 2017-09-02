# Created by: Žygis Škulteckis <ports@zx23.net>
# $FreeBSD$

PORTNAME=	blackbox_exporter
PORTVERSION=	0.8.1
DISTVERSIONPREFIX=v
CATEGORIES=	sysutils

MAINTAINER=	ports@zx23.net
COMMENT=	Prometheus blackbox prober exporter

LICENSE=	APACHE20

USES=		go

USE_GITHUB=	yes
GH_ACCOUNT=	prometheus

GO_PKGNAME=	github.com/${GH_ACCOUNT}/${PORTNAME}
GO_TARGET=	github.com/${GH_ACCOUNT}/${PORTNAME}

USE_RC_SUBR=	blackbox_exporter

STRIP=		# stripping can break go binaries

PLIST_FILES=	bin/blackbox_exporter \
		etc/rc.d/blackbox_exporter

do-install:
	${INSTALL_PROGRAM} ${WRKDIR}/bin/blackbox_exporter ${STAGEDIR}${PREFIX}/bin

.include <bsd.port.mk>
