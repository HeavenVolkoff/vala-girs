/* gtk-vnc-2.0.vapi generated by vapigen, do not modify. */

[CCode (cprefix = "Vnc", gir_namespace = "GtkVnc", gir_version = "2.0", lower_case_cprefix = "vnc_")]
namespace Vnc {
	[CCode (cheader_filename = "gtk-vnc.h", type_id = "vnc_cairo_framebuffer_get_type ()")]
	public class CairoFramebuffer : Vnc.BaseFramebuffer, Vnc.Framebuffer {
		[CCode (has_construct_function = false)]
		public CairoFramebuffer (uint16 width, uint16 height, Vnc.PixelFormat remoteFormat);
		public unowned Cairo.Surface get_surface ();
		public void* surface { get; construct; }
	}
	[CCode (cheader_filename = "gtk-vnc.h", type_id = "vnc_display_get_type ()")]
	public class Display : Gtk.DrawingArea, Atk.Implementor, Gtk.Buildable {
		[CCode (has_construct_function = false, type = "GtkWidget*")]
		public Display ();
		public void client_cut_text (string text);
		public void close ();
		public void force_grab (bool enable);
		public bool get_allow_resize ();
		public unowned Vnc.Connection get_connection ();
		public Vnc.DisplayDepthColor get_depth ();
		public bool get_force_size ();
		public unowned Vnc.GrabSequence get_grab_keys ();
		public int get_height ();
		public bool get_keep_aspect_ratio ();
		public bool get_keyboard_grab ();
		public bool get_lossy_encoding ();
		[CCode (array_length = false, array_null_terminated = true)]
		public static unowned GLib.OptionEntry[] get_option_entries ();
		public static GLib.OptionGroup get_option_group ();
		public Gdk.Pixbuf get_pixbuf ();
		public bool get_pointer_grab ();
		public bool get_pointer_local ();
		public bool get_read_only ();
		public bool get_scaling ();
		public bool get_shared_flag ();
		public bool get_smoothing ();
		public int get_width ();
		public uint get_zoom_level ();
		public bool is_open ();
		public bool is_pointer_absolute ();
		public bool open_addr (GLib.SocketAddress addr, string? hostname);
		public bool open_fd (int fd);
		public bool open_fd_with_hostname (int fd, string? hostname);
		public bool open_host (string host, string port);
		public bool request_update ();
		public void send_keys ([CCode (array_length_cname = "nkeyvals", array_length_pos = 1.1)] uint[] keyvals);
		public void send_keys_ex ([CCode (array_length_cname = "nkeyvals", array_length_pos = 1.5)] uint[] keyvals, Vnc.DisplayKeyEvent kind);
		public void send_pointer (int x, int y, int button_mask);
		public void set_allow_resize (bool enable);
		public bool set_credential (int type, string data);
		public void set_depth (Vnc.DisplayDepthColor depth);
		public void set_force_size (bool enable);
		public void set_grab_keys (Vnc.GrabSequence seq);
		public void set_keep_aspect_ratio (bool enable);
		public void set_keyboard_grab (bool enable);
		public void set_lossy_encoding (bool enable);
		public void set_pointer_grab (bool enable);
		public void set_pointer_local (bool enable);
		public void set_read_only (bool enable);
		public bool set_scaling (bool enable);
		public void set_shared_flag (bool shared);
		public void set_smoothing (bool enable);
		public void set_zoom_level (uint zoom);
		public bool allow_resize { get; set construct; }
		public Vnc.Connection connection { get; }
		public Vnc.DisplayDepthColor depth { get; set construct; }
		public bool force_size { get; set construct; }
		[NoAccessorMethod]
		public bool grab_keyboard { get; set construct; }
		public Vnc.GrabSequence grab_keys { get; set construct; }
		[NoAccessorMethod]
		public bool grab_pointer { get; set construct; }
		public int height { get; }
		public bool keep_aspect_ratio { get; set construct; }
		[NoAccessorMethod]
		public bool local_pointer { get; set construct; }
		public bool lossy_encoding { get; set construct; }
		public string name { get; }
		public bool read_only { get; set construct; }
		public bool scaling { get; set construct; }
		public bool shared_flag { get; set construct; }
		public bool smoothing { get; set construct; }
		public int width { get; }
		public uint zoom_level { get; set construct; }
		public virtual signal void vnc_auth_credential (GLib.ValueArray credList);
		public signal void vnc_auth_failure (string object);
		public signal void vnc_auth_unsupported (uint object);
		public signal void vnc_bell ();
		public virtual signal void vnc_connected ();
		public signal void vnc_desktop_rename (string object);
		public signal void vnc_desktop_resize (int object, int p0);
		public virtual signal void vnc_disconnected ();
		public signal void vnc_error (string object);
		public virtual signal void vnc_initialized ();
		public signal void vnc_keyboard_grab ();
		public signal void vnc_keyboard_ungrab ();
		public signal void vnc_pointer_grab ();
		public signal void vnc_pointer_ungrab ();
		public signal void vnc_power_control_failed ();
		public signal void vnc_power_control_initialized ();
		public signal void vnc_server_cut_text (string object);
	}
	[CCode (cheader_filename = "gtk-vnc.h", copy_function = "g_boxed_copy", free_function = "g_boxed_free", type_id = "vnc_grab_sequence_get_type ()")]
	[Compact]
	public class GrabSequence {
		public uint keysyms;
		public uint nkeysyms;
		[CCode (has_construct_function = false)]
		public GrabSequence ([CCode (array_length_cname = "nkeysyms", array_length_pos = 0.5, array_length_type = "guint")] uint[] keysyms);
		public string as_string ();
		public Vnc.GrabSequence copy ();
		public void free ();
		[CCode (has_construct_function = false)]
		public GrabSequence.from_string (string str);
		public uint get_nth (uint n);
	}
	[CCode (cheader_filename = "gtk-vnc.h", cprefix = "VNC_DISPLAY_CREDENTIAL_", type_id = "vnc_display_credential_get_type ()")]
	public enum DisplayCredential {
		PASSWORD,
		USERNAME,
		CLIENTNAME
	}
	[CCode (cheader_filename = "gtk-vnc.h", cprefix = "VNC_DISPLAY_DEPTH_COLOR_", type_id = "vnc_display_depth_color_get_type ()")]
	public enum DisplayDepthColor {
		DEFAULT,
		FULL,
		MEDIUM,
		LOW,
		ULTRA_LOW
	}
	[CCode (cheader_filename = "gtk-vnc.h", cprefix = "VNC_DISPLAY_KEY_EVENT_", type_id = "vnc_display_key_event_get_type ()")]
	public enum DisplayKeyEvent {
		PRESS,
		RELEASE,
		CLICK
	}
}
