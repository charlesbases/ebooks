.PHONY: update
update:
	@if [[ ! -d "external" ]]; then mkdir -p "external"; fi
	@if [[ ! -d "external/book" ]]; then git clone git@github.com:charlesbases/fork_book.git external/book; fi
	@if [[ ! -d "external/standards" ]]; then git clone git@github.com:charlesbases/fork_standards.git external/standards; fi
	@if [[ ! -d "external/introduction" ]]; then git clone git@github.com:charlesbases/fork_introduction.git external/introduction; fi
	@if [[ ! -d "external/design_pattern" ]]; then git clone git@github.com:charlesbases/fork_design_pattern.git external/design_pattern; fi
