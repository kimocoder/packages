local m = Map("webcam_stream", "Webcam Streamer")

s = m:section(TypedSection, "stream", "Settings")
s.anonymous = true

s:option(Value, "device", "Device Path").default = "/dev/video0"
s:option(Value, "resolution", "Resolution").default = "1280x720"
s:option(Value, "port", "HTTP Port").default = "8080"
s:option(Flag, "enabled", "Enable Streaming").default = "1"

return m
