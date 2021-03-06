/+
 +  Wayland copyright:
 +  Copyright © 2011 Kristian Høgsberg
 +  Copyright © 2011 Benjamin Franzke
 +
 +  Permission is hereby granted, free of charge, to any person
 +  obtaining a copy of this software and associated documentation files
 +  (the "Software"), to deal in the Software without restriction,
 +  including without limitation the rights to use, copy, modify, merge,
 +  publish, distribute, sublicense, and/or sell copies of the Software,
 +  and to permit persons to whom the Software is furnished to do so,
 +  subject to the following conditions:
 +
 +  The above copyright notice and this permission notice (including the
 +  next paragraph) shall be included in all copies or substantial
 +  portions of the Software.
 +
 +  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
 +  EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
 +  MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
 +  NONINFRINGEMENT.  IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS
 +  BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN
 +  ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
 +  CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 +  SOFTWARE.
 +/
/+
 +  D bindings copyright:
 +  Copyright © 2015 Rémi Thebault
 +/
module wayland.client.egl;

import wayland.client.protocol : wl_surface;

extern(C) {

    struct wl_egl_window;

}

version (Dynamic) {
    extern (C) {
        alias da_wl_egl_window_create = wl_egl_window *function(wl_surface *surface,
                            int width, int height);
        alias da_wl_egl_window_destroy = void function(wl_egl_window *egl_window);
        alias da_wl_egl_window_resize = void function(wl_egl_window *egl_window,
                            int width, int height,
                            int dx, int dy);
        alias da_wl_egl_window_get_attached_size = void function(
                    wl_egl_window *egl_window,
                    int *width, int *height);
    }
    __gshared {

        da_wl_egl_window_create wl_egl_window_create;
        da_wl_egl_window_destroy wl_egl_window_destroy;
        da_wl_egl_window_resize wl_egl_window_resize;
        da_wl_egl_window_get_attached_size wl_egl_window_get_attached_size;

    }

}
else {
    extern (C) {
        wl_egl_window *
        wl_egl_window_create(wl_surface *surface,
                            int width, int height);

        void
        wl_egl_window_destroy(wl_egl_window *egl_window);

        void
        wl_egl_window_resize(wl_egl_window *egl_window,
                            int width, int height,
                            int dx, int dy);

        void
        wl_egl_window_get_attached_size(wl_egl_window *egl_window,
                                        int *width, int *height);
    }
}
