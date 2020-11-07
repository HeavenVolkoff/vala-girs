/* gsound.vapi generated by vapigen-0.52, do not modify. */

[CCode (cprefix = "GSound", gir_namespace = "GSound", gir_version = "1.0", lower_case_cprefix = "gsound_")]
namespace GSound {
	namespace Attribute {
		[CCode (cheader_filename = "gsound.h", cname = "GSOUND_ATTR_APPLICATION_ICON")]
		public const string APPLICATION_ICON;
		[CCode (cheader_filename = "gsound.h", cname = "GSOUND_ATTR_APPLICATION_ICON_NAME")]
		public const string APPLICATION_ICON_NAME;
		[CCode (cheader_filename = "gsound.h", cname = "GSOUND_ATTR_APPLICATION_ID")]
		public const string APPLICATION_ID;
		[CCode (cheader_filename = "gsound.h", cname = "GSOUND_ATTR_APPLICATION_LANGUAGE")]
		public const string APPLICATION_LANGUAGE;
		[CCode (cheader_filename = "gsound.h", cname = "GSOUND_ATTR_APPLICATION_NAME")]
		public const string APPLICATION_NAME;
		[CCode (cheader_filename = "gsound.h", cname = "GSOUND_ATTR_APPLICATION_PROCESS_BINARY")]
		public const string APPLICATION_PROCESS_BINARY;
		[CCode (cheader_filename = "gsound.h", cname = "GSOUND_ATTR_APPLICATION_PROCESS_HOST")]
		public const string APPLICATION_PROCESS_HOST;
		[CCode (cheader_filename = "gsound.h", cname = "GSOUND_ATTR_APPLICATION_PROCESS_ID")]
		public const string APPLICATION_PROCESS_ID;
		[CCode (cheader_filename = "gsound.h", cname = "GSOUND_ATTR_APPLICATION_PROCESS_USER")]
		public const string APPLICATION_PROCESS_USER;
		[CCode (cheader_filename = "gsound.h", cname = "GSOUND_ATTR_APPLICATION_VERSION")]
		public const string APPLICATION_VERSION;
		[CCode (cheader_filename = "gsound.h", cname = "GSOUND_ATTR_CANBERRA_CACHE_CONTROL")]
		public const string CANBERRA_CACHE_CONTROL;
		[CCode (cheader_filename = "gsound.h", cname = "GSOUND_ATTR_CANBERRA_ENABLE")]
		public const string CANBERRA_ENABLE;
		[CCode (cheader_filename = "gsound.h", cname = "GSOUND_ATTR_CANBERRA_FORCE_CHANNEL")]
		public const string CANBERRA_FORCE_CHANNEL;
		[CCode (cheader_filename = "gsound.h", cname = "GSOUND_ATTR_CANBERRA_VOLUME")]
		public const string CANBERRA_VOLUME;
		[CCode (cheader_filename = "gsound.h", cname = "GSOUND_ATTR_CANBERRA_XDG_THEME_NAME")]
		public const string CANBERRA_XDG_THEME_NAME;
		[CCode (cheader_filename = "gsound.h", cname = "GSOUND_ATTR_CANBERRA_XDG_THEME_OUTPUT_PROFILE")]
		public const string CANBERRA_XDG_THEME_OUTPUT_PROFILE;
		[CCode (cheader_filename = "gsound.h", cname = "GSOUND_ATTR_EVENT_DESCRIPTION")]
		public const string EVENT_DESCRIPTION;
		[CCode (cheader_filename = "gsound.h", cname = "GSOUND_ATTR_EVENT_ID")]
		public const string EVENT_ID;
		[CCode (cheader_filename = "gsound.h", cname = "GSOUND_ATTR_EVENT_MOUSE_BUTTON")]
		public const string EVENT_MOUSE_BUTTON;
		[CCode (cheader_filename = "gsound.h", cname = "GSOUND_ATTR_EVENT_MOUSE_HPOS")]
		public const string EVENT_MOUSE_HPOS;
		[CCode (cheader_filename = "gsound.h", cname = "GSOUND_ATTR_EVENT_MOUSE_VPOS")]
		public const string EVENT_MOUSE_VPOS;
		[CCode (cheader_filename = "gsound.h", cname = "GSOUND_ATTR_EVENT_MOUSE_X")]
		public const string EVENT_MOUSE_X;
		[CCode (cheader_filename = "gsound.h", cname = "GSOUND_ATTR_EVENT_MOUSE_Y")]
		public const string EVENT_MOUSE_Y;
		[CCode (cheader_filename = "gsound.h", cname = "GSOUND_ATTR_MEDIA_ARTIST")]
		public const string MEDIA_ARTIST;
		[CCode (cheader_filename = "gsound.h", cname = "GSOUND_ATTR_MEDIA_FILENAME")]
		public const string MEDIA_FILENAME;
		[CCode (cheader_filename = "gsound.h", cname = "GSOUND_ATTR_MEDIA_ICON")]
		public const string MEDIA_ICON;
		[CCode (cheader_filename = "gsound.h", cname = "GSOUND_ATTR_MEDIA_ICON_NAME")]
		public const string MEDIA_ICON_NAME;
		[CCode (cheader_filename = "gsound.h", cname = "GSOUND_ATTR_MEDIA_LANGUAGE")]
		public const string MEDIA_LANGUAGE;
		[CCode (cheader_filename = "gsound.h", cname = "GSOUND_ATTR_MEDIA_NAME")]
		public const string MEDIA_NAME;
		[CCode (cheader_filename = "gsound.h", cname = "GSOUND_ATTR_MEDIA_ROLE")]
		public const string MEDIA_ROLE;
		[CCode (cheader_filename = "gsound.h", cname = "GSOUND_ATTR_MEDIA_TITLE")]
		public const string MEDIA_TITLE;
		[CCode (cheader_filename = "gsound.h", cname = "GSOUND_ATTR_WINDOW_DESKTOP")]
		public const string WINDOW_DESKTOP;
		[CCode (cheader_filename = "gsound.h", cname = "GSOUND_ATTR_WINDOW_HEIGHT")]
		public const string WINDOW_HEIGHT;
		[CCode (cheader_filename = "gsound.h", cname = "GSOUND_ATTR_WINDOW_HPOS")]
		public const string WINDOW_HPOS;
		[CCode (cheader_filename = "gsound.h", cname = "GSOUND_ATTR_WINDOW_ICON")]
		public const string WINDOW_ICON;
		[CCode (cheader_filename = "gsound.h", cname = "GSOUND_ATTR_WINDOW_ICON_NAME")]
		public const string WINDOW_ICON_NAME;
		[CCode (cheader_filename = "gsound.h", cname = "GSOUND_ATTR_WINDOW_ID")]
		public const string WINDOW_ID;
		[CCode (cheader_filename = "gsound.h", cname = "GSOUND_ATTR_WINDOW_NAME")]
		public const string WINDOW_NAME;
		[CCode (cheader_filename = "gsound.h", cname = "GSOUND_ATTR_WINDOW_VPOS")]
		public const string WINDOW_VPOS;
		[CCode (cheader_filename = "gsound.h", cname = "GSOUND_ATTR_WINDOW_WIDTH")]
		public const string WINDOW_WIDTH;
		[CCode (cheader_filename = "gsound.h", cname = "GSOUND_ATTR_WINDOW_X")]
		public const string WINDOW_X;
		[CCode (cheader_filename = "gsound.h", cname = "GSOUND_ATTR_WINDOW_X11_DISPLAY")]
		public const string WINDOW_X11_DISPLAY;
		[CCode (cheader_filename = "gsound.h", cname = "GSOUND_ATTR_WINDOW_X11_MONITOR")]
		public const string WINDOW_X11_MONITOR;
		[CCode (cheader_filename = "gsound.h", cname = "GSOUND_ATTR_WINDOW_X11_SCREEN")]
		public const string WINDOW_X11_SCREEN;
		[CCode (cheader_filename = "gsound.h", cname = "GSOUND_ATTR_WINDOW_X11_XID")]
		public const string WINDOW_X11_XID;
		[CCode (cheader_filename = "gsound.h", cname = "GSOUND_ATTR_WINDOW_Y")]
		public const string WINDOW_Y;
	}
	[CCode (cheader_filename = "gsound.h", type_id = "gsound_context_get_type ()")]
	public class Context : GLib.Object, GLib.Initable {
		[CCode (has_construct_function = false)]
		public Context (GLib.Cancellable? cancellable = null) throws GLib.Error;
		public bool cache (...) throws GLib.Error;
		public bool cachev (GLib.HashTable<string,string> attrs) throws GLib.Error;
		public bool open () throws GLib.Error;
		public async bool play_full (GLib.Cancellable? cancellable, ...) throws GLib.Error;
		[CCode (finish_name = "gsound_context_play_full_finish")]
		public async bool play_fullv (GLib.HashTable<string,string> attrs, GLib.Cancellable? cancellable) throws GLib.Error;
		public bool play_simple (GLib.Cancellable? cancellable = null, ...) throws GLib.Error;
		public bool play_simplev (GLib.HashTable<string,string> attrs, GLib.Cancellable? cancellable = null) throws GLib.Error;
		public bool set_attributes (...) throws GLib.Error;
		public bool set_attributesv (GLib.HashTable<string,string> attrs) throws GLib.Error;
		public bool set_driver (string driver) throws GLib.Error;
	}
	[CCode (cheader_filename = "gsound.h", cprefix = "GSOUND_ERROR_")]
	public errordomain Error {
		NOTSUPPORTED,
		INVALID,
		STATE,
		OOM,
		NODRIVER,
		SYSTEM,
		CORRUPT,
		TOOBIG,
		NOTFOUND,
		DESTROYED,
		CANCELED,
		NOTAVAILABLE,
		ACCESS,
		IO,
		INTERNAL,
		DISABLED,
		FORKED,
		DISCONNECTED;
		public static GLib.Quark quark ();
	}
}
