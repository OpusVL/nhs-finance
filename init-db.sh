#!/bin/bash

PROGNAME=$(basename $0)
AUTHOR="Paul Bargewell <paul,bargewell@opusvl.com>"
COPYRIGHT="Copyright 2021, Opus Vision Limited T/A OpusVL"
LICENSE="SPDX-License-Identifier: AGPL-3.0-or-later"
RELEASE="Revision 1.0.1"

set -e

psql -v ON_ERROR_STOP=1 --username "${POSTGRES_USER}" --dbname "${POSTGRES_DB}" <<-EOSQL
    CREATE USER ${ODOO_POSTGRES_USER} WITH ENCRYPTED PASSWORD '${ODOO_POSTGRES_PASSWORD}' CREATEDB;
EOSQL
