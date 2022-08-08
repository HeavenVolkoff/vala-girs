/* rygel-core-2.6.vapi generated by valac 0.56.1.1-af49d, do not modify. */

[CCode (gir_namespace = "Rygel", gir_version = "2.6")]
namespace Rygel {
	[CCode (cheader_filename = "rygel-core.h")]
	public class BaseConfiguration : Rygel.Configuration, GLib.Object {
		public BaseConfiguration ();
		public virtual bool get_allow_deletion () throws GLib.Error;
		public virtual bool get_allow_upload () throws GLib.Error;
		public virtual bool get_bool (string section, string key) throws GLib.Error;
		public virtual bool get_enabled (string section) throws GLib.Error;
		public virtual string get_engine_path () throws GLib.Error;
		public virtual int get_int (string section, string key, int min, int max) throws GLib.Error;
		public virtual Gee.ArrayList<int> get_int_list (string section, string key) throws GLib.Error;
		public virtual string get_interface () throws GLib.Error;
		[CCode (array_length = false, array_null_terminated = true)]
		public virtual string[] get_interfaces () throws GLib.Error;
		public virtual string get_log_levels () throws GLib.Error;
		public virtual string get_media_engine () throws GLib.Error;
		public virtual string? get_music_upload_folder () throws GLib.Error;
		public virtual string? get_picture_upload_folder () throws GLib.Error;
		public virtual string get_plugin_path () throws GLib.Error;
		public virtual int get_port () throws GLib.Error;
		public virtual string get_string (string section, string key) throws GLib.Error;
		public virtual Gee.ArrayList<string> get_string_list (string section, string key) throws GLib.Error;
		public virtual string get_title (string section) throws GLib.Error;
		public virtual bool get_transcoding () throws GLib.Error;
		public virtual string? get_video_upload_folder () throws GLib.Error;
	}
	[CCode (cheader_filename = "rygel-core.h")]
	public class BasicManagement : GUPnP.Service {
		protected string device_status;
		public const string DESCRIPTION_PATH;
		public const string UPNP_ID;
		public const string UPNP_TYPE;
		public BasicManagement ();
		public override void constructed ();
		public uint max_history_size { get; set; }
	}
	[CCode (cheader_filename = "rygel-core.h")]
	public class CmdlineConfig : GLib.Object, Rygel.Configuration {
		public const GLib.OptionEntry[] OPTIONS;
		public CmdlineConfig ();
		public string get_config_file () throws GLib.Error;
		public static Rygel.CmdlineConfig get_default ();
		public void set_options (GLib.VariantDict args);
	}
	[CCode (cheader_filename = "rygel-core.h")]
	public class ConnectionManager : GUPnP.Service {
		protected int av_transport_id;
		protected string connection_ids;
		protected string direction;
		protected int rcs_id;
		protected string sink_protocol_info;
		protected string source_protocol_info;
		public const string DESCRIPTION_PATH;
		public const string UPNP_ID;
		public const string UPNP_TYPE;
		public ConnectionManager ();
		public override void constructed ();
		public virtual string get_current_protocol_info ();
	}
	[CCode (cheader_filename = "rygel-core.h")]
	public class DLNAProfile {
		public string mime;
		public string name;
		public DLNAProfile (string name, string mime);
		public static int compare_by_name (Rygel.DLNAProfile a, Rygel.DLNAProfile b);
	}
	[CCode (cheader_filename = "rygel-core.h")]
	public class DescriptionFile : GLib.Object {
		public DescriptionFile (string template_file) throws GLib.Error;
		public void add_dlna_doc_element (string dlnadoc_xpath, string dlnadoc_non_xpath, string dev_cap);
		public void add_icon (string device_name, Rygel.IconInfo icon_info, string url);
		public void add_service (string device_name, Rygel.ResourceInfo resource_info);
		public void clear_icon_list ();
		public void clear_service_list ();
		public DescriptionFile.from_xml_document (GUPnP.XMLDoc doc);
		public string get_friendly_name ();
		public string? get_udn ();
		public void modify_service_type (string old_type, string new_type);
		public void remove_dlna_doc_element (string dlnadoc_xpath);
		public void save (string path) throws GLib.Error;
		public void set_device_type (string device_type);
		public void set_dlna_caps (Rygel.PluginCapabilities capabilities);
		public void set_friendly_name (string friendly_name);
		public void set_model_description (string model_description);
		public void set_model_name (string model_name);
		public void set_model_number (string model_number);
		public void set_serial_number (string serial);
		public void set_udn (string udn);
	}
	[CCode (cheader_filename = "rygel-core.h")]
	public class EnergyManagement : GUPnP.Service {
		public const string DESCRIPTION_PATH;
		public const string UPNP_ID;
		public const string UPNP_TYPE;
		public EnergyManagement ();
		public override void constructed ();
	}
	[CCode (cheader_filename = "rygel-core.h")]
	public class EnvironmentConfig : GLib.Object, Rygel.Configuration {
		public EnvironmentConfig ();
		public static Rygel.EnvironmentConfig get_default ();
	}
	[CCode (cheader_filename = "rygel-core.h")]
	public class IconInfo {
		public int depth;
		public string file_extension;
		public int height;
		public string mime_type;
		public int64 size;
		public string uri;
		public int width;
		public IconInfo (string mime_type, string file_extension);
	}
	[CCode (cheader_filename = "rygel-core.h")]
	public class LogHandler : GLib.Object {
		public static Rygel.LogHandler get_default ();
	}
	[CCode (cheader_filename = "rygel-core.h")]
	public abstract class MediaDevice : GLib.Object {
		protected MediaDevice ();
		public void add_interface (string iface);
		public override void constructed ();
		public GLib.List<string> get_interfaces ();
		public void remove_interface (string iface);
		public Rygel.PluginCapabilities capabilities { protected get; construct; }
		public Rygel.Plugin plugin { protected get; set construct; }
		public string title { protected get; construct; }
	}
	[CCode (cheader_filename = "rygel-core.h")]
	public class MetaConfig : GLib.Object, Rygel.Configuration {
		public MetaConfig ();
		public static void cleanup ();
		public static Rygel.MetaConfig get_default ();
		public static void register_configuration (Rygel.Configuration config);
	}
	[CCode (cheader_filename = "rygel-core.h")]
	public class Plugin : GUPnP.ResourceFactory {
		public Plugin (string desc_path, string name, string? title, string? description = null, Rygel.PluginCapabilities capabilities = PluginCapabilities.NONE);
		public void add_icon (Rygel.IconInfo icon_info);
		public void add_resource (Rygel.ResourceInfo resource_info);
		public virtual void apply_hacks (Rygel.RootDevice device, string description_path) throws GLib.Error;
		public override void constructed ();
		public bool active { get; set; }
		public Rygel.PluginCapabilities capabilities { get; set construct; }
		public Gee.ArrayList<Rygel.IconInfo> default_icons { get; private set; }
		public string desc_path { get; construct; }
		public string description { get; construct; }
		public Gee.ArrayList<Rygel.IconInfo> icon_infos { get; private set; }
		public string name { get; construct; }
		public Gee.ArrayList<Rygel.ResourceInfo> resource_infos { get; private set; }
		public string title { get; set construct; }
	}
	[CCode (cheader_filename = "rygel-core.h")]
	public class PluginInformation : GLib.Object {
		public static Rygel.PluginInformation new_from_file (GLib.File file) throws GLib.Error;
		public GLib.GenericSet<string> conflicts { get; construct; }
		public bool module_loaded { get; set; }
		public string module_path { get; construct; }
		public string name { get; construct; }
	}
	[CCode (cheader_filename = "rygel-core.h")]
	public class PluginLoader : Rygel.RecursiveModuleLoader {
		public PluginLoader ();
		public void add_plugin (Rygel.Plugin plugin);
		public override void constructed ();
		public Rygel.Plugin? get_plugin_by_name (string name);
		public Gee.Collection<Rygel.Plugin> list_plugins ();
		protected override bool load_module_from_file (GLib.File module_file);
		protected override bool load_module_from_info (Rygel.PluginInformation info);
		public bool plugin_disabled (string name);
		public signal void plugin_available (Rygel.Plugin plugin);
	}
	[CCode (cheader_filename = "rygel-core.h")]
	public abstract class RecursiveModuleLoader : GLib.Object {
		protected RecursiveModuleLoader (string path);
		public override void constructed ();
		protected abstract bool load_module_from_file (GLib.File file);
		protected abstract bool load_module_from_info (Rygel.PluginInformation info);
		public void load_modules ();
		public void load_modules_sync (GLib.Cancellable? cancellable = null);
		public string base_path { get; set construct; }
	}
	[CCode (cheader_filename = "rygel-core.h")]
	public class ResourceInfo {
		public string description_path;
		public GLib.Type type;
		public string upnp_id;
		public string upnp_type;
		public ResourceInfo (string upnp_id, string upnp_type, string description_path, GLib.Type type);
	}
	[CCode (cheader_filename = "rygel-core.h")]
	public class RootDevice : GUPnP.RootDevice, GLib.Initable {
		public RootDevice (GUPnP.Context context, Rygel.Plugin plugin, GUPnP.XMLDoc description_doc, string description_path, string description_dir) throws GLib.Error;
		public Gee.ArrayList<GUPnP.ServiceInfo> services { get; internal set; }
	}
	[CCode (cheader_filename = "rygel-core.h")]
	public class RootDeviceFactory : GLib.Object, GLib.Initable {
		public RootDeviceFactory (GUPnP.Context context) throws GLib.Error;
		public Rygel.RootDevice create (Rygel.Plugin plugin) throws GLib.Error;
		public GUPnP.Context context { get; construct; }
	}
	[CCode (cheader_filename = "rygel-core.h")]
	public class UserConfig : GLib.Object, Rygel.Configuration {
		protected GLib.KeyFile key_file;
		protected GLib.FileMonitor key_file_monitor;
		protected GLib.KeyFile sys_key_file;
		protected GLib.FileMonitor sys_key_file_monitor;
		public const string ALLOW_DELETION_KEY;
		public const string ALLOW_UPLOAD_KEY;
		public const string CONFIG_FILE;
		public const string ENABLED_KEY;
		public const string ENGINE_PATH_KEY;
		public const string GENERAL_SECTION;
		public const string IFACE_KEY;
		public const string LOG_LEVELS_KEY;
		public const string MEDIA_ENGINE_KEY;
		public const string MUSIC_UPLOAD_DIR_PATH_KEY;
		public const string PICTURE_UPLOAD_DIR_PATH_KEY;
		public const string PLUGIN_PATH_KEY;
		public const string PORT_KEY;
		public const string TITLE_KEY;
		public const string TRANSCODING_KEY;
		public const string UPLOAD_FOLDER_KEY;
		public const string VIDEO_UPLOAD_DIR_PATH_KEY;
		public UserConfig (string local_path) throws GLib.Error;
		public static Rygel.UserConfig get_default () throws GLib.Error;
		public UserConfig.with_paths (string local_path, string system_path) throws GLib.Error;
	}
	[CCode (cheader_filename = "rygel-core.h")]
	public class V1Hacks : GLib.Object {
		public string description_path;
		public V1Hacks (string device_type, string[] service_types);
		public void apply_on_device (Rygel.RootDevice device, string? template_path) throws GLib.Error;
		public override void constructed ();
		public string device_type { get; set construct; }
		public string[] service_types { get; construct; }
	}
	[CCode (cheader_filename = "rygel-core.h")]
	public class XMLUtils {
		public class ChildIterator : Rygel.XMLUtils.Iterator {
			public ChildIterator (Xml.Node* node);
		}
		public class Iterator {
			public Iterator (Xml.Node* node);
			public Xml.Node* @get ();
			public Rygel.XMLUtils.Iterator iterator ();
			public bool next ();
		}
		public XMLUtils ();
		public static Xml.Node* get_element (Xml.Node* node, ...);
	}
	[CCode (cheader_filename = "rygel-core.h")]
	public interface Configuration : GLib.Object {
		public abstract bool get_allow_deletion () throws GLib.Error;
		public abstract bool get_allow_upload () throws GLib.Error;
		public abstract bool get_bool (string section, string key) throws GLib.Error;
		public abstract bool get_enabled (string section) throws GLib.Error;
		public abstract string get_engine_path () throws GLib.Error;
		public abstract int get_int (string section, string key, int min, int max) throws GLib.Error;
		public abstract Gee.ArrayList<int> get_int_list (string section, string key) throws GLib.Error;
		[Version (deprecated = true, deprecated_since = "0.19.2", replacement = "get_interfaces")]
		public abstract string get_interface () throws GLib.Error;
		[CCode (array_length = false, array_null_terminated = true)]
		public abstract string[] get_interfaces () throws GLib.Error;
		public abstract string get_log_levels () throws GLib.Error;
		public abstract string get_media_engine () throws GLib.Error;
		public abstract string? get_music_upload_folder () throws GLib.Error;
		public abstract string? get_picture_upload_folder () throws GLib.Error;
		public abstract string get_plugin_path () throws GLib.Error;
		public abstract int get_port () throws GLib.Error;
		public abstract string get_string (string section, string key) throws GLib.Error;
		public abstract Gee.ArrayList<string> get_string_list (string section, string key) throws GLib.Error;
		public abstract string get_title (string section) throws GLib.Error;
		public abstract bool get_transcoding () throws GLib.Error;
		public abstract string? get_video_upload_folder () throws GLib.Error;
		public signal void configuration_changed (Rygel.ConfigurationEntry entry);
		public signal void section_changed (string section, Rygel.SectionEntry entry);
		public signal void setting_changed (string section, string key);
	}
	[CCode (cheader_filename = "rygel-core.h")]
	[DBus (name = "org.gnome.Rygel1.AclProvider1")]
	public interface DBusAclProvider : GLib.Object {
		public const string OBJECT_PATH;
		public const string SERVICE_NAME;
		public abstract async bool is_allowed (GLib.HashTable<string,string> device, GLib.HashTable<string,string> service, string path, string address, string? agent) throws GLib.DBusError, GLib.IOError;
	}
	[CCode (cheader_filename = "rygel-core.h")]
	[DBus (name = "org.gnome.Rygel1")]
	public interface DBusInterface : GLib.Object {
		public const string OBJECT_PATH;
		public const string SERVICE_NAME;
		public abstract void shutdown () throws GLib.IOError, GLib.DBusError;
	}
	[CCode (cheader_filename = "rygel-core.h")]
	public interface StateMachine : GLib.Object {
		public abstract async void run ();
		public abstract GLib.Cancellable cancellable { get; set; }
		public signal void completed ();
	}
	[CCode (cheader_filename = "rygel-core.h")]
	public enum ConfigurationEntry {
		INTERFACE,
		PORT,
		TRANSCODING,
		ALLOW_UPLOAD,
		ALLOW_DELETION,
		LOG_LEVELS,
		PLUGIN_PATH,
		VIDEO_UPLOAD_FOLDER,
		MUSIC_UPLOAD_FOLDER,
		PICTURE_UPLOAD_FOLDER
	}
	[CCode (cheader_filename = "rygel-core.h")]
	public enum LogLevel {
		INVALID,
		ERROR,
		CRITICAL,
		WARNING,
		INFO,
		DEFAULT,
		DEBUG
	}
	[CCode (cheader_filename = "rygel-core.h")]
	[Flags]
	public enum PluginCapabilities {
		NONE,
		IMAGE_UPLOAD,
		VIDEO_UPLOAD,
		AUDIO_UPLOAD,
		UPLOAD,
		TRACK_CHANGES,
		CREATE_CONTAINERS,
		DIAGNOSTICS,
		ENERGY_MANAGEMENT
	}
	[CCode (cheader_filename = "rygel-core.h")]
	public enum SectionEntry {
		TITLE,
		ENABLED
	}
	[CCode (cheader_filename = "rygel-core.h")]
	public errordomain CmdlineConfigError {
		VERSION_ONLY
	}
	[CCode (cheader_filename = "rygel-core.h")]
	public errordomain ConfigurationError {
		NO_VALUE_SET,
		VALUE_OUT_OF_RANGE
	}
	[CCode (cheader_filename = "rygel-core.h")]
	public static string get_pretty_host_name ();
}
