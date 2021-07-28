pwd := $(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))

.PHONY: test

test:
	ros run -e "(asdf:load-asd \"$(pwd)/likit.asd\") (ql:quickload :likit) (asdf:test-system :likit) (uiop:quit 0)"
