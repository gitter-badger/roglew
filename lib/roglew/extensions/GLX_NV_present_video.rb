module Roglew
  module GLX
    NUM_VIDEO_SLOTS_NV ||= 0x20F0
  end
end

module GLX_NV_present_video
  module RenderContext
    include Roglew::GLExtension

              #int glXBindVideoDeviceNV(Display* dpy, unsigned int video_slot, unsigned int video_device, const int *attrib_list)
    functions [:glXBindVideoDeviceNV, [:pointer, :uint, :uint, :pointer], :int],

              #unsigned int* glXEnumerateVideoDevicesNV(Display *dpy, int screen, int *nelements)
              [:glXEnumerateVideoDevicesNV, [:pointer, :int, :pointer], :pointer]
  end
end