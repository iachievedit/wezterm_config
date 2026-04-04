WEZTERM_CONFIG_DIR := $(HOME)/.config/wezterm
WEZTERM_SOURCE_DIR := $(CURDIR)/wezterm

.PHONY: install uninstall

install:
	mkdir -p $(HOME)/.config
	ln -snf $(WEZTERM_SOURCE_DIR) $(WEZTERM_CONFIG_DIR)
	@echo "Symlinked $(WEZTERM_CONFIG_DIR) -> $(WEZTERM_SOURCE_DIR)"

uninstall:
	rm -f $(WEZTERM_CONFIG_DIR)
	@echo "Removed $(WEZTERM_CONFIG_DIR)"
