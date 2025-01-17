/* libayatana-ido3-0.4.vapi generated by vapigen, do not modify. */

[CCode (cprefix = "Ido", gir_namespace = "AyatanaIdo3", gir_version = "0.4", lower_case_cprefix = "ido_")]
namespace Ido {
	[CCode (cheader_filename = "libayatana-ido/libayatana-ido.h", type_id = "ido_calendar_menu_item_get_type ()")]
	public class CalendarMenuItem : Gtk.MenuItem, Atk.Implementor, Gtk.Actionable, Gtk.Activatable, Gtk.Buildable {
		[CCode (has_construct_function = false, type = "GtkWidget*")]
		public CalendarMenuItem ();
		public void clear_marks ();
		[CCode (has_construct_function = false, type = "GtkMenuItem*")]
		public CalendarMenuItem.from_model (GLib.MenuItem menuitem, GLib.ActionGroup actions);
		public unowned Gtk.Widget get_calendar ();
		public void get_date (out uint year, out uint month, out uint day);
		public Gtk.CalendarDisplayOptions get_display_options ();
		public bool mark_day (uint day);
		public bool set_date (uint year, uint month, uint day);
		public void set_display_options (Gtk.CalendarDisplayOptions flags);
		public bool unmark_day (uint day);
		public signal void day_selected ();
		public signal void day_selected_double_click ();
		public signal void month_changed ();
	}
	[CCode (cheader_filename = "libayatana-ido/libayatana-ido.h", type_id = "ido_entry_menu_item_get_type ()")]
	public class EntryMenuItem : Gtk.MenuItem, Atk.Implementor, Gtk.Actionable, Gtk.Activatable, Gtk.Buildable {
		[CCode (has_construct_function = false, type = "GtkWidget*")]
		public EntryMenuItem ();
		public unowned Gtk.Widget get_entry ();
	}
	[CCode (cheader_filename = "libayatana-ido/libayatana-ido.h", type_id = "ido_range_get_type ()")]
	public class Range : Gtk.Scale, Atk.Implementor, Gtk.Buildable, Gtk.Orientable {
		[CCode (has_construct_function = false, type = "GtkWidget*")]
		public Range (GLib.Object adj, Ido.RangeStyle style);
	}
	[CCode (cheader_filename = "libayatana-ido/libayatana-ido.h", type_id = "ido_scale_menu_item_get_type ()")]
	public class ScaleMenuItem : Gtk.MenuItem, Atk.Implementor, Gtk.Actionable, Gtk.Activatable, Gtk.Buildable {
		[CCode (has_construct_function = false, type = "GtkWidget*")]
		public ScaleMenuItem (string label, Ido.RangeStyle size, Gtk.Adjustment adjustment);
		[CCode (has_construct_function = false, type = "GtkMenuItem*")]
		public ScaleMenuItem.from_model (GLib.MenuItem menuitem, GLib.ActionGroup actions);
		public unowned Gtk.Widget get_primary_image ();
		public unowned string get_primary_label ();
		public unowned Gtk.Widget get_scale ();
		public unowned Gtk.Widget get_secondary_image ();
		public unowned string get_secondary_label ();
		public Ido.ScaleMenuItemStyle get_style ();
		public void set_primary_label (string label);
		public void set_secondary_label (string label);
		public void set_style (Ido.ScaleMenuItemStyle style);
		[CCode (has_construct_function = false, type = "GtkWidget*")]
		public ScaleMenuItem.with_range (string label, Ido.RangeStyle size, double value, double min, double max, double step);
		[NoAccessorMethod]
		public Gtk.Adjustment adjustment { owned get; set; }
		[NoAccessorMethod]
		public bool reverse_scroll_events { get; set; }
		[HasEmitter]
		public virtual signal void primary_clicked ();
		[HasEmitter]
		public virtual signal void secondary_clicked ();
		public signal void slider_grabbed ();
		public signal void slider_released ();
		public signal void value_changed (double value);
	}
	[CCode (cheader_filename = "libayatana-ido/libayatana-ido.h", type_id = "ido_switch_menu_item_get_type ()")]
	public class SwitchMenuItem : Gtk.CheckMenuItem, Atk.Implementor, Gtk.Actionable, Gtk.Activatable, Gtk.Buildable {
		[CCode (has_construct_function = false, type = "GtkWidget*")]
		public SwitchMenuItem ();
		[CCode (has_construct_function = false, type = "GtkMenuItem*")]
		public SwitchMenuItem.from_menu_model (GLib.MenuItem menuitem, GLib.ActionGroup actions);
		public unowned Gtk.Container get_content_area ();
		public void set_icon (GLib.Icon? icon);
		public void set_label (string label);
	}
	[CCode (cheader_filename = "libayatana-ido/libayatana-ido.h", type_id = "ido_timeline_get_type ()")]
	public class Timeline : GLib.Object {
		[CCode (has_construct_function = false)]
		public Timeline (uint duration);
		public static double calculate_progress (double linear_progress, Ido.TimelineProgressType progress_type);
		[CCode (has_construct_function = false)]
		public Timeline.for_screen (uint duration, Gdk.Screen screen);
		public Ido.TimelineDirection get_direction ();
		public uint get_duration ();
		public uint get_fps ();
		public bool get_loop ();
		public double get_progress ();
		public unowned Gdk.Screen get_screen ();
		public bool is_running ();
		public void pause ();
		public void rewind ();
		public void set_direction (Ido.TimelineDirection direction);
		public void set_duration (uint duration);
		public void set_fps (uint fps);
		public void set_loop (bool loop);
		public void set_progress (double progress);
		public void set_screen (Gdk.Screen screen);
		public void start ();
		public uint duration { get; set; }
		public uint fps { get; set; }
		public bool loop { get; set; }
		public Gdk.Screen screen { get; set; }
		public virtual signal void finished ();
		public virtual signal void frame (double progress);
		public virtual signal void paused ();
		public virtual signal void started ();
	}
	[CCode (cheader_filename = "libayatana-ido/libayatana-ido.h", cprefix = "IDO_RANGE_STYLE_", has_type_id = false)]
	public enum RangeStyle {
		DEFAULT,
		SMALL
	}
	[CCode (cheader_filename = "libayatana-ido/libayatana-ido.h", cprefix = "IDO_SCALE_MENU_ITEM_STYLE_", has_type_id = false)]
	public enum ScaleMenuItemStyle {
		NONE,
		IMAGE,
		LABEL
	}
	[CCode (cheader_filename = "libayatana-ido/libayatana-ido.h", cprefix = "IDO_TIMELINE_DIRECTION_", has_type_id = false)]
	public enum TimelineDirection {
		FORWARD,
		BACKWARD
	}
	[CCode (cheader_filename = "libayatana-ido/libayatana-ido.h", cprefix = "IDO_TIMELINE_PROGRESS_", has_type_id = false)]
	public enum TimelineProgressType {
		LINEAR,
		SINUSOIDAL,
		EXPONENTIAL,
		EASE_IN_EASE_OUT
	}
}
