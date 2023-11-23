PREFIX:=/usr
DESTDIR:=

install: power-profiles-hooksd power-profiles-hooks.service.in
	install power-profiles-hooksd -Dm755 ${DESTDIR}${PREFIX}/bin/power-profiles-hooksd
	envsubst < power-profiles-hooks.service.in > ${DESTDIR}${PREFIX}/lib/systemd/system/power-profiles-hooks.service

.PHONY: install
