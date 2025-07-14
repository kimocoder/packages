local m, s

m = Map("webcam", translate("Webcam Streaming"), translate("Configure USB camera streaming to your Android app."))

s = m:section(NamedSection, "main", "webcam", "")
s.addremove = false
s.anonymous = true

s:option(Flag, "enabled", translate("Enable streaming"))

local device = s:option(Value, "device", translate("Camera device"))
device.default = "/dev/video0"

device.rmempty = false

local port = s:option(Value, "port", translate("Stream port"))
port.datatype = "port"
port.default = "8080"

local resolution = s:option(ListValue, "resolution", translate("Resolution"))
resolution:value("640x480", "640x480")
resolution:value("1280x720", "1280x720")
resolution:value("1920x1080", "1920x1080")
resolution.default = "1280x720"

return m
