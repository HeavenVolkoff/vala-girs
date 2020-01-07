/* libhandy-0.0.vapi generated by vapigen, do not modify. */

[CCode (cprefix = "Hdy", gir_namespace = "Handy", gir_version = "0.0", lower_case_cprefix = "hdy_")]
namespace Hdy {
	[CCode (cheader_filename = "handy.h", type_id = "hdy_action_row_get_type ()")]
	public class ActionRow : Hdy.PreferencesRow, Atk.Implementor, Gtk.Actionable, Gtk.Buildable {
		[CCode (has_construct_function = false)]
		[Version (since = "0.0.6")]
		public ActionRow ();
		public virtual void activate ();
		[Version (since = "0.0.6")]
		public void add_action (Gtk.Widget? widget);
		[Version (since = "0.0.6")]
		public void add_prefix (Gtk.Widget? widget);
		[Version (since = "0.0.7")]
		public unowned Gtk.Widget? get_activatable_widget ();
		[Version (since = "0.0.6")]
		public unowned string get_icon_name ();
		[Version (since = "0.0.6")]
		public unowned string get_subtitle ();
		[Version (since = "0.0.6")]
		public unowned string get_title ();
		[Version (since = "0.0.6")]
		public bool get_use_underline ();
		[Version (since = "0.0.7")]
		public void set_activatable_widget (Gtk.Widget? widget);
		[Version (since = "0.0.6")]
		public void set_icon_name (string icon_name);
		[Version (since = "0.0.6")]
		public void set_subtitle (string subtitle);
		[Version (since = "0.0.6")]
		public void set_title (string title);
		[Version (since = "0.0.6")]
		public void set_use_underline (bool use_underline);
		[Version (since = "0.0.7")]
		public Gtk.Widget activatable_widget { get; set; }
		[Version (since = "0.0.6")]
		public string icon_name { get; set; }
		[Version (since = "0.0.6")]
		public string subtitle { get; set; }
		[Version (since = "0.0.6")]
		public string title { get; set; }
		[Version (since = "0.0.6")]
		public bool use_underline { get; set; }
	}
	[CCode (cheader_filename = "handy.h", type_id = "hdy_arrows_get_type ()")]
	public class Arrows : Gtk.DrawingArea, Atk.Implementor, Gtk.Buildable {
		[CCode (has_construct_function = false, type = "GtkWidget*")]
		[Version (deprecated = true, deprecated_since = "0.0.12")]
		public Arrows ();
		[Version (deprecated = true, deprecated_since = "0.0.12")]
		public void animate ();
		[Version (deprecated = true, deprecated_since = "0.0.12")]
		public uint get_count ();
		[Version (deprecated = true, deprecated_since = "0.0.12")]
		public Hdy.ArrowsDirection get_direction ();
		[Version (deprecated = true, deprecated_since = "0.0.12")]
		public uint get_duration ();
		[Version (deprecated = true, deprecated_since = "0.0.12")]
		public void set_count (uint count);
		[Version (deprecated = true, deprecated_since = "0.0.12")]
		public void set_direction (Hdy.ArrowsDirection direction);
		[Version (deprecated = true, deprecated_since = "0.0.12")]
		public void set_duration (uint duration);
		public uint count { get; set; }
		public Hdy.ArrowsDirection direction { get; set; }
		public uint duration { get; set; }
	}
	[CCode (cheader_filename = "handy.h", type_id = "hdy_column_get_type ()")]
	public class Column : Gtk.Bin, Atk.Implementor, Gtk.Buildable {
		[CCode (has_construct_function = false)]
		public Column ();
		public int get_linear_growth_width ();
		public int get_maximum_width ();
		public void set_linear_growth_width (int linear_growth_width);
		public void set_maximum_width (int maximum_width);
		public int linear_growth_width { get; set; }
		public int maximum_width { get; set; }
	}
	[CCode (cheader_filename = "handy.h", type_id = "hdy_combo_row_get_type ()")]
	public class ComboRow : Hdy.ActionRow, Atk.Implementor, Gtk.Actionable, Gtk.Buildable {
		[CCode (has_construct_function = false)]
		[Version (since = "0.0.6")]
		public ComboRow ();
		[Version (since = "0.0.6")]
		public void bind_model (GLib.ListModel? model, Gtk.ListBoxCreateWidgetFunc? create_list_widget_func, owned Gtk.ListBoxCreateWidgetFunc? create_current_widget_func);
		[Version (since = "0.0.6")]
		public void bind_name_model (GLib.ListModel? model, owned Hdy.ComboRowGetNameFunc? get_name_func);
		[Version (since = "0.0.6")]
		public unowned GLib.ListModel? get_model ();
		[Version (since = "0.0.7")]
		public int get_selected_index ();
		[Version (since = "0.0.10")]
		public bool get_use_subtitle ();
		[Version (since = "0.0.6")]
		public void set_for_enum (GLib.Type enum_type, owned Hdy.ComboRowGetEnumValueNameFunc? get_name_func);
		[Version (since = "0.0.10")]
		public void set_get_name_func (owned Hdy.ComboRowGetNameFunc? get_name_func);
		[Version (since = "0.0.7")]
		public void set_selected_index (int selected_index);
		[Version (since = "0.0.10")]
		public void set_use_subtitle (bool use_subtitle);
		[Version (since = "0.0.7")]
		public int selected_index { get; set; }
		[Version (since = "0.0.10")]
		public bool use_subtitle { get; set; }
	}
	[CCode (cheader_filename = "handy.h", type_id = "hdy_dialer_get_type ()")]
	public class Dialer : Gtk.Bin, Atk.Implementor, Gtk.Buildable {
		[CCode (has_construct_function = false, type = "GtkWidget*")]
		[Version (deprecated = true, deprecated_since = "0.0.12")]
		public Dialer ();
		[Version (deprecated = true, deprecated_since = "0.0.12")]
		public void clear_number ();
		[Version (deprecated = true, deprecated_since = "0.0.12")]
		public unowned string get_number ();
		[Version (deprecated = true, deprecated_since = "0.0.12")]
		public Gtk.ReliefStyle get_relief ();
		[Version (deprecated = true, deprecated_since = "0.0.12")]
		public bool get_show_action_buttons ();
		[Version (deprecated = true, deprecated_since = "0.0.12")]
		public void set_number (string number);
		[Version (deprecated = true, deprecated_since = "0.0.12")]
		public void set_relief (Gtk.ReliefStyle relief);
		[Version (deprecated = true, deprecated_since = "0.0.12")]
		public void set_show_action_buttons (bool show);
		[NoAccessorMethod]
		public uint column_spacing { get; set; }
		public string number { get; set; }
		public Gtk.ReliefStyle relief { get; set; }
		[NoAccessorMethod]
		public uint row_spacing { get; set; }
		public bool show_action_buttons { get; set; }
		public signal void deleted ();
		public virtual signal void submitted (string number);
		public signal void symbol_clicked (char button);
	}
	[CCode (cheader_filename = "handy.h", type_id = "hdy_dialer_button_get_type ()")]
	public class DialerButton : Gtk.Button, Atk.Implementor, Gtk.Actionable, Gtk.Activatable, Gtk.Buildable {
		[CCode (has_construct_function = false, type = "GtkWidget*")]
		[Version (deprecated = true, deprecated_since = "0.0.12")]
		public DialerButton (string? symbols);
		[Version (deprecated = true, deprecated_since = "0.0.12")]
		public int get_digit ();
		[Version (deprecated = true, deprecated_since = "0.0.12")]
		public unowned string get_symbols ();
		public int digit { get; }
		[NoAccessorMethod]
		public string symbols { owned get; set; }
	}
	[CCode (cheader_filename = "handy.h", type_id = "hdy_dialer_cycle_button_get_type ()")]
	public class DialerCycleButton : Hdy.DialerButton, Atk.Implementor, Gtk.Actionable, Gtk.Activatable, Gtk.Buildable {
		[CCode (has_construct_function = false, type = "GtkWidget*")]
		[Version (deprecated = true, deprecated_since = "0.0.12")]
		public DialerCycleButton (string symbols);
		[Version (deprecated = true, deprecated_since = "0.0.12")]
		public unichar get_current_symbol ();
		[Version (deprecated = true, deprecated_since = "0.0.12")]
		public int get_cycle_timeout ();
		[Version (deprecated = true, deprecated_since = "0.0.12")]
		public bool is_cycling ();
		[Version (deprecated = true, deprecated_since = "0.0.12")]
		public void set_cycle_timeout (int timeout);
		[Version (deprecated = true, deprecated_since = "0.0.12")]
		public void stop_cycle ();
		public int cycle_timeout { get; set construct; }
		[Version (deprecated = true, deprecated_since = "0.0.12")]
		public virtual signal void cycle_end ();
		[Version (deprecated = true, deprecated_since = "0.0.12")]
		public virtual signal void cycle_start ();
	}
	[CCode (cheader_filename = "handy.h", type_id = "hdy_dialog_get_type ()")]
	public class Dialog : Gtk.Dialog, Atk.Implementor, Gtk.Buildable {
		[CCode (has_construct_function = false, type = "GtkWidget*")]
		[Version (since = "0.0.7")]
		public Dialog (Gtk.Window parent);
		[Version (since = "0.0.11")]
		public bool get_narrow ();
		[Version (since = "0.0.11")]
		public bool narrow { get; }
	}
	[CCode (cheader_filename = "handy.h", type_id = "hdy_enum_value_object_get_type ()")]
	public class EnumValueObject : GLib.Object {
		[CCode (has_construct_function = false)]
		public EnumValueObject (GLib.EnumValue enum_value);
		public unowned string get_name ();
		public unowned string get_nick ();
		public int get_value ();
	}
	[CCode (cheader_filename = "handy.h", type_id = "hdy_expander_row_get_type ()")]
	public class ExpanderRow : Hdy.ActionRow, Atk.Implementor, Gtk.Actionable, Gtk.Buildable {
		[CCode (has_construct_function = false)]
		[Version (since = "0.0.6")]
		public ExpanderRow ();
		[Version (since = "0.0.6")]
		public bool get_enable_expansion ();
		public bool get_expanded ();
		[Version (since = "0.0.6")]
		public bool get_show_enable_switch ();
		[Version (since = "0.0.6")]
		public void set_enable_expansion (bool enable_expansion);
		public void set_expanded (bool expanded);
		[Version (since = "0.0.6")]
		public void set_show_enable_switch (bool show_enable_switch);
		public bool enable_expansion { get; set; }
		public bool expanded { get; set; }
		public bool show_enable_switch { get; set; }
	}
	[CCode (cheader_filename = "handy.h", type_id = "hdy_header_bar_get_type ()")]
	public class HeaderBar : Gtk.Container, Atk.Implementor, Gtk.Buildable {
		[CCode (has_construct_function = false, type = "GtkWidget*")]
		[Version (since = "0.0.10")]
		public HeaderBar ();
		[Version (since = "0.0.10")]
		public Hdy.CenteringPolicy get_centering_policy ();
		[Version (since = "0.0.10")]
		public unowned Gtk.Widget? get_custom_title ();
		[Version (since = "0.0.10")]
		public unowned string get_decoration_layout ();
		[Version (since = "0.0.10")]
		public bool get_has_subtitle ();
		[Version (since = "0.0.10")]
		public bool get_interpolate_size ();
		[Version (since = "0.0.10")]
		public bool get_show_close_button ();
		[Version (since = "0.0.10")]
		public unowned string? get_subtitle ();
		[Version (since = "0.0.10")]
		public unowned string? get_title ();
		[Version (since = "0.0.10")]
		public uint get_transition_duration ();
		[Version (since = "0.0.10")]
		public bool get_transition_running ();
		[Version (since = "0.0.10")]
		public void pack_end (Gtk.Widget child);
		[Version (since = "0.0.10")]
		public void pack_start (Gtk.Widget child);
		[Version (since = "0.0.10")]
		public void set_centering_policy (Hdy.CenteringPolicy centering_policy);
		[Version (since = "0.0.10")]
		public void set_custom_title (Gtk.Widget? title_widget);
		[Version (since = "0.0.10")]
		public void set_decoration_layout (string? layout);
		[Version (since = "0.0.10")]
		public void set_has_subtitle (bool setting);
		[Version (since = "0.0.10")]
		public void set_interpolate_size (bool interpolate_size);
		[Version (since = "0.0.10")]
		public void set_show_close_button (bool setting);
		[Version (since = "0.0.10")]
		public void set_subtitle (string? subtitle);
		[Version (since = "0.0.10")]
		public void set_title (string? title);
		[Version (since = "0.0.10")]
		public void set_transition_duration (uint duration);
		public Hdy.CenteringPolicy centering_policy { get; set; }
		public Gtk.Widget custom_title { get; set; }
		[Version (since = "0.0.10")]
		public string decoration_layout { get; set; }
		[NoAccessorMethod]
		[Version (since = "0.0.10")]
		public bool decoration_layout_set { get; set; }
		[Version (since = "0.0.10")]
		public bool has_subtitle { get; set; }
		public bool interpolate_size { get; set; }
		[Version (since = "0.0.10")]
		public bool show_close_button { get; set; }
		[NoAccessorMethod]
		public int spacing { get; set; }
		public string subtitle { get; set; }
		public string title { get; set; }
		public uint transition_duration { get; set; }
		public bool transition_running { get; }
	}
	[CCode (cheader_filename = "handy.h", type_id = "hdy_header_group_get_type ()")]
	public class HeaderGroup : GLib.Object, Gtk.Buildable {
		[CCode (has_construct_function = false)]
		public HeaderGroup ();
		public void add_header_bar (Gtk.HeaderBar header_bar);
		public unowned Gtk.HeaderBar? get_focus ();
		public unowned GLib.SList<Gtk.HeaderBar> get_header_bars ();
		public void remove_header_bar (Gtk.HeaderBar header_bar);
		public void set_focus (Gtk.HeaderBar? header_bar);
		public Gtk.HeaderBar focus { get; set; }
	}
	[CCode (cheader_filename = "handy.h", type_id = "hdy_keypad_get_type ()")]
	public class Keypad : Gtk.Grid, Atk.Implementor, Gtk.Buildable, Gtk.Orientable {
		[CCode (has_construct_function = false, type = "GtkWidget*")]
		public Keypad (bool only_digits, bool show_symbols);
		public unowned Gtk.Widget get_entry ();
		public void set_entry (Gtk.Entry entry);
		public void set_left_action (Gtk.Widget widget);
		public void set_right_action (Gtk.Widget widget);
		public Gtk.Widget entry { get; set; }
		public Gtk.Widget left_action { set; }
		[NoAccessorMethod]
		public bool only_digits { get; set; }
		public Gtk.Widget right_action { set; }
		[NoAccessorMethod]
		public bool show_symbols { get; set; }
	}
	[CCode (cheader_filename = "handy.h", type_id = "hdy_leaflet_get_type ()")]
	public class Leaflet : Gtk.Container, Atk.Implementor, Gtk.Buildable, Gtk.Orientable, Hdy.Swipeable {
		[CCode (has_construct_function = false, type = "GtkWidget*")]
		public Leaflet ();
		[Version (since = "0.0.12")]
		public bool get_can_swipe_back ();
		[Version (since = "0.0.12")]
		public bool get_can_swipe_forward ();
		public uint get_child_transition_duration ();
		public bool get_child_transition_running ();
		[Version (deprecated = true, deprecated_since = "0.0.12")]
		public Hdy.LeafletChildTransitionType get_child_transition_type ();
		public Hdy.Fold get_fold ();
		public bool get_homogeneous (Hdy.Fold fold, Gtk.Orientation orientation);
		public bool get_interpolate_size ();
		public uint get_mode_transition_duration ();
		[Version (deprecated = true, deprecated_since = "0.0.12")]
		public Hdy.LeafletModeTransitionType get_mode_transition_type ();
		[Version (since = "0.0.12")]
		public Hdy.LeafletTransitionType get_transition_type ();
		public unowned Gtk.Widget get_visible_child ();
		public unowned string get_visible_child_name ();
		[Version (since = "0.0.12")]
		public void set_can_swipe_back (bool can_swipe_back);
		[Version (since = "0.0.12")]
		public void set_can_swipe_forward (bool can_swipe_forward);
		public void set_child_transition_duration (uint duration);
		[Version (deprecated = true, deprecated_since = "0.0.12")]
		public void set_child_transition_type (Hdy.LeafletChildTransitionType transition);
		public void set_homogeneous (Hdy.Fold fold, Gtk.Orientation orientation, bool homogeneous);
		public void set_interpolate_size (bool interpolate_size);
		public void set_mode_transition_duration (uint duration);
		[Version (deprecated = true, deprecated_since = "0.0.12")]
		public void set_mode_transition_type (Hdy.LeafletModeTransitionType transition);
		[Version (since = "0.0.12")]
		public void set_transition_type (Hdy.LeafletTransitionType transition);
		public void set_visible_child (Gtk.Widget visible_child);
		public void set_visible_child_name (string name);
		[NoWrapper]
		public virtual void todo ();
		[Version (since = "0.0.12")]
		public bool can_swipe_back { get; set; }
		[Version (since = "0.0.12")]
		public bool can_swipe_forward { get; set; }
		public uint child_transition_duration { get; set; }
		public bool child_transition_running { get; }
		[Version (deprecated = true, deprecated_since = "0.0.12")]
		public Hdy.LeafletChildTransitionType child_transition_type { get; set; }
		public Hdy.Fold fold { get; }
		[NoAccessorMethod]
		public bool folded { get; }
		[NoAccessorMethod]
		public bool hhomogeneous_folded { get; set; }
		[NoAccessorMethod]
		public bool hhomogeneous_unfolded { get; set; }
		public bool interpolate_size { get; set; }
		public uint mode_transition_duration { get; set; }
		[Version (deprecated = true, deprecated_since = "0.0.12")]
		public Hdy.LeafletModeTransitionType mode_transition_type { get; set; }
		[Version (since = "0.0.12")]
		public Hdy.LeafletTransitionType transition_type { get; set; }
		[NoAccessorMethod]
		public bool vhomogeneous_folded { get; set; }
		[NoAccessorMethod]
		public bool vhomogeneous_unfolded { get; set; }
		public Gtk.Widget visible_child { get; set; }
		public string visible_child_name { get; set; }
	}
	[CCode (cheader_filename = "handy.h", type_id = "hdy_paginator_get_type ()")]
	public class Paginator : Gtk.EventBox, Atk.Implementor, Gtk.Buildable, Gtk.Orientable, Hdy.Swipeable {
		[CCode (has_construct_function = false)]
		[Version (since = "0.0.11")]
		public Paginator ();
		[Version (since = "0.0.12")]
		public bool get_allow_mouse_drag ();
		[Version (since = "0.0.11")]
		public uint get_animation_duration ();
		[Version (since = "0.0.11")]
		public bool get_center_content ();
		[Version (since = "0.0.11")]
		public uint get_indicator_spacing ();
		[Version (since = "0.0.11")]
		public Hdy.PaginatorIndicatorStyle get_indicator_style ();
		[Version (since = "0.0.11")]
		public bool get_interactive ();
		[Version (since = "0.0.11")]
		public uint get_n_pages ();
		[Version (since = "0.0.11")]
		public double get_position ();
		[Version (since = "0.0.11")]
		public uint get_spacing ();
		[Version (since = "0.0.11")]
		public void insert (Gtk.Widget child, int position);
		[Version (since = "0.0.11")]
		public void prepend (Gtk.Widget child);
		[Version (since = "0.0.11")]
		public void reorder (Gtk.Widget child, int position);
		[Version (since = "0.0.11")]
		public void scroll_to (Gtk.Widget widget);
		[Version (since = "0.0.11")]
		public void scroll_to_full (Gtk.Widget widget, int64 duration);
		[Version (since = "0.0.12")]
		public void set_allow_mouse_drag (bool allow_mouse_drag);
		[Version (since = "0.0.11")]
		public void set_animation_duration (uint duration);
		[Version (since = "0.0.11")]
		public void set_center_content (bool center_content);
		[Version (since = "0.0.11")]
		public void set_indicator_spacing (uint spacing);
		[Version (since = "0.0.11")]
		public void set_indicator_style (Hdy.PaginatorIndicatorStyle style);
		[Version (since = "0.0.11")]
		public void set_interactive (bool interactive);
		[Version (since = "0.0.11")]
		public void set_spacing (uint spacing);
		[Version (since = "0.0.12")]
		public bool allow_mouse_drag { get; set; }
		[Version (since = "0.0.11")]
		public uint animation_duration { get; set; }
		[Version (since = "0.0.11")]
		public bool center_content { get; set; }
		[Version (since = "0.0.11")]
		public uint indicator_spacing { get; set; }
		[Version (since = "0.0.11")]
		public Hdy.PaginatorIndicatorStyle indicator_style { get; set; }
		[Version (since = "0.0.11")]
		public bool interactive { get; set; }
		[Version (since = "0.0.11")]
		public uint n_pages { get; }
		[Version (since = "0.0.11")]
		public double position { get; }
		[Version (since = "0.0.11")]
		public uint spacing { get; set; }
		[Version (since = "0.0.12")]
		public signal void page_changed (uint index);
	}
	[CCode (cheader_filename = "handy.h", type_id = "hdy_preferences_group_get_type ()")]
	public class PreferencesGroup : Gtk.Box, Atk.Implementor, Gtk.Buildable, Gtk.Orientable {
		[CCode (has_construct_function = false)]
		[Version (since = "0.0.10")]
		public PreferencesGroup ();
		[Version (since = "0.0.10")]
		public unowned string get_description ();
		[Version (since = "0.0.10")]
		public unowned string get_title ();
		[Version (since = "0.0.10")]
		public void set_description (string description);
		[Version (since = "0.0.10")]
		public void set_title (string title);
		[Version (since = "0.0.10")]
		public string description { get; set; }
		[Version (since = "0.0.10")]
		public string title { get; set; }
	}
	[CCode (cheader_filename = "handy.h", type_id = "hdy_preferences_page_get_type ()")]
	public class PreferencesPage : Gtk.ScrolledWindow, Atk.Implementor, Gtk.Buildable {
		[CCode (has_construct_function = false)]
		[Version (since = "0.0.10")]
		public PreferencesPage ();
		[Version (since = "0.0.10")]
		public unowned string? get_icon_name ();
		[Version (since = "0.0.10")]
		public unowned string? get_title ();
		[Version (since = "0.0.10")]
		public void set_icon_name (string? icon_name);
		[Version (since = "0.0.10")]
		public void set_title (string? title);
		[Version (since = "0.0.10")]
		public string icon_name { get; set; }
		[Version (since = "0.0.10")]
		public string title { get; set; }
	}
	[CCode (cheader_filename = "handy.h", type_id = "hdy_preferences_row_get_type ()")]
	public class PreferencesRow : Gtk.ListBoxRow, Atk.Implementor, Gtk.Actionable, Gtk.Buildable {
		[CCode (has_construct_function = false)]
		[Version (since = "0.0.10")]
		public PreferencesRow ();
		[Version (since = "0.0.10")]
		public unowned string? get_title ();
		[Version (since = "0.0.10")]
		public bool get_use_underline ();
		[Version (since = "0.0.10")]
		public void set_title (string? title);
		[Version (since = "0.0.10")]
		public void set_use_underline (bool use_underline);
		[Version (since = "0.0.10")]
		public string title { get; set; }
		[Version (since = "0.0.10")]
		public bool use_underline { get; set; }
	}
	[CCode (cheader_filename = "handy.h", type_id = "hdy_preferences_window_get_type ()")]
	public class PreferencesWindow : Gtk.Window, Atk.Implementor, Gtk.Buildable {
		[CCode (has_construct_function = false)]
		[Version (since = "0.0.10")]
		public PreferencesWindow ();
	}
	[CCode (cheader_filename = "handy.h", type_id = "hdy_search_bar_get_type ()")]
	public class SearchBar : Gtk.Bin, Atk.Implementor, Gtk.Buildable {
		[CCode (has_construct_function = false, type = "GtkWidget*")]
		[Version (since = "0.0.6")]
		public SearchBar ();
		[Version (since = "0.0.6")]
		public void connect_entry (Gtk.Entry entry);
		[Version (since = "0.0.6")]
		public bool get_search_mode ();
		[Version (since = "0.0.6")]
		public bool get_show_close_button ();
		[Version (since = "0.0.6")]
		public bool handle_event (Gdk.Event event);
		[Version (since = "0.0.6")]
		public void set_search_mode (bool search_mode);
		[Version (since = "0.0.6")]
		public void set_show_close_button (bool visible);
		[NoAccessorMethod]
		public bool search_mode_enabled { get; set; }
		public bool show_close_button { get; set construct; }
	}
	[CCode (cheader_filename = "handy.h", type_id = "hdy_squeezer_get_type ()")]
	public class Squeezer : Gtk.Container, Atk.Implementor, Gtk.Buildable, Gtk.Orientable {
		[CCode (has_construct_function = false)]
		public Squeezer ();
		public bool get_child_enabled (Gtk.Widget child);
		[Version (since = "0.0.10")]
		public bool get_homogeneous ();
		[Version (since = "0.0.10")]
		public bool get_interpolate_size ();
		public uint get_transition_duration ();
		public bool get_transition_running ();
		public Hdy.SqueezerTransitionType get_transition_type ();
		public unowned Gtk.Widget? get_visible_child ();
		public void set_child_enabled (Gtk.Widget child, bool enabled);
		[Version (since = "0.0.10")]
		public void set_homogeneous (bool homogeneous);
		[Version (since = "0.0.10")]
		public void set_interpolate_size (bool interpolate_size);
		public void set_transition_duration (uint duration);
		public void set_transition_type (Hdy.SqueezerTransitionType transition);
		public bool homogeneous { get; set; }
		public bool interpolate_size { get; set; }
		public uint transition_duration { get; set; }
		public bool transition_running { get; }
		public Hdy.SqueezerTransitionType transition_type { get; set; }
		public Gtk.Widget visible_child { get; }
	}
	[CCode (cheader_filename = "handy.h", type_id = "hdy_swipe_group_get_type ()")]
	public class SwipeGroup : GLib.Object, Gtk.Buildable {
		[CCode (has_construct_function = false)]
		[Version (since = "0.0.12")]
		public SwipeGroup ();
		[Version (since = "0.0.12")]
		public void add_swipeable (Hdy.Swipeable swipeable);
		[Version (since = "0.0.12")]
		public unowned GLib.SList<Hdy.Swipeable> get_swipeables ();
		[Version (since = "0.0.12")]
		public void remove_swipeable (Hdy.Swipeable swipeable);
	}
	[CCode (cheader_filename = "handy.h", type_id = "hdy_title_bar_get_type ()")]
	public class TitleBar : Gtk.Bin, Atk.Implementor, Gtk.Buildable {
		[CCode (has_construct_function = false)]
		public TitleBar ();
		public bool get_selection_mode ();
		public void set_selection_mode (bool selection_mode);
		public bool selection_mode { get; set; }
	}
	[CCode (cheader_filename = "handy.h", type_id = "hdy_value_object_get_type ()")]
	public class ValueObject : GLib.Object {
		[CCode (has_construct_function = false)]
		[Version (since = "0.0.8")]
		public ValueObject (GLib.Value value);
		[Version (since = "0.0.8")]
		public void copy_value (GLib.Value dest);
		[Version (since = "0.0.8")]
		public string dup_string ();
		[Version (since = "0.0.8")]
		public unowned string get_string ();
		[Version (since = "0.0.8")]
		public unowned GLib.Value? get_value ();
		public GLib.Value value { get; construct; }
	}
	[CCode (cheader_filename = "handy.h", type_id = "hdy_view_switcher_get_type ()")]
	public class ViewSwitcher : Gtk.Box, Atk.Implementor, Gtk.Buildable, Gtk.Orientable {
		[CCode (has_construct_function = false)]
		[Version (since = "0.0.10")]
		public ViewSwitcher ();
		[Version (since = "0.0.10")]
		public Gtk.IconSize get_icon_size ();
		[Version (since = "0.0.10")]
		public Pango.EllipsizeMode get_narrow_ellipsize ();
		[Version (since = "0.0.10")]
		public Hdy.ViewSwitcherPolicy get_policy ();
		[Version (since = "0.0.10")]
		public unowned Gtk.Stack? get_stack ();
		[Version (since = "0.0.10")]
		public void set_icon_size (Gtk.IconSize icon_size);
		[Version (since = "0.0.10")]
		public void set_narrow_ellipsize (Pango.EllipsizeMode mode);
		[Version (since = "0.0.10")]
		public void set_policy (Hdy.ViewSwitcherPolicy policy);
		[Version (since = "0.0.10")]
		public void set_stack (Gtk.Stack? stack);
		[Version (since = "0.0.10")]
		public int icon_size { get; set; }
		[Version (since = "0.0.10")]
		public Pango.EllipsizeMode narrow_ellipsize { get; set; }
		[Version (since = "0.0.10")]
		public Hdy.ViewSwitcherPolicy policy { get; set; }
		[Version (since = "0.0.10")]
		public Gtk.Stack stack { get; set; }
	}
	[CCode (cheader_filename = "handy.h", type_id = "hdy_view_switcher_bar_get_type ()")]
	public class ViewSwitcherBar : Gtk.Bin, Atk.Implementor, Gtk.Buildable {
		[CCode (has_construct_function = false)]
		[Version (since = "0.0.10")]
		public ViewSwitcherBar ();
		[Version (since = "0.0.10")]
		public Gtk.IconSize get_icon_size ();
		[Version (since = "0.0.10")]
		public Hdy.ViewSwitcherPolicy get_policy ();
		[Version (since = "0.0.10")]
		public bool get_reveal ();
		[Version (since = "0.0.10")]
		public unowned Gtk.Stack? get_stack ();
		[Version (since = "0.0.10")]
		public void set_icon_size (Gtk.IconSize icon_size);
		[Version (since = "0.0.10")]
		public void set_policy (Hdy.ViewSwitcherPolicy policy);
		[Version (since = "0.0.10")]
		public void set_reveal (bool reveal);
		[Version (since = "0.0.10")]
		public void set_stack (Gtk.Stack? stack);
		[Version (since = "0.0.10")]
		public int icon_size { get; set; }
		[Version (since = "0.0.10")]
		public Hdy.ViewSwitcherPolicy policy { get; set; }
		[Version (since = "0.0.10")]
		public bool reveal { get; set; }
		[Version (since = "0.0.10")]
		public Gtk.Stack stack { get; set; }
	}
	[CCode (cheader_filename = "handy.h", type_cname = "HdySwipeableInterface", type_id = "hdy_swipeable_get_type ()")]
	public interface Swipeable : Gtk.Widget {
		[Version (since = "0.0.12")]
		public virtual signal void begin_swipe (int direction);
		[Version (since = "0.0.12")]
		public virtual signal void end_swipe (int64 duration, double to);
		[Version (since = "0.0.12")]
		public virtual signal void switch_child (uint index, int64 duration);
		[Version (since = "0.0.12")]
		public virtual signal void update_swipe (double value);
	}
	[CCode (cheader_filename = "handy.h", cprefix = "HDY_ARROWS_DIRECTION_", type_id = "hdy_arrows_direction_get_type ()")]
	public enum ArrowsDirection {
		UP,
		DOWN,
		LEFT,
		RIGHT
	}
	[CCode (cheader_filename = "handy.h", cprefix = "HDY_CENTERING_POLICY_", type_id = "hdy_centering_policy_get_type ()")]
	public enum CenteringPolicy {
		LOOSE,
		STRICT
	}
	[CCode (cheader_filename = "handy.h", cprefix = "HDY_FOLD_", type_id = "hdy_fold_get_type ()")]
	public enum Fold {
		UNFOLDED,
		FOLDED
	}
	[CCode (cheader_filename = "handy.h", cprefix = "HDY_LEAFLET_CHILD_TRANSITION_TYPE_", type_id = "hdy_leaflet_child_transition_type_get_type ()")]
	[Version (deprecated = true, deprecated_since = "0.0.12")]
	public enum LeafletChildTransitionType {
		NONE,
		CROSSFADE,
		SLIDE,
		OVER,
		UNDER
	}
	[CCode (cheader_filename = "handy.h", cprefix = "HDY_LEAFLET_MODE_TRANSITION_TYPE_", type_id = "hdy_leaflet_mode_transition_type_get_type ()")]
	[Version (deprecated = true, deprecated_since = "0.0.12")]
	public enum LeafletModeTransitionType {
		NONE,
		SLIDE
	}
	[CCode (cheader_filename = "handy.h", cprefix = "HDY_LEAFLET_TRANSITION_TYPE_", type_id = "hdy_leaflet_transition_type_get_type ()")]
	[Version (since = "0.0.12")]
	public enum LeafletTransitionType {
		NONE,
		SLIDE,
		OVER,
		UNDER
	}
	[CCode (cheader_filename = "handy.h", cprefix = "HDY_PAGINATOR_INDICATOR_STYLE_", type_id = "hdy_paginator_indicator_style_get_type ()")]
	public enum PaginatorIndicatorStyle {
		NONE,
		DOTS,
		LINES
	}
	[CCode (cheader_filename = "handy.h", cprefix = "HDY_SQUEEZER_TRANSITION_TYPE_", type_id = "hdy_squeezer_transition_type_get_type ()")]
	public enum SqueezerTransitionType {
		NONE,
		CROSSFADE
	}
	[CCode (cheader_filename = "handy.h", cprefix = "HDY_VIEW_SWITCHER_POLICY_", type_id = "hdy_view_switcher_policy_get_type ()")]
	public enum ViewSwitcherPolicy {
		AUTO,
		NARROW,
		WIDE
	}
	[CCode (cheader_filename = "handy.h", instance_pos = 1.9)]
	public delegate string ComboRowGetEnumValueNameFunc (Hdy.EnumValueObject value);
	[CCode (cheader_filename = "handy.h", instance_pos = 1.9)]
	public delegate string ComboRowGetNameFunc (GLib.Object item);
	[CCode (cheader_filename = "handy.h")]
	[Version (since = "0.0.11")]
	public static double ease_out_cubic (double t);
	[CCode (cheader_filename = "handy.h")]
	[Version (since = "0.0.6")]
	public static string enum_value_row_name (Hdy.EnumValueObject value, void* user_data);
	[CCode (cheader_filename = "handy.h")]
	[Version (since = "0.0.11")]
	public static bool get_enable_animations (Gtk.Widget widget);
	[CCode (cheader_filename = "handy.h")]
	public static bool init ([CCode (array_length_cname = "argc", array_length_pos = 0.5)] ref unowned string[]? argv);
	[CCode (cheader_filename = "handy.h")]
	[Version (since = "0.0.6")]
	public static void list_box_separator_header (Gtk.ListBoxRow row, Gtk.ListBoxRow? before, void* unused_user_data);
	[CCode (cheader_filename = "handy.h")]
	public static long string_utf8_len (GLib.StringBuilder string);
	[CCode (cheader_filename = "handy.h")]
	public static unowned GLib.StringBuilder string_utf8_truncate (GLib.StringBuilder string, size_t len);
}
