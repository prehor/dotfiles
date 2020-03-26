DOTBOT_CONFIG		?= dotbot.yaml
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

# Update git submodules
.PHONY: git-update-submodules
git-update-submodules:
	@set -x; \
	git submodule update --init --recursive; \
	git submodule sync --quiet --recursive; \
	git submodule foreach git pull origin master

# Update dotfiles
.PHONY: update
update: $(DOTBOT_CONFIG)
	@set -x; \
	$(DOTBOT_DIR)/bin/dotbot -d $(CURDIR) -c $(DOTBOT_CONFIG)

# Create empty dotbot configuration file if missing
$(DOTBOT_CONFIG):
	@set -x; \
	touch $@
