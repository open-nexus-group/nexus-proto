# Makefile

.PHONY: all clean generate

# The default target, which is an alias for 'generate'.
all: generate

# The main command to generate protobuf files.
generate:
	@echo "--- Generating Go code from Protobuf definitions ---"
	@mkdir -p gen/go # Ensure the output directory exists
	@protoc \
		--proto_path=. \
		--go_out=gen/go \
		--go_opt=paths=source_relative \
		proto/nexus/events/v1/*.proto
	@echo "--- Generation complete ---"

# A helper target to clean up generated files.
clean:
	@echo "--- Cleaning generated files ---"
	@rm -rf gen
	@echo "--- Clean complete ---"
