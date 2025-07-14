include $(TOPDIR)/rules.mk

LUCI_TITLE:=LuCI Webcam Streamer (mjpg-streamer)
LUCI_DEPENDS:=+mjpg-streamer
LUCI_PKGARCH:=all
PKG_VERSION:=1.0
PKG_RELEASE:=1

include $(TOPDIR)/feeds/luci/luci.mk

# No build step required
PKG_BUILD_DIR := $(BUILD_DIR)/$(PKG_NAME)-$(PKG_VERSION)

define Package/luci-app-webcam-stream/install
	$(CP) ./root/* $(1)/
endef

$(eval $(call BuildPackage,luci-app-webcam-stream))
