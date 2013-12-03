# usage:
# [sudo] make -- [salt-call args]...

# assume we will always run configure target, so turn any args into variable
ARGS := $(wordlist 1,$(words $(MAKECMDGOALS)),$(MAKECMDGOALS))

# if salt doesn't exist, not yet bootstrapped
BOOTSTRAPPED := $(shell hash salt-call 2>/dev/null; echo $$?)

.PHONY: configure bootstrap

configure: bootstrap
	@salt-call --config-dir=./config --local state.highstate $(ARGS)

.DEFAULT_GOAL := configure

bootstrap:
ifneq ($(BOOTSTRAPPED), 0)
	#wget -O - http://bootstrap.saltstack.org | sudo sh
	$(shell wget -O - https://raw.github.com/saltstack/salt-bootstrap/develop/bootstrap-salt.sh | sudo sh -s -- git develop)
endif

# turn args into configure (and otherwise do-nothing) targets
$(eval $(ARGS): configure;@:)
