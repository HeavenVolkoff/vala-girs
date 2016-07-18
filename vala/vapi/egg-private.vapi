/* egg-private.vapi generated by vapigen-0.34, do not modify. */

[CCode (cprefix = "Egg", gir_namespace = "Egg", gir_version = "1.0", lower_case_cprefix = "egg_")]
namespace Egg {
	[CCode (cheader_filename = "egg-private.h", type_id = "egg_animation_get_type ()")]
	public class Animation : GLib.InitiallyUnowned {
		[CCode (has_construct_function = false)]
		protected Animation ();
		public void add_property (GLib.ParamSpec pspec, GLib.Value value);
		public void start ();
		public void stop ();
		public uint duration { construct; }
		public Gdk.FrameClock frame_clock { construct; }
		public Egg.AnimationMode mode { construct; }
		public GLib.Object target { construct; }
		public signal void tick ();
	}
	[CCode (cheader_filename = "egg-private.h", type_id = "egg_binding_group_get_type ()")]
	public class BindingGroup : GLib.Object {
		[CCode (has_construct_function = false)]
		public BindingGroup ();
		public void bind (string source_property, GLib.Object target, string target_property, GLib.BindingFlags flags);
		public void bind_full (string source_property, GLib.Object target, string target_property, GLib.BindingFlags flags, GLib.BindingTransformFunc? transform_to, owned GLib.BindingTransformFunc? transform_from);
		public void bind_with_closures (string source_property, GLib.Object target, string target_property, GLib.BindingFlags flags, GLib.Closure? transform_to, GLib.Closure? transform_from);
		public unowned GLib.Object? get_source ();
		public void set_source (GLib.Object? source);
		public GLib.Object source { get; set; }
	}
	[CCode (cheader_filename = "egg-private.h", type_id = "egg_box_get_type ()")]
	public class Box : Gtk.Box, Atk.Implementor, Gtk.Buildable, Gtk.Orientable {
		[CCode (has_construct_function = false, type = "GtkWidget*")]
		public Box ();
		public int get_max_width_request ();
		public void set_max_width_request (int max_width_request);
		public int max_width_request { get; set; }
	}
	[CCode (cheader_filename = "egg-private.h", type_id = "egg_centering_bin_get_type ()")]
	public class CenteringBin : Gtk.Bin, Atk.Implementor, Gtk.Buildable {
		[CCode (has_construct_function = false, type = "GtkWidget*")]
		public CenteringBin ();
		[NoAccessorMethod]
		public int max_width_request { get; set; }
	}
	[CCode (cheader_filename = "egg-private.h", type_id = "egg_column_layout_get_type ()")]
	public class ColumnLayout : Gtk.Container, Atk.Implementor, Gtk.Buildable {
		[CCode (has_construct_function = false, type = "GtkWidget*")]
		public ColumnLayout ();
		public int get_column_spacing ();
		public int get_column_width ();
		public int get_row_spacing ();
		public void set_column_spacing (int column_spacing);
		public void set_column_width (int column_width);
		public void set_row_spacing (int row_spacing);
		public int column_spacing { get; set; }
		public int column_width { get; set; }
		public int row_spacing { get; set; }
	}
	[CCode (cheader_filename = "egg-private.h", ref_function = "egg_counter_arena_ref", type_id = "egg_counter_arena_get_type ()", unref_function = "egg_counter_arena_unref")]
	[Compact]
	public class CounterArena {
		[CCode (has_construct_function = false)]
		public CounterArena.for_pid (GLib.Pid pid);
		public void @foreach (Egg.CounterForeachFunc func);
		public static Egg.CounterArena get_default ();
		public Egg.CounterArena @ref ();
		public void register (Egg.Counter counter);
		public void unref ();
	}
	[CCode (cheader_filename = "egg-private.h", type_id = "egg_empty_state_get_type ()")]
	public class EmptyState : Gtk.Bin, Atk.Implementor, Gtk.Buildable {
		[CCode (has_construct_function = false, type = "GtkWidget*")]
		public EmptyState ();
		public unowned string get_icon_name ();
		public unowned string get_subtitle ();
		public unowned string get_title ();
		public void set_icon_name (string icon_name);
		public void set_resource (string resource);
		public void set_subtitle (string title);
		public void set_title (string title);
		public string icon_name { get; set; }
		public string resource { set; }
		public string subtitle { get; set; }
		public string title { get; set; }
	}
	[CCode (cheader_filename = "egg-private.h", type_id = "egg_entry_box_get_type ()")]
	public class EntryBox : Gtk.Box, Atk.Implementor, Gtk.Buildable, Gtk.Orientable {
		[CCode (has_construct_function = false, type = "GtkWidget*")]
		public EntryBox ();
		[NoAccessorMethod]
		public int max_width_chars { get; set; }
	}
	[CCode (cheader_filename = "egg-private.h", type_id = "egg_file_chooser_entry_get_type ()")]
	public class FileChooserEntry : Gtk.Bin, Atk.Implementor, Gtk.Buildable {
		[CCode (has_construct_function = false, type = "GtkWidget*")]
		public FileChooserEntry (string title, Gtk.FileChooserAction action);
		public GLib.File? get_file ();
		public void set_file (GLib.File file);
		[NoAccessorMethod]
		public Gtk.FileChooserAction action { get; set; }
		[NoAccessorMethod]
		public bool create_folders { get; set; }
		[NoAccessorMethod]
		public bool do_overwrite_confirmation { get; set; }
		public GLib.File file { owned get; set; }
		[NoAccessorMethod]
		public Gtk.FileFilter filter { owned get; set; }
		[NoAccessorMethod]
		public bool local_only { get; set; }
		[NoAccessorMethod]
		public int max_width_chars { get; set; }
		[NoAccessorMethod]
		public bool show_hidden { get; set; }
		[NoAccessorMethod]
		public string title { owned get; set; }
	}
	[CCode (cheader_filename = "egg-private.h", ref_function = "egg_heap_ref", type_id = "egg_heap_get_type ()", unref_function = "egg_heap_unref")]
	[Compact]
	public class Heap {
		public weak string data;
		public uint len;
		[CCode (has_construct_function = false)]
		public Heap (uint element_size, [CCode (scope = "async")] GLib.CompareFunc compare_func);
		public bool extract (void* result);
		public bool extract_index (uint index_, void* result);
		public void insert_vals (void* data, uint len);
		public Egg.Heap @ref ();
		public void unref ();
	}
	[CCode (cheader_filename = "egg-private.h", type_id = "egg_list_box_get_type ()")]
	public class ListBox : Gtk.ListBox, Atk.Implementor, Gtk.Buildable {
		[CCode (has_construct_function = false)]
		public ListBox (GLib.Type row_type, string property_name);
		public unowned GLib.ListModel? get_model ();
		public unowned string get_property_name ();
		public GLib.Type get_row_type ();
		public void set_model (GLib.ListModel model);
		public string property_name { get; construct; }
		public GLib.Type row_type { get; construct; }
		public string row_type_name { construct; }
	}
	[CCode (cheader_filename = "egg-private.h", type_id = "egg_menu_manager_get_type ()")]
	public class MenuManager : GLib.Object {
		[CCode (has_construct_function = false)]
		public MenuManager ();
		public uint add_filename (string filename) throws GLib.Error;
		public uint add_resource (string resource) throws GLib.Error;
		public unowned GLib.Menu get_menu_by_id (string menu_id);
		public void remove (uint merge_id);
	}
	[CCode (cheader_filename = "egg-private.h", type_id = "egg_pill_box_get_type ()")]
	public class PillBox : Gtk.EventBox, Atk.Implementor, Gtk.Buildable {
		[CCode (has_construct_function = false, type = "GtkWidget*")]
		public PillBox (string label);
		public unowned string get_label ();
		public void set_label (string label);
		public string label { get; set; }
	}
	[CCode (cheader_filename = "egg-private.h", type_id = "egg_priority_box_get_type ()")]
	public class PriorityBox : Gtk.Box, Atk.Implementor, Gtk.Buildable, Gtk.Orientable {
		[CCode (has_construct_function = false, type = "GtkWidget*")]
		public PriorityBox ();
	}
	[CCode (cheader_filename = "egg-private.h", type_id = "egg_radio_box_get_type ()")]
	public class RadioBox : Gtk.Bin, Atk.Implementor, Gtk.Buildable {
		[CCode (has_construct_function = false, type = "GtkWidget*")]
		public RadioBox ();
		public void add_item (string id, string text);
		public unowned string get_active_id ();
		public void set_active_id (string id);
		public string active_id { get; set; }
		[NoAccessorMethod]
		public bool has_more { get; }
		[NoAccessorMethod]
		public bool show_more { get; set; }
		public signal void changed ();
	}
	[CCode (cheader_filename = "egg-private.h", type_id = "egg_scrolled_window_get_type ()")]
	public class ScrolledWindow : Gtk.ScrolledWindow, Atk.Implementor, Gtk.Buildable {
		[CCode (has_construct_function = false)]
		protected ScrolledWindow ();
	}
	[CCode (cheader_filename = "egg-private.h", type_id = "egg_search_bar_get_type ()")]
	public class SearchBar : Gtk.Bin, Atk.Implementor, Gtk.Buildable {
		[CCode (has_construct_function = false, type = "GtkWidget*")]
		public SearchBar ();
		public unowned Gtk.SearchEntry get_entry ();
		public bool get_search_mode_enabled ();
		public bool get_show_close_button ();
		public void set_search_mode_enabled (bool search_mode_enabled);
		public void set_show_close_button (bool show_close_button);
		public bool search_mode_enabled { get; set; }
		public bool show_close_button { get; set; }
		public signal void activate ();
		public signal void reveal ();
	}
	[CCode (cheader_filename = "egg-private.h", type_id = "egg_settings_flag_action_get_type ()")]
	public class SettingsFlagAction : GLib.Object, GLib.Action {
		[CCode (has_construct_function = false)]
		protected SettingsFlagAction ();
		public static GLib.Action @new (string schema_id, string schema_key, string flag_nick);
		[NoAccessorMethod]
		public string flag_nick { owned get; construct; }
		[NoAccessorMethod]
		public string schema_id { owned get; construct; }
		[NoAccessorMethod]
		public string schema_key { owned get; set; }
	}
	[CCode (cheader_filename = "egg-private.h", type_id = "egg_settings_sandwich_get_type ()")]
	public class SettingsSandwich : GLib.Object {
		[CCode (has_construct_function = false)]
		public SettingsSandwich (string schema_id, string path);
		public void append (GLib.Settings settings);
		public void bind (string key, void* object, string property, GLib.SettingsBindFlags flags);
		public void bind_with_mapping (string key, void* object, string property, GLib.SettingsBindFlags flags, [CCode (delegate_target_pos = 6.1, destroy_notify_pos = 6.2)] owned GLib.SettingsBindGetMapping get_mapping, owned GLib.SettingsBindSetMapping set_mapping);
		public bool get_boolean (string key);
		public GLib.Variant get_default_value (string key);
		public double get_double (string key);
		public int get_int (string key);
		public string get_string (string key);
		public uint get_uint (string key);
		public GLib.Variant get_user_value (string key);
		public GLib.Variant get_value (string key);
		public void set_boolean (string key, bool val);
		public void set_double (string key, double val);
		public void set_int (string key, int val);
		public void set_string (string key, string val);
		public void set_uint (string key, uint val);
		public void set_value (string key, GLib.Variant value);
		public void unbind (string property);
		[NoAccessorMethod]
		public string path { owned get; construct; }
		[NoAccessorMethod]
		public string schema_id { owned get; construct; }
	}
	[CCode (cheader_filename = "egg-private.h", type_id = "egg_signal_group_get_type ()")]
	public class SignalGroup : GLib.Object {
		[CCode (has_construct_function = false)]
		public SignalGroup (GLib.Type target_type);
		public void block ();
		public void connect_data (string detailed_signal, [CCode (delegate_target_pos = 2.33333, destroy_notify_pos = 2.66667)] owned GLib.Callback c_handler, GLib.ConnectFlags flags);
		public void connect_swapped (string detailed_signal, [CCode (scope = "async")] GLib.Callback c_handler);
		public unowned GLib.Object? get_target ();
		public void set_target (GLib.Object? target);
		public void unblock ();
		public GLib.Object target { get; set; }
		[NoAccessorMethod]
		public GLib.Type target_type { get; construct; }
		public signal void bind (GLib.Object instance);
		public signal void unbind ();
	}
	[CCode (cheader_filename = "egg-private.h", type_id = "egg_simple_label_get_type ()")]
	public class SimpleLabel : Gtk.Widget, Atk.Implementor, Gtk.Buildable {
		[CCode (has_construct_function = false, type = "GtkWidget*")]
		public SimpleLabel (string label);
		public unowned string get_label ();
		public int get_width_chars ();
		public float get_xalign ();
		public void set_label (string label);
		public void set_width_chars (int width_chars);
		public void set_xalign (float xalign);
		public string label { get; set; }
		public int width_chars { get; set; }
		public float xalign { get; set; }
	}
	[CCode (cheader_filename = "egg-private.h", type_id = "egg_simple_popover_get_type ()")]
	public class SimplePopover : Gtk.Popover, Atk.Implementor, Gtk.Buildable {
		[CCode (has_construct_function = false, type = "GtkWidget*")]
		public SimplePopover ();
		public unowned string get_button_text ();
		public unowned string get_message ();
		public bool get_ready ();
		public unowned string get_text ();
		public unowned string get_title ();
		public void set_button_text (string button_text);
		public void set_message (string message);
		public void set_ready (bool ready);
		public void set_text (string text);
		public void set_title (string title);
		public string button_text { get; set; }
		public string message { get; set; }
		public bool ready { get; set; }
		public string text { get; set; }
		public string title { get; set; }
		public virtual signal void activate (string text);
		public virtual signal void changed ();
		public virtual signal bool insert_text (uint position, string chars, uint n_chars);
	}
	[CCode (cheader_filename = "egg-private.h", type_id = "egg_slider_get_type ()")]
	public class Slider : Gtk.Container, Atk.Implementor, Gtk.Buildable {
		[CCode (has_construct_function = false, type = "GtkWidget*")]
		public Slider ();
		public void add_slider (Gtk.Widget widget, Egg.SliderPosition position);
		public Egg.SliderPosition get_position ();
		public void set_position (Egg.SliderPosition position);
		public Egg.SliderPosition position { get; set; }
	}
	[CCode (cheader_filename = "egg-private.h", type_id = "egg_state_machine_get_type ()")]
	public class StateMachine : GLib.Object, Gtk.Buildable {
		[CCode (has_construct_function = false)]
		public StateMachine ();
		public GLib.Action action_new (string name);
		public void add_binding (string state, void* source_object, string source_property, void* target_object, string target_property, GLib.BindingFlags flags);
		public void add_propertyv (string state, void* object, string property, GLib.Value value);
		public void add_style (string state, Gtk.Widget widget, string style);
		public GLib.Action create_action (string name);
		public unowned string get_state ();
		public void set_state (string state);
		public string state { get; set; }
	}
	[CCode (cheader_filename = "egg-private.h", type_id = "egg_state_machine_action_get_type ()")]
	public class StateMachineAction : GLib.Object, GLib.Action {
		[CCode (has_construct_function = false)]
		protected StateMachineAction ();
		[NoAccessorMethod]
		public Egg.StateMachine state_machine { owned get; construct; }
	}
	[CCode (cheader_filename = "egg-private.h", type_id = "egg_task_cache_get_type ()")]
	public class TaskCache : GLib.Object {
		[CCode (has_construct_function = false)]
		protected TaskCache ();
		public bool evict (void* key);
		public async void* get_async (void* key, bool force_update, GLib.Cancellable? cancellable) throws GLib.Error;
		public unowned GLib.Object? peek (void* key);
		public void set_name (string name);
		public void* key_copy_func { construct; }
		public void* key_destroy_func { construct; }
		public void* key_equal_func { construct; }
		public void* key_hash_func { construct; }
		public void* populate_callback { construct; }
		public void* populate_callback_data { construct; }
		public void* populate_callback_data_destroy { construct; }
		public int64 time_to_live { construct; }
		public void* value_copy_func { construct; }
		public void* value_destroy_func { construct; }
	}
	[CCode (cheader_filename = "egg-private.h", has_type_id = false)]
	public struct Counter {
		public Egg.CounterValue values;
		public weak string category;
		public weak string name;
		public weak string description;
		public int64 @get ();
		public void reset ();
	}
	[CCode (cheader_filename = "egg-private.h", has_type_id = false)]
	public struct CounterValue {
		public int64 value;
		[CCode (array_length = false)]
		public weak int64 padding[7];
	}
	[CCode (cheader_filename = "egg-private.h", cprefix = "EGG_ANIMATION_", type_id = "egg_animation_mode_get_type ()")]
	public enum AnimationMode {
		LINEAR,
		EASE_IN_QUAD,
		EASE_IN_OUT_QUAD,
		EASE_OUT_QUAD,
		EASE_IN_CUBIC,
		EASE_OUT_CUBIC,
		EASE_IN_OUT_CUBIC
	}
	[CCode (cheader_filename = "egg-private.h", cprefix = "EGG_SLIDER_", type_id = "egg_slider_position_get_type ()")]
	public enum SliderPosition {
		NONE,
		TOP,
		RIGHT,
		BOTTOM,
		LEFT
	}
	[CCode (cheader_filename = "egg-private.h", instance_pos = 1.9)]
	public delegate void CounterForeachFunc (Egg.Counter counter);
	[CCode (cheader_filename = "egg-private.h", instance_pos = 3.9)]
	public delegate void TaskCacheCallback (Egg.TaskCache self, void* key, GLib.Task task);
	[CCode (cheader_filename = "egg-private.h", cname = "EGG_COUNTER_REQUIRES_ATOMIC")]
	public const int COUNTER_REQUIRES_ATOMIC;
	[CCode (cheader_filename = "egg-private.h")]
	public static string date_time_format_for_display (GLib.DateTime self);
	[CCode (cheader_filename = "egg-private.h")]
	public static uint frame_source_add (uint frames_per_sec, GLib.SourceFunc callback);
	[CCode (cheader_filename = "egg-private.h")]
	public static uint get_current_cpu_call ();
	[CCode (cheader_filename = "egg-private.h")]
	public static void widget_action_group_attach (void* instance, string source_view);
	[CCode (cheader_filename = "egg-private.h")]
	public static GLib.ActionGroup widget_action_group_new (Gtk.Widget widget);
}
