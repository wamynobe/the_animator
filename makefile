.PHONY: all run_unit clean upgrade lint format help watch gen purge 

all: lint format

# Adding a help file: https://gist.github.com/prwhite/8168133#gistcomment-1313022
help: ## This help dialog.
	@IFS=$$'\n' ; \
	help_lines=(`fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//'`); \
	for help_line in $${help_lines[@]}; do \
		IFS=$$'#' ; \
		help_split=($$help_line) ; \
		help_command=`echo $${help_split[0]} | sed -e 's/^ *//' -e 's/ *$$//'` ; \
		help_info=`echo $${help_split[2]} | sed -e 's/^ *//' -e 's/ *$$//'` ; \
		printf "%-30s %s\n" $$help_command $$help_info ; \
	done

run_unit: ## Runs unit tests
	@echo "╠ Running the tests"
	@flutter test || (echo "Error while running tests"; exit 1)

locale: ## Generates the localization files
	@echo "╠ Generating the localization files..."
	@flutter gen-l10n

analyze:
	@flutter analyze

coverage: rmcoverage ##run test and gen coverage report
	@flutter test --coverage
	@genhtml coverage/lcov.info -o coverage/html

rmcoverage:
	@rm -rf coverage/

clean: ## Cleans the environment
	@echo "╠ Cleaning the project..."
	@rm -rf pubspec.lock
	@flutter clean
	@flutter pub get

watch: ## Watches the files for changes
	@echo "╠ Watching the project..."
	@dart run build_runner watch --delete-conflicting-outputs

gen: ## Generates the assets
	@echo "╠ Generating the assets..."
	@flutter pub get
	@dart run build_runner build --delete-conflicting-outputs

format: ## Formats the code
	@echo "╠ Formatting the code"
	@dart format lib .

lint: ## Lints the code
	@echo "╠ Verifying code..."
	@dart analyze . || (echo "Error in project"; exit 1)

upgrade: clean ## Upgrades dependencies
	@echo "╠ Upgrading dependencies..."
	@flutter pub upgrade

commit: format lint run_unit
	@echo "╠ Committing..."
	git add .
	git commit

purge: ## Purges the Flutter 
	@pod deintegrate
	@flutter clean
	@flutter pub get
