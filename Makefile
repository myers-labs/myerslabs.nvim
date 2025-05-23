.PHONY: test lint format format-check install

# Install development dependencies
install:
	@echo "Installing development dependencies..."
	luarocks install busted
	luarocks install luacheck
	luarocks install lanes

# Run tests
test:
	@echo "Running tests..."
	busted tests/

# Lint Lua code
lint:
	@echo "Linting Lua code..."
	luacheck lua/ --globals vim
	selene lua/

# Format code
format:
	@echo "Formatting code..."
	stylua lua/ colors/

# Check formatting
format-check:
	@echo "Checking code formatting..."
	stylua --check lua/ colors/

# Run all checks
check: lint format-check test
	@echo "All checks passed!"

# Clean build artifacts
clean:
	@echo "Cleaning..."
	rm -rf .luarocks/