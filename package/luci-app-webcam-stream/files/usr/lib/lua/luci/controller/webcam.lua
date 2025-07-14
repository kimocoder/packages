module("luci.controller.webcam", package.seeall)

function index()
	if not nixio.fs.access("/etc/config/webcam") then
		return
	end

	entry({"admin", "services", "webcam"}, cbi("webcam/settings"), _("Webcam Stream"), 60).dependent = true
end
