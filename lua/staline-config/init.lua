local status_ok, staline = pcall(require, "stabline")

if not status_ok then
    return
end

staline.setup {
	style = "slant",
}
