.PHONY: update
update:
	@if [[ ! -d "fork" ]]; then mkdir -p "fork"; fi
	@if [[ ! -d "fork/book" ]]; then git clone git@github.com:charlesbases/fork_book.git fork/book; fi
	@if [[ ! -d "fork/standards" ]]; then git clone git@github.com:charlesbases/fork_standards.git fork/standards; fi
	@if [[ ! -d "fork/introduction" ]]; then git clone git@github.com:charlesbases/fork_introduction.git fork/introduction; fi
	@if [[ ! -d "fork/design_pattern" ]]; then git clone git@github.com:charlesbases/fork_design_pattern.git fork/design_pattern; fi
