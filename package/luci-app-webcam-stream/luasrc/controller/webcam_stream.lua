module("luci.controller.webcam_stream", package.seeall)

function index()
	if not nixio.fs.access("/etc/config/webcam_stream") then
		return
	end

	entry({"admin", "services", "webcam_stream"}, cbi("webcam_stream"), _("Webcam Stream"), 90)
	entry({"admin", "services", "webcam_stream", "status"}, template("webcam_stream/status"), _("Status"))
end
