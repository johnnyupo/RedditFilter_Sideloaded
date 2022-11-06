TARGET = iphone:clang:latest:14.0
ARCHS = arm64
MODULES = jailed
FINALPACKAGE = 1
CODESIGN_IPA = 0

TWEAK_NAME = RedditFilter
DISPLAY_NAME = Reddit
BUNDLE_ID = com.reddit.Reddit

$(TWEAK_NAME)_INJECT_DYLIBS = .theos/obj/RedditSideloadFix.dylib
$(TWEAK_NAME)_FILES = Tweak.x FilterSettingsViewController.x Settings.x
$(TWEAK_NAME)_IPA = /path/to/the/decrypted/Reddit.ipa
$(TWEAK_NAME)_CFLAGS = -fobjc-arc -Iinclude
$(TWEAK_NAME)_FRAMEWORKS = UIKit

include $(THEOS)/makefiles/common.mk
include $(THEOS_MAKE_PATH)/tweak.mk
SUBPROJECTS += RedditSideloadFix
include $(THEOS_MAKE_PATH)/aggregate.mk