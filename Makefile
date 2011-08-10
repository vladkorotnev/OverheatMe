include theos/makefiles/common_warnallow.mk

TWEAK_NAME = overheatme
overheatme_FILES = overheatmeController.xm
overheatme_INSTALL_PATH = /System/Library/WeeAppPlugins/overheatme.bundle/
overheatme_FRAMEWORKS = UIKit CoreGraphics

include $(THEOS_MAKE_PATH)/tweak.mk

after-stage::
	$(ECHO_NOTHING)cp -r Resources/* $(THEOS_STAGING_DIR)/System/Library/WeeAppPlugins/overheatme.bundle/$(ECHO_END)
	$(ECHO_NOTHING)mv $(THEOS_STAGING_DIR)/System/Library/WeeAppPlugins/overheatme.bundle/overheatme.dylib $(THEOS_STAGING_DIR)/System/Library/WeeAppPlugins/overheatme.bundle/overheatme$(ECHO_END)

