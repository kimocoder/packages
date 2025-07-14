include $(TOPDIR)/rules.mk

PKG_NAME:=luci-app-webcam-stream
PKG_VERSION:=1.0
PKG_RELEASE:=1

PKG_MAINTAINER:=Kim O. Kolrud <your@email>

include $(INCLUDE_DIR)/package.mk

define Package/$(PKG_NAME)
  SECTION:=luci
  CATEGORY:=LuCI
  TITLE:=Webcam Stream UI
  DEPENDS:=+luci-base +mjpg-streamer
endef

define Package/$(PKG_NAME)/install
	$(INSTALL_DIR) $(1)/etc/init.d
	$(INSTALL_BIN) ./files/etc/init.d/webcam_stream $(1)/etc/init.d/webcam_stream

	$(INSTALL_DIR) $(1)/etc/config
	$(INSTALL_CONF) ./files/etc/config/webcam $(1)/etc/config/webcam

	$(INSTALL_DIR) $(1)/usr/lib/lua/luci/controller
	$(INSTALL_DATA) ./files/usr/lib/lua/luci/controller/webcam.lua $(1)/usr/lib/lua/luci/controller/webcam.lua

	$(INSTALL_DIR) $(1)/usr/lib/lua/luci/model/cbi/webcam
	$(INSTALL_DATA) ./files/usr/lib/lua/luci/model/cbi/webcam/settings.lua $(1)/usr/lib/lua/luci/model/cbi/webcam/settings.lua
endef

$(eval $(call BuildPackage,$(PKG_NAME)))
