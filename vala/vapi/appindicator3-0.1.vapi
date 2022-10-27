/* appindicator3-0.1.vapi generated by vapigen, do not modify. */

[CCode (cprefix = "App", gir_namespace = "AppIndicator3", gir_version = "0.1", lower_case_cprefix = "app_")]
namespace AppIndicator {
	[CCode (cheader_filename = "libappindicator/app-indicator.h", type_id = "app_indicator_get_type ()")]
	public class Indicator : GLib.Object {
		[CCode (has_construct_function = false)]
		public Indicator (string id, string icon_name, AppIndicator.IndicatorCategory category);
		public void build_menu_from_desktop (string desktop_file, string desktop_profile);
		public unowned string get_attention_icon ();
		public unowned string get_attention_icon_desc ();
		public AppIndicator.IndicatorCategory get_category ();
		public unowned string get_icon ();
		public unowned string get_icon_desc ();
		public unowned string get_icon_theme_path ();
		public unowned string get_id ();
		public unowned string get_label ();
		public unowned string get_label_guide ();
		public unowned Gtk.Menu get_menu ();
		public uint32 get_ordering_index ();
		public unowned Gtk.Widget get_secondary_activate_target ();
		public AppIndicator.IndicatorStatus get_status ();
		[Version (since = "0.5")]
		public unowned string get_title ();
		[Version (deprecated = true)]
		public void set_attention_icon (string icon_name);
		public void set_attention_icon_full (string icon_name, string icon_desc);
		[Version (deprecated = true)]
		public void set_icon (string icon_name);
		public void set_icon_full (string icon_name, string icon_desc);
		public void set_icon_theme_path (string icon_theme_path);
		public void set_label (string label, string guide);
		public void set_menu (Gtk.Menu? menu);
		public void set_ordering_index (uint32 ordering_index);
		public void set_secondary_activate_target (Gtk.Widget? menuitem);
		public void set_status (AppIndicator.IndicatorStatus status);
		[Version (since = "0.5")]
		public void set_title (string? title);
		[NoWrapper]
		public virtual void unfallback (Gtk.StatusIcon status_icon);
		[CCode (has_construct_function = false)]
		public Indicator.with_path (string id, string icon_name, AppIndicator.IndicatorCategory category, string icon_theme_path);
		[NoAccessorMethod]
		public string attention_icon_desc { owned get; set; }
		[NoAccessorMethod]
		public string attention_icon_name { owned get; set; }
		public string category { get; construct; }
		[NoAccessorMethod]
		public bool connected { get; }
		[NoAccessorMethod]
		public string icon_desc { owned get; set; }
		[NoAccessorMethod]
		public string icon_name { owned get; set; }
		public string icon_theme_path { get; set construct; }
		public string id { get; construct; }
		[NoAccessorMethod]
		public string label { owned get; set; }
		[NoAccessorMethod]
		public string label_guide { owned get; set; }
		public uint ordering_index { get; set; }
		public string status { get; set; }
		public string title { get; set; }
		public virtual signal void connection_changed (bool connected);
		public virtual signal void new_attention_icon ();
		public virtual signal void new_icon ();
		public virtual signal void new_icon_theme_path (string icon_theme_path);
		public virtual signal void new_label (string label, string guide);
		public virtual signal void new_status (string status);
		public virtual signal void scroll_event (int delta, Gdk.ScrollDirection direction);
	}
	[CCode (cheader_filename = "libappindicator/app-indicator.h", cprefix = "APP_INDICATOR_CATEGORY_", has_type_id = false)]
	public enum IndicatorCategory {
		APPLICATION_STATUS,
		COMMUNICATIONS,
		SYSTEM_SERVICES,
		HARDWARE,
		OTHER
	}
	[CCode (cheader_filename = "libappindicator/app-indicator.h", cprefix = "APP_INDICATOR_STATUS_", has_type_id = false)]
	public enum IndicatorStatus {
		PASSIVE,
		ACTIVE,
		ATTENTION
	}
	[CCode (cheader_filename = "libappindicator/app-indicator.h", cname = "APP_INDICATOR_SIGNAL_CONNECTION_CHANGED")]
	public const string INDICATOR_SIGNAL_CONNECTION_CHANGED;
	[CCode (cheader_filename = "libappindicator/app-indicator.h", cname = "APP_INDICATOR_SIGNAL_NEW_ATTENTION_ICON")]
	public const string INDICATOR_SIGNAL_NEW_ATTENTION_ICON;
	[CCode (cheader_filename = "libappindicator/app-indicator.h", cname = "APP_INDICATOR_SIGNAL_NEW_ICON")]
	public const string INDICATOR_SIGNAL_NEW_ICON;
	[CCode (cheader_filename = "libappindicator/app-indicator.h", cname = "APP_INDICATOR_SIGNAL_NEW_ICON_THEME_PATH")]
	public const string INDICATOR_SIGNAL_NEW_ICON_THEME_PATH;
	[CCode (cheader_filename = "libappindicator/app-indicator.h", cname = "APP_INDICATOR_SIGNAL_NEW_LABEL")]
	public const string INDICATOR_SIGNAL_NEW_LABEL;
	[CCode (cheader_filename = "libappindicator/app-indicator.h", cname = "APP_INDICATOR_SIGNAL_NEW_STATUS")]
	public const string INDICATOR_SIGNAL_NEW_STATUS;
	[CCode (cheader_filename = "libappindicator/app-indicator.h", cname = "APP_INDICATOR_SIGNAL_SCROLL_EVENT")]
	public const string INDICATOR_SIGNAL_SCROLL_EVENT;
}