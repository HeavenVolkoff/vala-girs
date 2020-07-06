/* libhandy-1.vapi generated by vapigen, do not modify. */

[CCode (cprefix = "Hdy", gir_namespace = "Handy", gir_version = "1", lower_case_cprefix = "hdy_")]
namespace Hdy {
	[CCode (cheader_filename = "handy.h", type_id = "hdy_action_row_get_type ()")]
	public class ActionRow : Hdy.PreferencesRow, Atk.Implementor, Gtk.Actionable, Gtk.Buildable {
		[CCode (has_construct_function = false, type = "GtkWidget*")]
		[Version (since = "0.0.6")]
		public ActionRow ();
		public virtual void activate ();
		[Version (since = "0.0.6")]
		public void add_prefix (Gtk.Widget widget);
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
		[Version (since = "1.0")]
		public signal void activated ();
	}
	[CCode (cheader_filename = "handy.h", type_id = "hdy_application_window_get_type ()")]
	public class ApplicationWindow : Gtk.ApplicationWindow, Atk.Implementor, GLib.ActionGroup, GLib.ActionMap, Gtk.Buildable {
		[CCode (has_construct_function = false, type = "GtkWidget*")]
		[Version (since = "1.0")]
		public ApplicationWindow ();
	}
	[CCode (cheader_filename = "handy.h", type_id = "hdy_avatar_get_type ()")]
	public class Avatar : Gtk.DrawingArea, Atk.Implementor, Gtk.Buildable {
		[CCode (has_construct_function = false, type = "GtkWidget*")]
		public Avatar (int size, string? text, bool show_initials);
		public bool get_show_initials ();
		public int get_size ();
		public unowned string? get_text ();
		public void set_image_load_func (owned Hdy.AvatarImageLoadFunc? load_image);
		public void set_show_initials (bool show_initials);
		public void set_size (int size);
		public void set_text (string? text);
		public bool show_initials { get; set; }
		public int size { get; set; }
		public string text { get; set; }
	}
	[CCode (cheader_filename = "handy.h", type_id = "hdy_carousel_get_type ()")]
	public class Carousel : Gtk.EventBox, Atk.Implementor, Gtk.Buildable, Gtk.Orientable, Hdy.Swipeable {
		[CCode (has_construct_function = false, type = "GtkWidget*")]
		[Version (since = "1.0")]
		public Carousel ();
		[Version (since = "1.0")]
		public bool get_allow_mouse_drag ();
		[Version (since = "1.0")]
		public uint get_animation_duration ();
		[Version (since = "1.0")]
		public bool get_center_content ();
		[Version (since = "1.0")]
		public uint get_indicator_spacing ();
		[Version (since = "1.0")]
		public Hdy.CarouselIndicatorStyle get_indicator_style ();
		[Version (since = "1.0")]
		public bool get_interactive ();
		[Version (since = "1.0")]
		public uint get_n_pages ();
		[Version (since = "1.0")]
		public double get_position ();
		[Version (since = "1.0")]
		public uint get_reveal_duration ();
		[Version (since = "1.0")]
		public uint get_spacing ();
		[Version (since = "1.0")]
		public void insert (Gtk.Widget child, int position);
		[Version (since = "1.0")]
		public void prepend (Gtk.Widget child);
		[Version (since = "1.0")]
		public void reorder (Gtk.Widget child, int position);
		[Version (since = "1.0")]
		public void scroll_to (Gtk.Widget widget);
		[Version (since = "1.0")]
		public void scroll_to_full (Gtk.Widget widget, int64 duration);
		[Version (since = "1.0")]
		public void set_allow_mouse_drag (bool allow_mouse_drag);
		[Version (since = "1.0")]
		public void set_animation_duration (uint duration);
		[Version (since = "1.0")]
		public void set_center_content (bool center_content);
		[Version (since = "1.0")]
		public void set_indicator_spacing (uint spacing);
		[Version (since = "1.0")]
		public void set_indicator_style (Hdy.CarouselIndicatorStyle style);
		[Version (since = "1.0")]
		public void set_interactive (bool interactive);
		[Version (since = "1.0")]
		public void set_reveal_duration (uint reveal_duration);
		[Version (since = "1.0")]
		public void set_spacing (uint spacing);
		[Version (since = "1.0")]
		public bool allow_mouse_drag { get; set; }
		[Version (since = "1.0")]
		public uint animation_duration { get; set; }
		[Version (since = "1.0")]
		public bool center_content { get; set; }
		[Version (since = "1.0")]
		public uint indicator_spacing { get; set; }
		[Version (since = "1.0")]
		public Hdy.CarouselIndicatorStyle indicator_style { get; set; }
		[Version (since = "1.0")]
		public bool interactive { get; set; }
		[Version (since = "1.0")]
		public uint n_pages { get; }
		[Version (since = "1.0")]
		public double position { get; }
		[Version (since = "1.0")]
		public uint reveal_duration { get; set; }
		[Version (since = "1.0")]
		public uint spacing { get; set; }
		[Version (since = "1.0")]
		public signal void page_changed (uint index);
	}
	[CCode (cheader_filename = "handy.h", type_id = "hdy_clamp_get_type ()")]
	public class Clamp : Gtk.Bin, Atk.Implementor, Gtk.Buildable, Gtk.Orientable {
		[CCode (has_construct_function = false, type = "GtkWidget*")]
		[Version (since = "1.0")]
		public Clamp ();
		[Version (since = "1.0")]
		public int get_maximum_size ();
		[Version (since = "1.0")]
		public int get_tightening_threshold ();
		[Version (since = "1.0")]
		public void set_maximum_size (int maximum_size);
		[Version (since = "1.0")]
		public void set_tightening_threshold (int tightening_threshold);
		[Version (since = "1.0")]
		public int maximum_size { get; set; }
		[Version (since = "1.0")]
		public int tightening_threshold { get; set; }
	}
	[CCode (cheader_filename = "handy.h", type_id = "hdy_combo_row_get_type ()")]
	public class ComboRow : Hdy.ActionRow, Atk.Implementor, Gtk.Actionable, Gtk.Buildable {
		[CCode (has_construct_function = false, type = "GtkWidget*")]
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
	[CCode (cheader_filename = "handy.h", type_id = "hdy_deck_get_type ()")]
	public class Deck : Gtk.Container, Atk.Implementor, Gtk.Buildable, Gtk.Orientable, Hdy.Swipeable {
		[CCode (has_construct_function = false, type = "GtkWidget*")]
		public Deck ();
		[Version (since = "1.0")]
		public unowned Gtk.Widget? get_adjacent_child (Hdy.NavigationDirection direction);
		[Version (since = "1.0")]
		public bool get_can_swipe_back ();
		[Version (since = "1.0")]
		public bool get_can_swipe_forward ();
		[Version (since = "1.0")]
		public bool get_homogeneous (Gtk.Orientation orientation);
		[Version (since = "1.0")]
		public bool get_interpolate_size ();
		[Version (since = "1.0")]
		public uint get_transition_duration ();
		[Version (since = "1.0")]
		public bool get_transition_running ();
		[Version (since = "1.0")]
		public Hdy.DeckTransitionType get_transition_type ();
		[Version (since = "1.0")]
		public unowned Gtk.Widget get_visible_child ();
		[Version (since = "1.0")]
		public unowned string get_visible_child_name ();
		[Version (since = "1.0")]
		public bool navigate (Hdy.NavigationDirection direction);
		[Version (since = "1.0")]
		public void set_can_swipe_back (bool can_swipe_back);
		[Version (since = "1.0")]
		public void set_can_swipe_forward (bool can_swipe_forward);
		[Version (since = "1.0")]
		public void set_homogeneous (Gtk.Orientation orientation, bool homogeneous);
		[Version (since = "1.0")]
		public void set_interpolate_size (bool interpolate_size);
		[Version (since = "1.0")]
		public void set_transition_duration (uint duration);
		[Version (since = "1.0")]
		public void set_transition_type (Hdy.DeckTransitionType transition);
		[Version (since = "1.0")]
		public void set_visible_child (Gtk.Widget visible_child);
		[Version (since = "1.0")]
		public void set_visible_child_name (string name);
		[Version (since = "1.0")]
		public bool can_swipe_back { get; set; }
		[Version (since = "1.0")]
		public bool can_swipe_forward { get; set; }
		[NoAccessorMethod]
		[Version (since = "1.0")]
		public bool hhomogeneous { get; set; }
		[Version (since = "1.0")]
		public bool interpolate_size { get; set; }
		[Version (since = "1.0")]
		public uint transition_duration { get; set; }
		[Version (since = "1.0")]
		public bool transition_running { get; }
		[Version (since = "1.0")]
		public Hdy.DeckTransitionType transition_type { get; set; }
		[NoAccessorMethod]
		[Version (since = "1.0")]
		public bool vhomogeneous { get; set; }
		[Version (since = "1.0")]
		public Gtk.Widget visible_child { get; set; }
		[Version (since = "1.0")]
		public string visible_child_name { get; set; }
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
	public class ExpanderRow : Hdy.PreferencesRow, Atk.Implementor, Gtk.Actionable, Gtk.Buildable {
		[CCode (has_construct_function = false, type = "GtkWidget*")]
		[Version (since = "0.0.6")]
		public ExpanderRow ();
		[Version (since = "1.0")]
		public void add_action (Gtk.Widget widget);
		[Version (since = "1.0")]
		public void add_prefix (Gtk.Widget widget);
		[Version (since = "0.0.6")]
		public bool get_enable_expansion ();
		public bool get_expanded ();
		[Version (since = "1.0")]
		public unowned string get_icon_name ();
		[Version (since = "0.0.6")]
		public bool get_show_enable_switch ();
		[Version (since = "1.0")]
		public unowned string get_subtitle ();
		[Version (since = "1.0")]
		public unowned string get_title ();
		[Version (since = "1.0")]
		public bool get_use_underline ();
		[Version (since = "0.0.6")]
		public void set_enable_expansion (bool enable_expansion);
		public void set_expanded (bool expanded);
		[Version (since = "1.0")]
		public void set_icon_name (string icon_name);
		[Version (since = "0.0.6")]
		public void set_show_enable_switch (bool show_enable_switch);
		[Version (since = "1.0")]
		public void set_subtitle (string subtitle);
		[Version (since = "1.0")]
		public void set_title (string title);
		[Version (since = "1.0")]
		public void set_use_underline (bool use_underline);
		public bool enable_expansion { get; set; }
		public bool expanded { get; set; }
		[Version (since = "1.0")]
		public string icon_name { get; set; }
		public bool show_enable_switch { get; set; }
		[Version (since = "1.0")]
		public string subtitle { get; set; }
		[Version (since = "1.0")]
		public string title { get; set; }
		[Version (since = "1.0")]
		public bool use_underline { get; set; }
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
	public class Keypad : Gtk.Bin, Atk.Implementor, Gtk.Buildable {
		[CCode (has_construct_function = false, type = "GtkWidget*")]
		public Keypad (bool only_digits, bool show_symbols);
		public uint get_column_spacing ();
		public unowned Gtk.Widget get_entry ();
		public uint get_row_spacing ();
		public void set_column_spacing (uint spacing);
		public void set_entry (Gtk.Entry entry);
		public void set_left_action (Gtk.Widget widget);
		public void set_right_action (Gtk.Widget widget);
		public void set_row_spacing (uint spacing);
		public uint column_spacing { get; set; }
		public Gtk.Widget entry { get; set; }
		public Gtk.Widget left_action { set; }
		[NoAccessorMethod]
		public bool only_digits { get; set; }
		public Gtk.Widget right_action { set; }
		public uint row_spacing { get; set; }
		[NoAccessorMethod]
		public bool show_symbols { get; set; }
	}
	[CCode (cheader_filename = "handy.h", type_id = "hdy_leaflet_get_type ()")]
	public class Leaflet : Gtk.Container, Atk.Implementor, Gtk.Buildable, Gtk.Orientable, Hdy.Swipeable {
		[CCode (has_construct_function = false, type = "GtkWidget*")]
		public Leaflet ();
		[Version (since = "1.0")]
		public unowned Gtk.Widget? get_adjacent_child (Hdy.NavigationDirection direction);
		[Version (since = "0.0.12")]
		public bool get_can_swipe_back ();
		[Version (since = "0.0.12")]
		public bool get_can_swipe_forward ();
		public uint get_child_transition_duration ();
		public bool get_child_transition_running ();
		public bool get_folded ();
		public bool get_homogeneous (bool folded, Gtk.Orientation orientation);
		public bool get_interpolate_size ();
		public uint get_mode_transition_duration ();
		[Version (since = "0.0.12")]
		public Hdy.LeafletTransitionType get_transition_type ();
		public unowned Gtk.Widget get_visible_child ();
		public unowned string get_visible_child_name ();
		[Version (since = "1.0")]
		public bool navigate (Hdy.NavigationDirection direction);
		[Version (since = "0.0.12")]
		public void set_can_swipe_back (bool can_swipe_back);
		[Version (since = "0.0.12")]
		public void set_can_swipe_forward (bool can_swipe_forward);
		public void set_child_transition_duration (uint duration);
		public void set_homogeneous (bool folded, Gtk.Orientation orientation, bool homogeneous);
		public void set_interpolate_size (bool interpolate_size);
		public void set_mode_transition_duration (uint duration);
		[Version (since = "0.0.12")]
		public void set_transition_type (Hdy.LeafletTransitionType transition);
		public void set_visible_child (Gtk.Widget visible_child);
		public void set_visible_child_name (string name);
		[Version (since = "0.0.12")]
		public bool can_swipe_back { get; set; }
		[Version (since = "0.0.12")]
		public bool can_swipe_forward { get; set; }
		public uint child_transition_duration { get; set; }
		public bool child_transition_running { get; }
		public bool folded { get; }
		[NoAccessorMethod]
		public bool hhomogeneous_folded { get; set; }
		[NoAccessorMethod]
		public bool hhomogeneous_unfolded { get; set; }
		public bool interpolate_size { get; set; }
		public uint mode_transition_duration { get; set; }
		[Version (since = "0.0.12")]
		public Hdy.LeafletTransitionType transition_type { get; set; }
		[NoAccessorMethod]
		public bool vhomogeneous_folded { get; set; }
		[NoAccessorMethod]
		public bool vhomogeneous_unfolded { get; set; }
		public Gtk.Widget visible_child { get; set; }
		public string visible_child_name { get; set; }
	}
	[CCode (cheader_filename = "handy.h", type_id = "hdy_preferences_group_get_type ()")]
	public class PreferencesGroup : Gtk.Bin, Atk.Implementor, Gtk.Buildable {
		[CCode (has_construct_function = false, type = "GtkWidget*")]
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
	public class PreferencesPage : Gtk.Bin, Atk.Implementor, Gtk.Buildable {
		[CCode (has_construct_function = false, type = "GtkWidget*")]
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
		[CCode (has_construct_function = false, type = "GtkWidget*")]
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
	public class PreferencesWindow : Hdy.Window, Atk.Implementor, Gtk.Buildable {
		[CCode (has_construct_function = false, type = "GtkWidget*")]
		[Version (since = "0.0.10")]
		public PreferencesWindow ();
		[Version (since = "1.0")]
		public bool get_search_enabled ();
		[Version (since = "1.0")]
		public void set_search_enabled (bool search_enabled);
		[Version (since = "1.0")]
		public bool search_enabled { get; set; }
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
		[CCode (has_construct_function = false, type = "GtkWidget*")]
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
	[CCode (cheader_filename = "handy.h", type_id = "hdy_swipe_tracker_get_type ()")]
	public class SwipeTracker : GLib.Object, Gtk.Orientable {
		[CCode (has_construct_function = false)]
		[Version (since = "1.0")]
		public SwipeTracker (Hdy.Swipeable swipeable);
		[Version (since = "1.0")]
		public bool get_allow_mouse_drag ();
		[Version (since = "1.0")]
		public bool get_enabled ();
		[Version (since = "1.0")]
		public bool get_reversed ();
		[Version (since = "1.0")]
		public unowned Hdy.Swipeable get_swipeable ();
		[Version (since = "1.0")]
		public void set_allow_mouse_drag (bool allow_mouse_drag);
		[Version (since = "1.0")]
		public void set_enabled (bool enabled);
		[Version (since = "1.0")]
		public void set_reversed (bool reversed);
		[Version (since = "1.0")]
		public void shift_position (double delta);
		[Version (since = "1.0")]
		public bool allow_mouse_drag { get; set; }
		[Version (since = "1.0")]
		public bool enabled { get; set; }
		[Version (since = "1.0")]
		public bool reversed { get; set; }
		[Version (since = "1.0")]
		public Hdy.Swipeable swipeable { get; construct; }
		[Version (since = "1.0")]
		public signal void begin_swipe (Hdy.NavigationDirection direction, bool direct);
		[Version (since = "1.0")]
		public signal void end_swipe (int64 duration, double to);
		[Version (since = "1.0")]
		public signal void update_swipe (double progress);
	}
	[CCode (cheader_filename = "handy.h", type_id = "hdy_title_bar_get_type ()")]
	public class TitleBar : Gtk.Bin, Atk.Implementor, Gtk.Buildable {
		[CCode (has_construct_function = false, type = "GtkWidget*")]
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
	public class ViewSwitcher : Gtk.Bin, Atk.Implementor, Gtk.Buildable {
		[CCode (has_construct_function = false, type = "GtkWidget*")]
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
		[CCode (has_construct_function = false, type = "GtkWidget*")]
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
	[CCode (cheader_filename = "handy.h", type_id = "hdy_view_switcher_title_get_type ()")]
	public class ViewSwitcherTitle : Gtk.Bin, Atk.Implementor, Gtk.Buildable {
		[CCode (has_construct_function = false)]
		[Version (since = "1.0")]
		public ViewSwitcherTitle ();
		[Version (since = "1.0")]
		public Gtk.IconSize get_icon_size ();
		[Version (since = "1.0")]
		public Hdy.ViewSwitcherPolicy get_policy ();
		[Version (since = "1.0")]
		public unowned Gtk.Stack? get_stack ();
		[Version (since = "1.0")]
		public unowned string? get_subtitle ();
		[Version (since = "1.0")]
		public unowned string? get_title ();
		[Version (since = "1.0")]
		public bool get_title_visible ();
		[Version (since = "1.0")]
		public bool get_view_switcher_enabled ();
		[Version (since = "1.0")]
		public void set_icon_size (Gtk.IconSize icon_size);
		[Version (since = "1.0")]
		public void set_policy (Hdy.ViewSwitcherPolicy policy);
		[Version (since = "1.0")]
		public void set_stack (Gtk.Stack? stack);
		[Version (since = "1.0")]
		public void set_subtitle (string? subtitle);
		[Version (since = "1.0")]
		public void set_title (string? title);
		[Version (since = "1.0")]
		public void set_view_switcher_enabled (bool enabled);
		[Version (since = "1.0")]
		public int icon_size { get; set; }
		[Version (since = "1.0")]
		public Hdy.ViewSwitcherPolicy policy { get; set; }
		[Version (since = "1.0")]
		public Gtk.Stack stack { get; set; }
		[Version (since = "1.0")]
		public string subtitle { get; set; }
		[Version (since = "1.0")]
		public string title { get; set; }
		[Version (since = "1.0")]
		public bool title_visible { get; }
		[Version (since = "1.0")]
		public bool view_switcher_enabled { get; set; }
	}
	[CCode (cheader_filename = "handy.h", type_id = "hdy_window_get_type ()")]
	public class Window : Gtk.Window, Atk.Implementor, Gtk.Buildable {
		[CCode (has_construct_function = false, type = "GtkWidget*")]
		[Version (since = "1.0")]
		public Window ();
	}
	[CCode (cheader_filename = "handy.h", type_id = "hdy_window_handle_get_type ()")]
	public class WindowHandle : Gtk.EventBox, Atk.Implementor, Gtk.Buildable {
		[CCode (has_construct_function = false, type = "GtkWidget*")]
		[Version (since = "1.0")]
		public WindowHandle ();
	}
	[CCode (cheader_filename = "handy.h", type_cname = "HdySwipeableInterface", type_id = "hdy_swipeable_get_type ()")]
	public interface Swipeable : Gtk.Widget {
		[Version (since = "1.0")]
		public void emit_child_switched (uint index, int64 duration);
		[Version (since = "1.0")]
		public abstract double get_cancel_progress ();
		[Version (since = "1.0")]
		public abstract double get_distance ();
		[Version (since = "1.0")]
		public abstract double get_progress ();
		[CCode (array_length_pos = 0.1)]
		[Version (since = "1.0")]
		public abstract double[] get_snap_points ();
		[Version (since = "1.0")]
		public abstract Gdk.Rectangle get_swipe_area ();
		[Version (since = "1.0")]
		public abstract unowned Hdy.SwipeTracker get_swipe_tracker ();
		[Version (since = "1.0")]
		public abstract void switch_child (uint index, int64 duration);
		[Version (since = "1.0")]
		public signal void child_switched (uint index, int64 duration);
	}
	[CCode (cheader_filename = "handy.h", cprefix = "HDY_CAROUSEL_INDICATOR_STYLE_", type_id = "hdy_carousel_indicator_style_get_type ()")]
	public enum CarouselIndicatorStyle {
		NONE,
		DOTS,
		LINES
	}
	[CCode (cheader_filename = "handy.h", cprefix = "HDY_CENTERING_POLICY_", type_id = "hdy_centering_policy_get_type ()")]
	public enum CenteringPolicy {
		LOOSE,
		STRICT
	}
	[CCode (cheader_filename = "handy.h", cprefix = "HDY_DECK_TRANSITION_TYPE_", type_id = "hdy_deck_transition_type_get_type ()")]
	[Version (since = "1.0")]
	public enum DeckTransitionType {
		OVER,
		UNDER,
		SLIDE
	}
	[CCode (cheader_filename = "handy.h", cprefix = "HDY_LEAFLET_TRANSITION_TYPE_", type_id = "hdy_leaflet_transition_type_get_type ()")]
	[Version (since = "0.0.12")]
	public enum LeafletTransitionType {
		OVER,
		UNDER,
		SLIDE
	}
	[CCode (cheader_filename = "handy.h", cprefix = "HDY_NAVIGATION_DIRECTION_", type_id = "hdy_navigation_direction_get_type ()")]
	[Version (since = "1.0")]
	public enum NavigationDirection {
		BACK,
		FORWARD
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
	public delegate Gdk.Pixbuf? AvatarImageLoadFunc (int size);
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
	public static void init ();
}
