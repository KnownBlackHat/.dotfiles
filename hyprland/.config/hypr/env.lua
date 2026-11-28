hl.env("XCURSOR_SIZE", "24")
hl.env("HYPRCURSOR_SIZE", "24")

-- NVIDIA (hybrid Intel + RTX 4060). External HDMI/DP ports are wired to the
-- NVIDIA GPU, so render on NVIDIA to avoid the cross-GPU copy that causes
-- pink flicker on the external monitor.
hl.env("LIBVA_DRIVER_NAME", "nvidia")
hl.env("__GLX_VENDOR_LIBRARY_NAME", "nvidia")
hl.env("NVD_BACKEND", "direct")

-- Resolve cards by PCI path (cardN numbers can swap between boots).
local function card(pci)
    local p = io.popen("readlink -f /dev/dri/by-path/pci-" .. pci .. "-card 2>/dev/null")
    if not p then return nil end
    local out = p:read("*l")
    p:close()
    if out and out ~= "" then return out end
    return nil
end

local nvidia = card("0000:01:00.0")
local intel = card("0000:00:02.0")
if nvidia and intel then
    hl.env("AQ_DRM_DEVICES", nvidia .. ":" .. intel)
end
