PREFIX:=/usr

install: power-profiles-hooksd power-profiles-hooks.service.in
	install power-profiles-hooksd -Dm755 ${PREFIX}/bin/power-profiles-hooksd
	envsubst < power-profiles-hooks.service.in > ${PREFIX}/lib/systemd/system/power-profiles-hooks.service

.PHONY: install
