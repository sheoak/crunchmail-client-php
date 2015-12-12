PU=./vendor/bin/phpunit
PHPCS=./vendor/bin/phpcs
PHPCBF=./vendor/bin/phpcbf

help:
	@echo "Use \`make <target>' where <target> is one of"
	@echo "  docs 			build the documentation in docs/coverage/"
	@echo "  test 			run unit tests"
	@echo "  testdox 		gerenate testdox report in docs/"
	@echo "  show-testdox 	run unit tests in testdox format"
	@echo "  coverage 		generate code coverage report"
	@echo "  show-coverage 	show code coverage report"
	@echo "  phpcs			run phpcs to check PHP code"
	@echo "  phpcbf			run phpcbf to fix PHP code"

docs:
	phpdoc -d src -t docs/phpdoc --force

test:
	$(PU)

show-testdox:
	$(PU) --testdox

testdox:
	$(PU) --testdox-text docs/agile-doc.txt

coverage:
	$(PU) --coverage-html docs/coverage

show-coverage:
	$(PU) --coverage-text

phpcs:
	$(PHPCS) --standard=ruleset.xml -v

phpcbf:
	$(PHPCBF) --standard=ruleset.xml -v
