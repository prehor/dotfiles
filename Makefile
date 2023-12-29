DOTBOT_CONFIG		?= .dotbot.yaml
DOTBOT_DIR		?= dotbot

# Update git and dotfiles
.PHONY: all
all: git-update update

# Update git
.PHONY: git-update
git-update: git-pull git-update-submodules

# Update git repository
.PHONY: git-pull
git-pull:
	@set -x; \
	git pull

# Init git submodules
.PHONY: git-init-submodules
git-init-submodules:
	@set -x; \
	git submodule update --init --recursive

# Update git submodules
.PHONY: git-update-submodules
git-update-submodules: git-init-submodules
	@set -x; \
	git submodule sync --quiet --recursive; \
	git submodule update --remote --merge --recursive

# Update dotfiles
.PHONY: update
update: $(DOTBOT_CONFIG)
	@set -x; \
	$(DOTBOT_DIR)/bin/dotbot -d $(CURDIR) -c $(DOTBOT_CONFIG)

# Create empty dotbot configuration file if missing
$(DOTBOT_CONFIG):
	@set -x; \
	touch $@
