GTK			= gtk-update-icon-cache
TARGET_DIR	= ~/.local/share/icons
NAME		= ptsicon


all: install update

install:
	rm -rf $(TARGET_DIR)/$(NAME)
	mkdir -p $(TARGET_DIR)/$(NAME)
	cp -r src/* $(TARGET_DIR)/$(NAME)

update:
	$(GTK) $(TARGET_DIR)/$(NAME)
