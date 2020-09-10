/* libhandy-1.vapi generated by vapigen, do not modify. */

[CCode (cprefix = "Hdy", gir_namespace = "Handy", gir_version = "1", lower_case_cprefix = "hdy_")]
namespace Hdy {
	[CCode (cheader_filename = "handy.h", type_id = "hdy_action_row_get_type ()")]
	[Version (since = "0.0.6")]
	public class ActionRow : Hdy.PreferencesRow, Atk.Implementor, Gtk.Actionable, Gtk.Buildable {
		[CCode (has_construct_function = false, type = "GtkWidget*")]
		public ActionRow ();
		public virtual void activate ();
		public void add_prefix (Gtk.Widget widget);
		[Version (since = "0.0.7")]
		public unowned Gtk.Widget? get_activatable_widget ();
		public unowned string get_icon_name ();
		public unowned string? get_subtitle ();
		public bool get_use_underline ();
		[Version (since = "0.0.7")]
		public void set_activatable_widget (Gtk.Widget? widget);
		public void set_icon_name (string icon_name);
		public void set_subtitle (string? subtitle);
		public void set_use_underline (bool use_underline);
		[Version (since = "0.0.7")]
		public Gtk.Widget activatable_widget { get; set; }
		public string icon_name { get; set; }
		public string subtitle { get; set; }
		public bool use_underline { get; set; }
		[Version (since = "1.0")]
		public signal void activated ();
	}
	[CCode (cheader_filename = "handy.h", type_id = "hdy_application_window_get_type ()")]
	[Version (since = "1.0")]
	public class ApplicationWindow : Gtk.ApplicationWindow, Atk.Implementor, GLib.ActionGroup, GLib.ActionMap, Gtk.Buildable {
		[CCode (has_construct_function = false, type = "GtkWidget*")]
		public ApplicationWindow ();
	}
	[CCode (cheader_filename = "handy.h", type_id = "hdy_avatar_get_type ()")]
	public class Avatar : Gtk.DrawingArea, Atk.Implementor, Gtk.Buildable {
		[CCode (has_construct_function = false, type = "GtkWidget*")]
		public Avatar (int size, string? text, bool show_initials);
		[Version (since = "1.0")]
		public unowned string? get_icon_name ();
		public bool get_show_initials ();
		public int get_size ();
		public unowned string? get_text ();
		[Version (since = "1.0")]
		public void set_icon_name (string? icon_name);
		public void set_image_load_func (owned Hdy.AvatarImageLoadFunc? load_image);
		public void set_show_initials (bool show_initials);
		public void set_size (int size);
		public void set_text (string? text);
		[Version (since = "1.0")]
		public string icon_name { get; set; }
		public bool show_initials { get; set; }
		public int size { get; set; }
		public string text { get; set; }
	}
	[CCode (cheader_filename = "handy.h", type_id = "hdy_carousel_get_type ()")]
	[Version (since = "1.0")]
	public class Carousel : Gtk.EventBox, Atk.Implementor, Gtk.Buildable, Gtk.Orientable, Hdy.Swipeable {
		[CCode (has_construct_function = false, type = "GtkWidget*")]
		public Carousel ();
		public bool get_allow_mouse_drag ();
		public uint get_animation_duration ();
		public bool get_interactive ();
		public uint get_n_pages ();
		public double get_position ();
		public uint get_reveal_duration ();
		public uint get_spacing ();
		public void insert (Gtk.Widget child, int position);
		public void prepend (Gtk.Widget child);
		public void reorder (Gtk.Widget child, int position);
		public void scroll_to (Gtk.Widget widget);
		public void scroll_to_full (Gtk.Widget widget, int64 duration);
		public void set_allow_mouse_drag (bool allow_mouse_drag);
		public void set_animation_duration (uint duration);
		public void set_interactive (bool interactive);
		public void set_reveal_duration (uint reveal_duration);
		public void set_spacing (uint spacing);
		public bool allow_mouse_drag { get; set; }
		public uint animation_duration { get; set; }
		public bool interactive { get; set; }
		public uint n_pages { get; }
		public double position { get; }
		public uint reveal_duration { get; set; }
		public uint spacing { get; set; }
		public signal void page_changed (uint index);
	}
	[CCode (cheader_filename = "handy.h", type_id = "hdy_carousel_indicator_dots_get_type ()")]
	[Version (since = "1.0")]
	public class CarouselIndicatorDots : Gtk.DrawingArea, Atk.Implementor, Gtk.Buildable, Gtk.Orientable {
		[CCode (has_construct_function = false, type = "GtkWidget*")]
		public CarouselIndicatorDots ();
		public unowned Hdy.Carousel? get_carousel ();
		public void set_carousel (Hdy.Carousel? carousel);
		public Hdy.Carousel carousel { get; set; }
	}
	[CCode (cheader_filename = "handy.h", type_id = "hdy_carousel_indicator_lines_get_type ()")]
	[Version (since = "1.0")]
	public class CarouselIndicatorLines : Gtk.DrawingArea, Atk.Implementor, Gtk.Buildable, Gtk.Orientable {
		[CCode (has_construct_function = false, type = "GtkWidget*")]
		public CarouselIndicatorLines ();
		public unowned Hdy.Carousel? get_carousel ();
		public void set_carousel (Hdy.Carousel? carousel);
		public Hdy.Carousel carousel { get; set; }
	}
	[CCode (cheader_filename = "handy.h", type_id = "hdy_clamp_get_type ()")]
	[Version (since = "1.0")]
	public class Clamp : Gtk.Bin, Atk.Implementor, Gtk.Buildable, Gtk.Orientable {
		[CCode (has_construct_function = false, type = "GtkWidget*")]
		public Clamp ();
		public int get_maximum_size ();
		public int get_tightening_threshold ();
		public void set_maximum_size (int maximum_size);
		public void set_tightening_threshold (int tightening_threshold);
		public int maximum_size { get; set; }
		public int tightening_threshold { get; set; }
	}
	[CCode (cheader_filename = "handy.h", type_id = "hdy_combo_row_get_type ()")]
	[Version (since = "0.0.6")]
	public class ComboRow : Hdy.ActionRow, Atk.Implementor, Gtk.Actionable, Gtk.Buildable {
		[CCode (has_construct_function = false, type = "GtkWidget*")]
		public ComboRow ();
		public void bind_model (GLib.ListModel? model, Gtk.ListBoxCreateWidgetFunc? create_list_widget_func, owned Gtk.ListBoxCreateWidgetFunc? create_current_widget_func);
		public void bind_name_model (GLib.ListModel? model, owned Hdy.ComboRowGetNameFunc? get_name_func);
		public unowned GLib.ListModel? get_model ();
		[Version (since = "0.0.7")]
		public int get_selected_index ();
		[Version (since = "0.0.10")]
		public bool get_use_subtitle ();
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
	[Version (since = "1.0")]
	public class Deck : Gtk.Container, Atk.Implementor, Gtk.Buildable, Gtk.Orientable, Hdy.Swipeable {
		[CCode (has_construct_function = false, type = "GtkWidget*")]
		public Deck ();
		public unowned Gtk.Widget? get_adjacent_child (Hdy.NavigationDirection direction);
		public bool get_can_swipe_back ();
		public bool get_can_swipe_forward ();
		public unowned Gtk.Widget? get_child_by_name (string name);
		public bool get_homogeneous (Gtk.Orientation orientation);
		public bool get_interpolate_size ();
		public uint get_transition_duration ();
		public bool get_transition_running ();
		public Hdy.DeckTransitionType get_transition_type ();
		public unowned Gtk.Widget get_visible_child ();
		public unowned string get_visible_child_name ();
		public bool navigate (Hdy.NavigationDirection direction);
		public void set_can_swipe_back (bool can_swipe_back);
		public void set_can_swipe_forward (bool can_swipe_forward);
		public void set_homogeneous (Gtk.Orientation orientation, bool homogeneous);
		public void set_interpolate_size (bool interpolate_size);
		public void set_transition_duration (uint duration);
		public void set_transition_type (Hdy.DeckTransitionType transition);
		public void set_visible_child (Gtk.Widget visible_child);
		public void set_visible_child_name (string name);
		public bool can_swipe_back { get; set; }
		public bool can_swipe_forward { get; set; }
		[NoAccessorMethod]
		public bool hhomogeneous { get; set; }
		public bool interpolate_size { get; set; }
		public uint transition_duration { get; set; }
		public bool transition_running { get; }
		public Hdy.DeckTransitionType transition_type { get; set; }
		[NoAccessorMethod]
		public bool vhomogeneous { get; set; }
		public Gtk.Widget visible_child { get; set; }
		public string visible_child_name { get; set; }
	}
	[CCode (cheader_filename = "handy.h", type_id = "hdy_enum_value_object_get_type ()")]
	[Version (since = "0.0.6")]
	public class EnumValueObject : GLib.Object {
		[CCode (has_construct_function = false)]
		public EnumValueObject (GLib.EnumValue enum_value);
		public unowned string get_name ();
		public unowned string get_nick ();
		public int get_value ();
	}
	[CCode (cheader_filename = "handy.h", type_id = "hdy_expander_row_get_type ()")]
	[Version (since = "0.0.6")]
	public class ExpanderRow : Hdy.PreferencesRow, Atk.Implementor, Gtk.Actionable, Gtk.Buildable {
		[CCode (has_construct_function = false, type = "GtkWidget*")]
		public ExpanderRow ();
		[Version (since = "1.0")]
		public void add_action (Gtk.Widget widget);
		[Version (since = "1.0")]
		public void add_prefix (Gtk.Widget widget);
		public bool get_enable_expansion ();
		public bool get_expanded ();
		[Version (since = "1.0")]
		public unowned string get_icon_name ();
		public bool get_show_enable_switch ();
		[Version (since = "1.0")]
		public unowned string? get_subtitle ();
		[Version (since = "1.0")]
		public bool get_use_underline ();
		public void set_enable_expansion (bool enable_expansion);
		public void set_expanded (bool expanded);
		[Version (since = "1.0")]
		public void set_icon_name (string icon_name);
		public void set_show_enable_switch (bool show_enable_switch);
		[Version (since = "1.0")]
		public void set_subtitle (string? subtitle);
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
	[Version (since = "0.0.4")]
	public class HeaderGroup : GLib.Object, Gtk.Buildable {
		[CCode (has_construct_function = false)]
		public HeaderGroup ();
		[Version (since = "1.0")]
		public void add_gtk_header_bar (Gtk.HeaderBar header_bar);
		[Version (since = "1.0")]
		public void add_header_bar (Hdy.HeaderBar header_bar);
		[Version (since = "1.0")]
		public void add_header_group (Hdy.HeaderGroup header_group);
		[Version (since = "1.0")]
		public unowned GLib.SList<Hdy.HeaderGroupChild> get_children ();
		[Version (since = "1.0")]
		public bool get_decorate_all ();
		[Version (since = "1.0")]
		public void remove_child (Hdy.HeaderGroupChild child);
		[Version (since = "1.0")]
		public void remove_gtk_header_bar (Gtk.HeaderBar header_bar);
		[Version (since = "1.0")]
		public void remove_header_bar (Hdy.HeaderBar header_bar);
		[Version (since = "1.0")]
		public void remove_header_group (Hdy.HeaderGroup header_group);
		[Version (since = "1.0")]
		public void set_decorate_all (bool decorate_all);
		[Version (since = "1.0")]
		public bool decorate_all { get; set; }
		[Version (since = "1.0")]
		public signal void update_decoration_layouts ();
	}
	[CCode (cheader_filename = "handy.h", type_id = "hdy_header_group_child_get_type ()")]
	public class HeaderGroupChild : GLib.Object {
		[CCode (has_construct_function = false)]
		protected HeaderGroupChild ();
		[Version (since = "1.0")]
		public Hdy.HeaderGroupChildType get_child_type ();
		[Version (since = "1.0")]
		public unowned Gtk.HeaderBar get_gtk_header_bar ();
		[Version (since = "1.0")]
		public unowned Hdy.HeaderBar get_header_bar ();
		[Version (since = "1.0")]
		public unowned Hdy.HeaderGroup get_header_group ();
	}
	[CCode (cheader_filename = "handy.h", type_id = "hdy_keypad_get_type ()")]
	[Version (since = "0.0.12")]
	public class Keypad : Gtk.Bin, Atk.Implementor, Gtk.Buildable {
		[CCode (has_construct_function = false, type = "GtkWidget*")]
		public Keypad (bool symbols_visible, bool letters_visible);
		[Version (since = "1.0")]
		public uint get_column_spacing ();
		[Version (since = "1.0")]
		public unowned Gtk.Widget? get_end_action ();
		[Version (since = "1.0")]
		public unowned Gtk.Entry get_entry ();
		[Version (since = "1.0")]
		public bool get_letters_visible ();
		[Version (since = "1.0")]
		public uint get_row_spacing ();
		[Version (since = "1.0")]
		public unowned Gtk.Widget? get_start_action ();
		[Version (since = "1.0")]
		public bool get_symbols_visible ();
		[Version (since = "1.0")]
		public void set_column_spacing (uint spacing);
		[Version (since = "1.0")]
		public void set_end_action (Gtk.Widget? end_action);
		public void set_entry (Gtk.Entry? entry);
		[Version (since = "1.0")]
		public void set_letters_visible (bool letters_visible);
		[Version (since = "1.0")]
		public void set_row_spacing (uint spacing);
		[Version (since = "1.0")]
		public void set_start_action (Gtk.Widget? start_action);
		[Version (since = "1.0")]
		public void set_symbols_visible (bool symbols_visible);
		[Version (since = "1.0")]
		public uint column_spacing { get; set; }
		[Version (since = "1.0")]
		public Gtk.Widget end_action { get; set; }
		[Version (since = "1.0")]
		public Gtk.Entry entry { get; set; }
		[Version (since = "1.0")]
		public bool letters_visible { get; set; }
		[Version (since = "1.0")]
		public uint row_spacing { get; set; }
		[Version (since = "1.0")]
		public Gtk.Widget start_action { get; set; }
		[Version (since = "1.0")]
		public bool symbols_visible { get; set; }
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
		[Version (since = "1.0")]
		public unowned Gtk.Widget? get_child_by_name (string name);
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
	[Version (since = "0.0.10")]
	public class PreferencesGroup : Gtk.Bin, Atk.Implementor, Gtk.Buildable {
		[CCode (has_construct_function = false, type = "GtkWidget*")]
		public PreferencesGroup ();
		public unowned string get_description ();
		public unowned string get_title ();
		public void set_description (string description);
		public void set_title (string title);
		public string description { get; set; }
		public string title { get; set; }
	}
	[CCode (cheader_filename = "handy.h", type_id = "hdy_preferences_page_get_type ()")]
	[Version (since = "0.0.10")]
	public class PreferencesPage : Gtk.Bin, Atk.Implementor, Gtk.Buildable {
		[CCode (has_construct_function = false, type = "GtkWidget*")]
		public PreferencesPage ();
		public unowned string? get_icon_name ();
		public unowned string? get_title ();
		public void set_icon_name (string? icon_name);
		public void set_title (string? title);
		public string icon_name { get; set; }
		public string title { get; set; }
	}
	[CCode (cheader_filename = "handy.h", type_id = "hdy_preferences_row_get_type ()")]
	[Version (since = "0.0.10")]
	public class PreferencesRow : Gtk.ListBoxRow, Atk.Implementor, Gtk.Actionable, Gtk.Buildable {
		[CCode (has_construct_function = false, type = "GtkWidget*")]
		public PreferencesRow ();
		public unowned string? get_title ();
		public bool get_use_underline ();
		public void set_title (string? title);
		public void set_use_underline (bool use_underline);
		public string title { get; set; }
		public bool use_underline { get; set; }
	}
	[CCode (cheader_filename = "handy.h", type_id = "hdy_preferences_window_get_type ()")]
	[Version (since = "0.0.10")]
	public class PreferencesWindow : Hdy.Window, Atk.Implementor, Gtk.Buildable {
		[CCode (has_construct_function = false, type = "GtkWidget*")]
		public PreferencesWindow ();
		[Version (since = "1.0")]
		public void close_subpage ();
		[Version (since = "1.0")]
		public bool get_can_swipe_back ();
		[Version (since = "1.0")]
		public bool get_search_enabled ();
		[Version (since = "1.0")]
		public void present_subpage (Gtk.Widget subpage);
		[Version (since = "1.0")]
		public void set_can_swipe_back (bool can_swipe_back);
		[Version (since = "1.0")]
		public void set_search_enabled (bool search_enabled);
		[Version (since = "1.0")]
		public bool can_swipe_back { get; set; }
		[Version (since = "1.0")]
		public bool search_enabled { get; set; }
	}
	[CCode (cheader_filename = "handy.h", type_id = "hdy_search_bar_get_type ()")]
	[Version (since = "0.0.6")]
	public class SearchBar : Gtk.Bin, Atk.Implementor, Gtk.Buildable {
		[CCode (has_construct_function = false, type = "GtkWidget*")]
		public SearchBar ();
		public void connect_entry (Gtk.Entry entry);
		public bool get_search_mode ();
		public bool get_show_close_button ();
		public bool handle_event (Gdk.Event event);
		public void set_search_mode (bool search_mode);
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
		[Version (since = "1.0")]
		public float get_xalign ();
		[Version (since = "1.0")]
		public float get_yalign ();
		public void set_child_enabled (Gtk.Widget child, bool enabled);
		[Version (since = "0.0.10")]
		public void set_homogeneous (bool homogeneous);
		[Version (since = "0.0.10")]
		public void set_interpolate_size (bool interpolate_size);
		public void set_transition_duration (uint duration);
		public void set_transition_type (Hdy.SqueezerTransitionType transition);
		[Version (since = "1.0")]
		public void set_xalign (float xalign);
		[Version (since = "1.0")]
		public void set_yalign (float yalign);
		public bool homogeneous { get; set; }
		public bool interpolate_size { get; set; }
		public uint transition_duration { get; set; }
		public bool transition_running { get; }
		public Hdy.SqueezerTransitionType transition_type { get; set; }
		public Gtk.Widget visible_child { get; }
		[Version (since = "1.0")]
		public float xalign { get; set; }
		[Version (since = "1.0")]
		public float yalign { get; set; }
	}
	[CCode (cheader_filename = "handy.h", type_id = "hdy_swipe_group_get_type ()")]
	[Version (since = "0.0.12")]
	public class SwipeGroup : GLib.Object, Gtk.Buildable {
		[CCode (has_construct_function = false)]
		public SwipeGroup ();
		public void add_swipeable (Hdy.Swipeable swipeable);
		public unowned GLib.SList<Hdy.Swipeable> get_swipeables ();
		public void remove_swipeable (Hdy.Swipeable swipeable);
	}
	[CCode (cheader_filename = "handy.h", type_id = "hdy_swipe_tracker_get_type ()")]
	[Version (since = "1.0")]
	public class SwipeTracker : GLib.Object, Gtk.Orientable {
		[CCode (has_construct_function = false)]
		public SwipeTracker (Hdy.Swipeable swipeable);
		public bool get_allow_mouse_drag ();
		public bool get_enabled ();
		public bool get_reversed ();
		public unowned Hdy.Swipeable get_swipeable ();
		public void set_allow_mouse_drag (bool allow_mouse_drag);
		public void set_enabled (bool enabled);
		public void set_reversed (bool reversed);
		public void shift_position (double delta);
		public bool allow_mouse_drag { get; set; }
		public bool enabled { get; set; }
		public bool reversed { get; set; }
		public Hdy.Swipeable swipeable { get; construct; }
		public signal void begin_swipe (Hdy.NavigationDirection direction, bool direct);
		public signal void end_swipe (int64 duration, double to);
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
	[Version (since = "0.0.8")]
	public class ValueObject : GLib.Object {
		[CCode (has_construct_function = false)]
		public ValueObject (GLib.Value value);
		public void copy_value (GLib.Value dest);
		public string dup_string ();
		public unowned string get_string ();
		public unowned GLib.Value? get_value ();
		public GLib.Value value { get; construct; }
	}
	[CCode (cheader_filename = "handy.h", type_id = "hdy_view_switcher_get_type ()")]
	[Version (since = "0.0.10")]
	public class ViewSwitcher : Gtk.Bin, Atk.Implementor, Gtk.Buildable {
		[CCode (has_construct_function = false, type = "GtkWidget*")]
		public ViewSwitcher ();
		public Pango.EllipsizeMode get_narrow_ellipsize ();
		public Hdy.ViewSwitcherPolicy get_policy ();
		public unowned Gtk.Stack? get_stack ();
		public void set_narrow_ellipsize (Pango.EllipsizeMode mode);
		public void set_policy (Hdy.ViewSwitcherPolicy policy);
		public void set_stack (Gtk.Stack? stack);
		public Pango.EllipsizeMode narrow_ellipsize { get; set; }
		public Hdy.ViewSwitcherPolicy policy { get; set; }
		public Gtk.Stack stack { get; set; }
	}
	[CCode (cheader_filename = "handy.h", type_id = "hdy_view_switcher_bar_get_type ()")]
	[Version (since = "0.0.10")]
	public class ViewSwitcherBar : Gtk.Bin, Atk.Implementor, Gtk.Buildable {
		[CCode (has_construct_function = false, type = "GtkWidget*")]
		public ViewSwitcherBar ();
		public Hdy.ViewSwitcherPolicy get_policy ();
		public bool get_reveal ();
		public unowned Gtk.Stack? get_stack ();
		public void set_policy (Hdy.ViewSwitcherPolicy policy);
		public void set_reveal (bool reveal);
		public void set_stack (Gtk.Stack? stack);
		public Hdy.ViewSwitcherPolicy policy { get; set; }
		public bool reveal { get; set; }
		public Gtk.Stack stack { get; set; }
	}
	[CCode (cheader_filename = "handy.h", type_id = "hdy_view_switcher_title_get_type ()")]
	[Version (since = "1.0")]
	public class ViewSwitcherTitle : Gtk.Bin, Atk.Implementor, Gtk.Buildable {
		[CCode (has_construct_function = false)]
		public ViewSwitcherTitle ();
		public Hdy.ViewSwitcherPolicy get_policy ();
		public unowned Gtk.Stack? get_stack ();
		public unowned string? get_subtitle ();
		public unowned string? get_title ();
		public bool get_title_visible ();
		public bool get_view_switcher_enabled ();
		public void set_policy (Hdy.ViewSwitcherPolicy policy);
		public void set_stack (Gtk.Stack? stack);
		public void set_subtitle (string? subtitle);
		public void set_title (string? title);
		public void set_view_switcher_enabled (bool enabled);
		public Hdy.ViewSwitcherPolicy policy { get; set; }
		public Gtk.Stack stack { get; set; }
		public string subtitle { get; set; }
		public string title { get; set; }
		public bool title_visible { get; }
		public bool view_switcher_enabled { get; set; }
	}
	[CCode (cheader_filename = "handy.h", type_id = "hdy_window_get_type ()")]
	[Version (since = "1.0")]
	public class Window : Gtk.Window, Atk.Implementor, Gtk.Buildable {
		[CCode (has_construct_function = false, type = "GtkWidget*")]
		public Window ();
	}
	[CCode (cheader_filename = "handy.h", type_id = "hdy_window_handle_get_type ()")]
	[Version (since = "1.0")]
	public class WindowHandle : Gtk.EventBox, Atk.Implementor, Gtk.Buildable {
		[CCode (has_construct_function = false, type = "GtkWidget*")]
		public WindowHandle ();
	}
	[CCode (cheader_filename = "handy.h", type_cname = "HdySwipeableInterface", type_id = "hdy_swipeable_get_type ()")]
	[Version (since = "0.0.12")]
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
		public abstract Gdk.Rectangle get_swipe_area (Hdy.NavigationDirection navigation_direction, bool is_drag);
		[Version (since = "1.0")]
		public abstract unowned Hdy.SwipeTracker get_swipe_tracker ();
		[Version (since = "1.0")]
		public abstract void switch_child (uint index, int64 duration);
		[Version (since = "1.0")]
		public signal void child_switched (uint index, int64 duration);
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
	[CCode (cheader_filename = "handy.h", cprefix = "HDY_HEADER_GROUP_CHILD_TYPE_", type_id = "hdy_header_group_child_type_get_type ()")]
	[Version (since = "1.0")]
	public enum HeaderGroupChildType {
		HEADER_BAR,
		GTK_HEADER_BAR,
		HEADER_GROUP
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
