#!/bin/sh

set -eu

PATH_MARIADB="/var/lib/mysql/"
PATH_RUNTIME="/run/mysqld/"
PATH_SOCKET="$PATH_RUNTIME/mysqld.sock"

mkdir -p "$PATH_RUNTIME"
chown -R mysql:mysql "$PATH_RUNTIME"

if [[ ! -d "$PATH_MARIADB/mysql/" ]]; then
  echo "Initializing MariaDB system tables..."

  mariadb-install-db \
  --user=mysql \
  --datedir="$PATH_MARIADB"
