/+
 +  Protocol copyright:
 +  Copyright © 2008-2011 Kristian Høgsberg
 +  Copyright © 2010-2011 Intel Corporation
 +  Copyright © 2012-2013 Collabora, Ltd.
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
/+
 +      File generated by wayland-scanner-d:
 +  ../wayland-scanner-d/wayland-scanner-d -m wayland.client.ifaces --client --ifaces --ifaces_priv_mod wayland.client.priv.ifaces -o ./src/wayland/client/ifaces.d
 +      Do not edit!
 +/
module wayland.client.ifaces;

import wayland.client.util;
import wayland.client.opaque_types;

version (Dynamic) {

    private {
        __gshared wl_interface *wl_display_if_ptr;
        __gshared wl_interface *wl_registry_if_ptr;
        __gshared wl_interface *wl_callback_if_ptr;
        __gshared wl_interface *wl_compositor_if_ptr;
        __gshared wl_interface *wl_shm_pool_if_ptr;
        __gshared wl_interface *wl_shm_if_ptr;
        __gshared wl_interface *wl_buffer_if_ptr;
        __gshared wl_interface *wl_data_offer_if_ptr;
        __gshared wl_interface *wl_data_source_if_ptr;
        __gshared wl_interface *wl_data_device_if_ptr;
        __gshared wl_interface *wl_data_device_manager_if_ptr;
        __gshared wl_interface *wl_shell_if_ptr;
        __gshared wl_interface *wl_shell_surface_if_ptr;
        __gshared wl_interface *wl_surface_if_ptr;
        __gshared wl_interface *wl_seat_if_ptr;
        __gshared wl_interface *wl_pointer_if_ptr;
        __gshared wl_interface *wl_keyboard_if_ptr;
        __gshared wl_interface *wl_touch_if_ptr;
        __gshared wl_interface *wl_output_if_ptr;
        __gshared wl_interface *wl_region_if_ptr;
        __gshared wl_interface *wl_subcompositor_if_ptr;
        __gshared wl_interface *wl_subsurface_if_ptr;
    }

    package {
        import derelict.util.loader;

        class WaylandClientLoader : SharedLibLoader {
            this (string libName) {
                super(libName);
            }
            protected override void loadSymbols() {
                wl_display_if_ptr = cast(wl_interface*) loadSymbol("wl_display_interface");
                wl_registry_if_ptr = cast(wl_interface*) loadSymbol("wl_registry_interface");
                wl_callback_if_ptr = cast(wl_interface*) loadSymbol("wl_callback_interface");
                wl_compositor_if_ptr = cast(wl_interface*) loadSymbol("wl_compositor_interface");
                wl_shm_pool_if_ptr = cast(wl_interface*) loadSymbol("wl_shm_pool_interface");
                wl_shm_if_ptr = cast(wl_interface*) loadSymbol("wl_shm_interface");
                wl_buffer_if_ptr = cast(wl_interface*) loadSymbol("wl_buffer_interface");
                wl_data_offer_if_ptr = cast(wl_interface*) loadSymbol("wl_data_offer_interface");
                wl_data_source_if_ptr = cast(wl_interface*) loadSymbol("wl_data_source_interface");
                wl_data_device_if_ptr = cast(wl_interface*) loadSymbol("wl_data_device_interface");
                wl_data_device_manager_if_ptr = cast(wl_interface*) loadSymbol("wl_data_device_manager_interface");
                wl_shell_if_ptr = cast(wl_interface*) loadSymbol("wl_shell_interface");
                wl_shell_surface_if_ptr = cast(wl_interface*) loadSymbol("wl_shell_surface_interface");
                wl_surface_if_ptr = cast(wl_interface*) loadSymbol("wl_surface_interface");
                wl_seat_if_ptr = cast(wl_interface*) loadSymbol("wl_seat_interface");
                wl_pointer_if_ptr = cast(wl_interface*) loadSymbol("wl_pointer_interface");
                wl_keyboard_if_ptr = cast(wl_interface*) loadSymbol("wl_keyboard_interface");
                wl_touch_if_ptr = cast(wl_interface*) loadSymbol("wl_touch_interface");
                wl_output_if_ptr = cast(wl_interface*) loadSymbol("wl_output_interface");
                wl_region_if_ptr = cast(wl_interface*) loadSymbol("wl_region_interface");
                wl_subcompositor_if_ptr = cast(wl_interface*) loadSymbol("wl_subcompositor_interface");
                wl_subsurface_if_ptr = cast(wl_interface*) loadSymbol("wl_subsurface_interface");
            }
        }
    }

    @property wl_interface *wl_display_interface() {
        return wl_display_if_ptr;
    }
    @property wl_interface *wl_registry_interface() {
        return wl_registry_if_ptr;
    }
    @property wl_interface *wl_callback_interface() {
        return wl_callback_if_ptr;
    }
    @property wl_interface *wl_compositor_interface() {
        return wl_compositor_if_ptr;
    }
    @property wl_interface *wl_shm_pool_interface() {
        return wl_shm_pool_if_ptr;
    }
    @property wl_interface *wl_shm_interface() {
        return wl_shm_if_ptr;
    }
    @property wl_interface *wl_buffer_interface() {
        return wl_buffer_if_ptr;
    }
    @property wl_interface *wl_data_offer_interface() {
        return wl_data_offer_if_ptr;
    }
    @property wl_interface *wl_data_source_interface() {
        return wl_data_source_if_ptr;
    }
    @property wl_interface *wl_data_device_interface() {
        return wl_data_device_if_ptr;
    }
    @property wl_interface *wl_data_device_manager_interface() {
        return wl_data_device_manager_if_ptr;
    }
    @property wl_interface *wl_shell_interface() {
        return wl_shell_if_ptr;
    }
    @property wl_interface *wl_shell_surface_interface() {
        return wl_shell_surface_if_ptr;
    }
    @property wl_interface *wl_surface_interface() {
        return wl_surface_if_ptr;
    }
    @property wl_interface *wl_seat_interface() {
        return wl_seat_if_ptr;
    }
    @property wl_interface *wl_pointer_interface() {
        return wl_pointer_if_ptr;
    }
    @property wl_interface *wl_keyboard_interface() {
        return wl_keyboard_if_ptr;
    }
    @property wl_interface *wl_touch_interface() {
        return wl_touch_if_ptr;
    }
    @property wl_interface *wl_output_interface() {
        return wl_output_if_ptr;
    }
    @property wl_interface *wl_region_interface() {
        return wl_region_if_ptr;
    }
    @property wl_interface *wl_subcompositor_interface() {
        return wl_subcompositor_if_ptr;
    }
    @property wl_interface *wl_subsurface_interface() {
        return wl_subsurface_if_ptr;
    }

}
else {

    import priv = wayland.client.priv.ifaces;

    @property wl_interface *wl_display_interface() {
        return &priv.wl_display_interface;
    }
    @property wl_interface *wl_registry_interface() {
        return &priv.wl_registry_interface;
    }
    @property wl_interface *wl_callback_interface() {
        return &priv.wl_callback_interface;
    }
    @property wl_interface *wl_compositor_interface() {
        return &priv.wl_compositor_interface;
    }
    @property wl_interface *wl_shm_pool_interface() {
        return &priv.wl_shm_pool_interface;
    }
    @property wl_interface *wl_shm_interface() {
        return &priv.wl_shm_interface;
    }
    @property wl_interface *wl_buffer_interface() {
        return &priv.wl_buffer_interface;
    }
    @property wl_interface *wl_data_offer_interface() {
        return &priv.wl_data_offer_interface;
    }
    @property wl_interface *wl_data_source_interface() {
        return &priv.wl_data_source_interface;
    }
    @property wl_interface *wl_data_device_interface() {
        return &priv.wl_data_device_interface;
    }
    @property wl_interface *wl_data_device_manager_interface() {
        return &priv.wl_data_device_manager_interface;
    }
    @property wl_interface *wl_shell_interface() {
        return &priv.wl_shell_interface;
    }
    @property wl_interface *wl_shell_surface_interface() {
        return &priv.wl_shell_surface_interface;
    }
    @property wl_interface *wl_surface_interface() {
        return &priv.wl_surface_interface;
    }
    @property wl_interface *wl_seat_interface() {
        return &priv.wl_seat_interface;
    }
    @property wl_interface *wl_pointer_interface() {
        return &priv.wl_pointer_interface;
    }
    @property wl_interface *wl_keyboard_interface() {
        return &priv.wl_keyboard_interface;
    }
    @property wl_interface *wl_touch_interface() {
        return &priv.wl_touch_interface;
    }
    @property wl_interface *wl_output_interface() {
        return &priv.wl_output_interface;
    }
    @property wl_interface *wl_region_interface() {
        return &priv.wl_region_interface;
    }
    @property wl_interface *wl_subcompositor_interface() {
        return &priv.wl_subcompositor_interface;
    }
    @property wl_interface *wl_subsurface_interface() {
        return &priv.wl_subsurface_interface;
    }

}
