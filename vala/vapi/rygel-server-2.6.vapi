/* rygel-server-2.6.vapi generated by valac 0.49.92.2-b6753, do not modify. */

namespace Rygel {
	namespace FreeDesktop {
	}
	[CCode (cheader_filename = "rygel-server.h")]
	public class AudioItem : Rygel.MediaFileItem {
		public new const string UPNP_CLASS;
		public AudioItem (string id, Rygel.MediaContainer parent, string title, string upnp_class = AudioItem.UPNP_CLASS);
		public string album { get; set; }
		public int bitrate { get; set; }
		public int bits_per_sample { get; set; }
		public int channels { get; set; }
		public long duration { get; set; }
		public int sample_freq { get; set; }
	}
	[CCode (cheader_filename = "rygel-server.h")]
	public class ContentDirectory : GUPnP.Service {
		protected string feature_list;
		public Rygel.MediaContainer root_container;
		public uint32 system_update_id;
		public const string DESCRIPTION_PATH;
		public const string DESCRIPTION_PATH_NO_TRACK;
		public const string UPNP_ID;
		public const string UPNP_TYPE;
		public const string UPNP_TYPE_V1;
		public ContentDirectory ();
		public override void constructed ();
	}
	[CCode (cheader_filename = "rygel-server.h")]
	public class DLNAAvailableSeekRangeRequest : Rygel.HTTPSeekRequest {
		public const string GET_AVAILABLE_SEEK_RANGE_HEADER;
		public static bool requested (Soup.Message message);
		public static bool supported (Soup.Message message, Rygel.HTTPGetHandler handler);
	}
	[CCode (cheader_filename = "rygel-server.h")]
	public class DLNAAvailableSeekRangeResponse : Rygel.HTTPResponseElement {
		public const string AVAILABLE_SEEK_RANGE_HEADER;
		public DLNAAvailableSeekRangeResponse (int mode, int64 start_time, int64 end_time, int64 start_byte, int64 end_byte);
		public override void add_response_headers (Rygel.HTTPRequest request);
		public DLNAAvailableSeekRangeResponse.time_only (int mode, int64 start_time, int64 end_time);
		public override string to_string ();
		public int64 end_byte { get; private set; }
		public int64 end_time { get; private set; }
		public int mode { get; private set; }
		public int64 range_length { get; private set; }
		public int64 start_byte { get; private set; }
		public int64 start_time { get; private set; }
	}
	[CCode (cheader_filename = "rygel-server.h")]
	public class DTCPCleartextRequest : Rygel.HTTPSeekRequest {
		public const string DTCP_RANGE_HEADER;
		public DTCPCleartextRequest (Soup.Message message, Rygel.HTTPGetHandler handler) throws Rygel.HTTPSeekRequestError, Rygel.HTTPRequestError;
		public static bool requested (Soup.Message message);
		public static bool supported (Soup.Message message, Rygel.HTTPGetHandler handler);
		public int64 end_byte { get; private set; }
		public int64 range_length { get; private set; }
		public int64 start_byte { get; private set; }
		public int64 total_size { get; private set; }
	}
	[CCode (cheader_filename = "rygel-server.h")]
	public class DTCPCleartextResponse : Rygel.HTTPResponseElement {
		public const string DTCP_CONTENT_RANGE_HEADER;
		public DTCPCleartextResponse (int64 start_byte, int64 end_byte, int64 total_size, int64 encrypted_length = UNSPECIFIED);
		public override void add_response_headers (Rygel.HTTPRequest request);
		public DTCPCleartextResponse.from_request (Rygel.DTCPCleartextRequest request, int64 encrypted_length = UNSPECIFIED);
		public override string to_string ();
		public int64 encrypted_length { get; set; }
		public int64 end_byte { get; private set; }
		public int64 range_length { get; private set; }
		public int64 start_byte { get; private set; }
		public int64 total_size { get; private set; }
	}
	[CCode (cheader_filename = "rygel-server.h")]
	public class HTTPByteSeekRequest : Rygel.HTTPSeekRequest {
		public HTTPByteSeekRequest (Soup.Message msg, Rygel.HTTPGetHandler handler) throws Rygel.HTTPSeekRequestError, Rygel.HTTPRequestError;
		public static bool requested (Soup.Message msg);
		public static bool supported (Soup.Message message, Rygel.HTTPGetHandler handler);
		public int64 end_byte { get; set; }
		public int64 range_length { get; private set; }
		public int64 start_byte { get; set; }
		public int64 total_size { get; set; }
	}
	[CCode (cheader_filename = "rygel-server.h")]
	public class HTTPByteSeekResponse : Rygel.HTTPResponseElement {
		public HTTPByteSeekResponse (int64 start_byte, int64 end_byte, int64 total_size);
		public override void add_response_headers (Rygel.HTTPRequest request);
		public HTTPByteSeekResponse.from_request (Rygel.HTTPByteSeekRequest request);
		public override string to_string ();
		public int64 end_byte { get; set; }
		public int64 range_length { get; private set; }
		public int64 start_byte { get; set; }
		public int64 total_size { get; set; }
	}
	[CCode (cheader_filename = "rygel-server.h")]
	public class HTTPGet : Rygel.HTTPRequest {
		public Rygel.HTTPGetHandler handler;
		public Rygel.HTTPSeekRequest seek;
		public Rygel.PlaySpeedRequest speed_request;
		public HTTPGet (Rygel.HTTPServer http_server, Soup.Server server, Soup.Message msg);
		protected override async void find_item () throws GLib.Error;
		protected override async void handle () throws GLib.Error;
	}
	[CCode (cheader_filename = "rygel-server.h")]
	public abstract class HTTPGetHandler : GLib.Object {
		protected const string TRANSFER_MODE_BACKGROUND;
		protected const string TRANSFER_MODE_HEADER;
		protected const string TRANSFER_MODE_INTERACTIVE;
		protected const string TRANSFER_MODE_STREAMING;
		protected HTTPGetHandler ();
		public virtual void add_response_headers (Rygel.HTTPGet request) throws Rygel.HTTPRequestError;
		public virtual string get_default_transfer_mode ();
		public virtual int64 get_resource_duration ();
		public abstract int64 get_resource_size ();
		public abstract Rygel.HTTPResponse render_body (Rygel.HTTPGet request) throws Rygel.HTTPRequestError;
		public virtual bool supports_byte_seek ();
		public virtual bool supports_playspeed ();
		public virtual bool supports_time_seek ();
		public abstract bool supports_transfer_mode (string mode);
		public GLib.Cancellable cancellable { get; set; }
	}
	[CCode (cheader_filename = "rygel-server.h")]
	public class HTTPItemURI : GLib.Object {
		public static Gee.HashMap<string,string> mime_to_ext;
		public HTTPItemURI (Rygel.MediaObject object, Rygel.HTTPServer http_server, int thumbnail_index = -1, int subtitle_index = -1, string? resource_name = null);
		public HTTPItemURI.from_string (string uri, Rygel.HTTPServer http_server) throws Rygel.HTTPRequestError;
		public string to_string ();
		public string extension { owned get; set; }
		public weak Rygel.HTTPServer http_server { get; set; }
		public string item_id { get; set; }
		public string? resource_name { get; set; }
		public int subtitle_index { get; set; }
		public int thumbnail_index { get; set; }
	}
	[CCode (cheader_filename = "rygel-server.h")]
	public abstract class HTTPRequest : GLib.Object, Rygel.StateMachine {
		public weak Rygel.HTTPServer http_server;
		public Soup.Message msg;
		public Rygel.MediaObject object;
		public weak Soup.Server server;
		protected Rygel.HTTPItemURI uri;
		protected HTTPRequest (Rygel.HTTPServer http_server, Soup.Server server, Soup.Message msg);
		protected void end (uint status, string? reason = null);
		protected virtual async void find_item () throws GLib.Error;
		protected abstract async void handle () throws GLib.Error;
		protected void handle_error (GLib.Error error);
	}
	[CCode (cheader_filename = "rygel-server.h")]
	public class HTTPResponse : GLib.Object, Rygel.StateMachine {
		public Soup.Message msg;
		public Rygel.HTTPSeekRequest seek;
		public Rygel.PlaySpeedRequest speed;
		public HTTPResponse (Rygel.HTTPGet request, Rygel.HTTPGetHandler request_handler, Rygel.DataSource src) throws GLib.Error;
		public virtual void end (bool aborted, uint status);
		public Gee.List<Rygel.HTTPResponseElement>? preroll () throws GLib.Error;
		public int priority { get; }
		public weak Soup.Server server { get; private set; }
	}
	[CCode (cheader_filename = "rygel-server.h")]
	public abstract class HTTPResponseElement : GLib.Object {
		public const int64 UNSPECIFIED;
		protected HTTPResponseElement ();
		public abstract void add_response_headers (Rygel.HTTPRequest request);
		public abstract string to_string ();
	}
	[CCode (cheader_filename = "rygel-server.h")]
	public abstract class HTTPSeekRequest : GLib.Object {
		public const int64 UNSPECIFIED;
		protected HTTPSeekRequest ();
	}
	[CCode (cheader_filename = "rygel-server.h")]
	public class HTTPServer : GLib.Object, Rygel.StateMachine {
		public GUPnP.Context context;
		public GLib.HashTable<string,string> replacements;
		public Rygel.MediaContainer root_container;
		public HTTPServer (Rygel.ContentDirectory content_dir, string name);
		public GLib.HashTable<string,string> get_replacements ();
		public bool is_local ();
		public bool need_proxy (string uri);
		public void set_resource_delivery_options (Rygel.MediaResource res);
		public string path_root { get; private set; }
		public string server_name { get; set; }
	}
	[CCode (cheader_filename = "rygel-server.h")]
	public class HTTPTimeSeekRequest : Rygel.HTTPSeekRequest {
		public int64 end_time;
		public int64 range_duration;
		public int64 start_time;
		public int64 total_duration;
		public const string TIMESEEKRANGE_HEADER;
		public static bool requested (Soup.Message message);
		public static bool supported (Soup.Message message, Rygel.HTTPGetHandler handler);
		public string to_string ();
	}
	[CCode (cheader_filename = "rygel-server.h")]
	public class HTTPTimeSeekResponse : Rygel.HTTPResponseElement {
		public HTTPTimeSeekResponse (int64 start_time, int64 end_time, int64 total_duration, int64 start_byte, int64 end_byte, int64 total_size);
		public override void add_response_headers (Rygel.HTTPRequest request);
		public HTTPTimeSeekResponse.from_request (Rygel.HTTPTimeSeekRequest time_seek_request, int64 total_duration);
		public HTTPTimeSeekResponse.time_only (int64 start_time, int64 end_time, int64 total_duration);
		public override string to_string ();
		public HTTPTimeSeekResponse.with_length (int64 start_time, int64 end_time, int64 total_duration, int64 start_byte, int64 end_byte, int64 total_size, int64 response_length);
		public int64 end_byte { get; private set; }
		public int64 end_time { get; private set; }
		public int64 range_duration { get; private set; }
		public int64 response_length { get; private set; }
		public int64 start_byte { get; private set; }
		public int64 start_time { get; private set; }
		public int64 total_duration { get; private set; }
		public int64 total_size { get; private set; }
	}
	[CCode (cheader_filename = "rygel-server.h")]
	public class ImageItem : Rygel.MediaFileItem, Rygel.VisualItem {
		public new const string UPNP_CLASS;
		public ImageItem (string id, Rygel.MediaContainer parent, string title, string upnp_class = ImageItem.UPNP_CLASS);
		public override void add_uri (string uri);
		public override void constructed ();
	}
	[CCode (cheader_filename = "rygel-server.h")]
	public class LogicalExpression : Rygel.SearchExpression<Rygel.LogicalOperator,Rygel.SearchExpression,Rygel.SearchExpression> {
		public LogicalExpression ();
		public override bool satisfied_by (Rygel.MediaObject media_object);
		public override string to_string ();
	}
	[CCode (cheader_filename = "rygel-server.h")]
	public class MediaArtStore : GLib.Object {
		public void add (Rygel.MusicItem item, GLib.File file, uint8[] data, string mime);
		public static Rygel.MediaArtStore? get_default ();
		public Rygel.Thumbnail? lookup_media_art (Rygel.MusicItem item) throws GLib.Error;
		public void search_media_art_for_file (Rygel.MusicItem item, GLib.File file);
	}
	[CCode (cheader_filename = "rygel-server.h")]
	public abstract class MediaContainer : Rygel.MediaObject {
		public int64 storage_used;
		public int64 total_deleted_child_count;
		public uint32 update_id;
		public const string ALBUM_SORT_CRITERIA;
		public const string ANY;
		public const string MUSIC_ALBUM;
		public const string MUSIC_ARTIST;
		public const string MUSIC_GENRE;
		public const string PLAYLIST;
		public const string STORAGE_FOLDER;
		public const string UPNP_CLASS;
		protected MediaContainer (string id, Rygel.MediaContainer? parent, string title, int child_count);
		public override void constructed ();
		public override Rygel.DataSource? create_stream_source_for_resource (Rygel.HTTPRequest request, Rygel.MediaResource resource) throws GLib.Error;
		public static bool equal_func (Rygel.MediaContainer a, Rygel.MediaContainer b);
		public abstract async Rygel.MediaObject? find_object (string id, GLib.Cancellable? cancellable) throws GLib.Error;
		public abstract async Rygel.MediaObjects? get_children (uint offset, uint max_count, string sort_criteria, GLib.Cancellable? cancellable) throws GLib.Error;
		protected MediaContainer.root (string title, int child_count);
		public override GUPnP.DIDLLiteObject? serialize (Rygel.Serializer serializer, Rygel.HTTPServer http_server) throws GLib.Error;
		public void updated (Rygel.MediaObject? object = null, Rygel.ObjectEventType event_type = ObjectEventType.MODIFIED, bool sub_tree_update = false);
		public int all_child_count { get; }
		public int child_count { get; set construct; }
		public bool create_mode_enabled { get; set; }
		protected int empty_child_count { get; set; }
		public override GUPnP.OCMFlags ocm_flags { get; }
		public string sort_criteria { get; set; }
		public signal void container_updated (Rygel.MediaContainer container, Rygel.MediaObject object, Rygel.ObjectEventType event_type, bool sub_tree_update);
		public signal void sub_tree_updates_finished (Rygel.MediaObject sub_tree_root);
	}
	[CCode (cheader_filename = "rygel-server.h")]
	public abstract class MediaEngine : GLib.Object {
		protected MediaEngine ();
		public abstract Rygel.DataSource? create_data_source_for_resource (Rygel.MediaObject item, Rygel.MediaResource resource, GLib.HashTable<string,string> replacements) throws GLib.Error;
		public abstract Rygel.DataSource? create_data_source_for_uri (string uri) throws GLib.Error;
		public static Rygel.MediaEngine get_default ();
		public abstract unowned GLib.List<Rygel.DLNAProfile> get_dlna_profiles ();
		public virtual GLib.List<string> get_internal_protocol_schemes ();
		public abstract async Gee.List<Rygel.MediaResource>? get_resources_for_item (Rygel.MediaObject item);
		public static void init () throws GLib.Error;
		public signal void resource_changed (string media_object_uri);
	}
	[CCode (cheader_filename = "rygel-server.h")]
	public abstract class MediaFileItem : Rygel.MediaItem {
		protected static GLib.Regex address_regex;
		public static Gee.HashMap<string,string> mime_to_ext;
		protected MediaFileItem (string id, Rygel.MediaContainer parent, string title, string upnp_class);
		public virtual async void add_engine_resources ();
		public override Rygel.DataSource? create_stream_source_for_resource (Rygel.HTTPRequest request, Rygel.MediaResource resource) throws GLib.Error;
		protected string ext_from_mime_type (string mime_type);
		public virtual string get_extension ();
		public virtual Rygel.MediaResource get_primary_resource ();
		public string dlna_profile { get; set; }
		public string mime_type { get; set; }
		public override GUPnP.OCMFlags ocm_flags { get; }
		public bool place_holder { get; set; }
		public int64 size { get; set; }
	}
	[CCode (cheader_filename = "rygel-server.h")]
	public abstract class MediaItem : Rygel.MediaObject {
		public const string UPNP_CLASS;
		protected MediaItem ();
		public string description { get; set; }
	}
	[CCode (cheader_filename = "rygel-server.h")]
	public abstract class MediaObject : GLib.Object {
		public weak Rygel.MediaContainer parent_ptr;
		protected MediaObject ();
		public virtual void add_uri (string uri);
		public static string? apply_replacements (GLib.HashTable<string,string> replacement_pairs, string? source_string);
		protected int compare_int_props (int prop1, int prop2);
		protected int compare_string_props (string prop1, string prop2);
		public override void constructed ();
		public abstract Rygel.DataSource? create_stream_source_for_resource (Rygel.HTTPRequest request, Rygel.MediaResource resource) throws GLib.Error;
		public string? get_primary_uri ();
		public Rygel.MediaResource? get_resource_by_name (string resource_name);
		public Gee.List<Rygel.MediaResource> get_resource_list ();
		public Gee.List<string> get_uris ();
		public async GLib.File? get_writable (GLib.Cancellable? cancellable) throws GLib.Error;
		public async Gee.ArrayList<GLib.File> get_writables (GLib.Cancellable? cancellable) throws GLib.Error;
		public abstract GUPnP.DIDLLiteObject? serialize (Rygel.Serializer serializer, Rygel.HTTPServer http_server) throws GLib.Error;
		public void serialize_resource_list (GUPnP.DIDLLiteObject didl_object, Rygel.HTTPServer http_server) throws GLib.Error;
		public string artist { get; set; }
		public string creator { get; set; }
		public string date { get; set; }
		public string genre { get; set; }
		public string id { get; set construct; }
		public uint64 modified { get; set; }
		public uint object_update_id { get; set; }
		public virtual GUPnP.OCMFlags ocm_flags { get; }
		public weak Rygel.MediaContainer parent { get; set construct; }
		public Rygel.MediaContainer parent_ref { get; set; }
		public string ref_id { get; set; }
		public string title { get; set construct; }
		public string upnp_class { get; set construct; }
	}
	[CCode (cheader_filename = "rygel-server.h")]
	public class MediaObjects : Gee.ArrayList<Rygel.MediaObject> {
		public const string SORT_CAPS;
		public MediaObjects ();
		public override Gee.List<Rygel.MediaObject>? slice (int start, int stop);
		public void sort_by_criteria (string sort_criteria);
	}
	[CCode (cheader_filename = "rygel-server.h")]
	public class MediaResource : GLib.Object {
		public string[] play_speeds;
		public MediaResource (string name);
		public Rygel.MediaResource dup ();
		public MediaResource.from_didl_lite_resource (string name, GUPnP.DIDLLiteResource didl_resource);
		public MediaResource.from_resource (string name, Rygel.MediaResource that);
		public string get_default_transfer_mode ();
		public string get_name ();
		public GUPnP.ProtocolInfo get_protocol_info (GLib.HashTable<string,string>? replacements = null);
		public bool is_cleartext_range_support_enabled ();
		public bool is_dlna_content ();
		public bool is_dlna_operation_mode_set (long flags);
		public bool is_dlna_protocol_flag_set (long flags);
		public bool is_link_protection_enabled ();
		public bool is_streamable ();
		public GUPnP.DIDLLiteResource serialize (GUPnP.DIDLLiteResource didl_resource, GLib.HashTable<string,string>? replacements);
		public void set_protocol_info (GUPnP.ProtocolInfo pi);
		public bool supports_arbitrary_byte_seek ();
		public bool supports_arbitrary_time_seek ();
		public bool supports_full_cleartext_byte_seek ();
		public bool supports_limited_byte_seek ();
		public bool supports_limited_cleartext_byte_seek ();
		public bool supports_limited_time_seek ();
		public bool supports_playspeed ();
		public bool supports_transfer_mode (string transfer_mode);
		public string to_string ();
		public int audio_channels { get; set; }
		public int bitrate { get; set; }
		public int bits_per_sample { get; set; }
		public int64 cleartext_size { get; set; }
		public int color_depth { get; set; }
		public GUPnP.DLNAConversion dlna_conversion { get; set; }
		public GUPnP.DLNAFlags dlna_flags { get; set; }
		public GUPnP.DLNAOperation dlna_operation { get; set; }
		public string dlna_profile { get; set; }
		public long duration { get; set; }
		public string extension { get; set; }
		public int height { get; set; }
		public string import_uri { get; set; }
		public string mime_type { get; set; }
		public string network { get; set; }
		public string protocol { get; set; }
		public int sample_freq { get; set; }
		public int64 size { get; set; }
		public string uri { get; set; }
		public int width { get; set; }
	}
	[CCode (cheader_filename = "rygel-server.h")]
	public class MediaServer : Rygel.MediaDevice {
		public MediaServer (string title, Rygel.MediaContainer root_container, Rygel.PluginCapabilities capabilities = PluginCapabilities.NONE);
		public override void constructed ();
		public weak Rygel.MediaContainer root_container { private get; construct; }
	}
	[CCode (cheader_filename = "rygel-server.h")]
	public abstract class MediaServerPlugin : Rygel.Plugin {
		protected MediaServerPlugin (Rygel.MediaContainer root_container, string name, string? description = null, Rygel.PluginCapabilities capabilities = PluginCapabilities.NONE);
		public override void apply_hacks (Rygel.RootDevice device, string description_path) throws GLib.Error;
		public override void constructed ();
		public Rygel.MediaContainer root_container { get; construct; }
		public virtual string search_caps { get; }
		public weak GLib.List<Rygel.DLNAProfile> supported_profiles { get; set construct; }
		public weak GLib.List<Rygel.DLNAProfile> upload_profiles { get; set construct; }
	}
	[CCode (cheader_filename = "rygel-server.h")]
	public class MusicItem : Rygel.AudioItem {
		public new const string UPNP_CLASS;
		public MusicItem (string id, Rygel.MediaContainer parent, string title, string upnp_class = MusicItem.UPNP_CLASS);
		public void lookup_album_art ();
		public Rygel.Thumbnail album_art { get; set; }
		public int track_number { get; set; }
	}
	[CCode (cheader_filename = "rygel-server.h")]
	public class PhotoItem : Rygel.ImageItem {
		public new const string UPNP_CLASS;
		public PhotoItem (string id, Rygel.MediaContainer parent, string title, string upnp_class = PhotoItem.UPNP_CLASS);
	}
	[CCode (cheader_filename = "rygel-server.h")]
	public class PlaySpeed {
		public uint denominator;
		public int numerator;
		public PlaySpeed (int numerator, uint denominator);
		public bool equals (Rygel.PlaySpeed that);
		public PlaySpeed.from_string (string speed) throws Rygel.PlaySpeedError;
		public bool is_normal_rate ();
		public bool is_positive ();
		public double to_double ();
		public float to_float ();
		public string to_string ();
	}
	[CCode (cheader_filename = "rygel-server.h")]
	public class PlaySpeedRequest : GLib.Object {
		public const string PLAYSPEED_HEADER;
		public PlaySpeedRequest (int numerator, uint denominator);
		public bool equals (Rygel.PlaySpeedRequest that);
		public PlaySpeedRequest.from_string (string speed) throws Rygel.PlaySpeedError;
		public static bool supported (Rygel.HTTPGet request);
		public Rygel.PlaySpeed speed { get; private set; }
	}
	[CCode (cheader_filename = "rygel-server.h")]
	public class PlaySpeedResponse : Rygel.HTTPResponseElement {
		public int framerate;
		public const string FRAMERATE_HEADER;
		public const int NO_FRAMERATE;
		public PlaySpeedResponse (int numerator, uint denominator, int framerate);
		public override void add_response_headers (Rygel.HTTPRequest request);
		public bool equals (Rygel.PlaySpeedRequest that);
		public PlaySpeedResponse.from_speed (Rygel.PlaySpeed speed, int framerate) throws Rygel.PlaySpeedError;
		public PlaySpeedResponse.from_string (string speed, int framerate) throws Rygel.PlaySpeedError;
		public override string to_string ();
	}
	[CCode (cheader_filename = "rygel-server.h")]
	public class PlaylistItem : Rygel.MediaFileItem {
		public new const string UPNP_CLASS;
		public PlaylistItem (string id, Rygel.MediaContainer parent, string title, string upnp_class = PlaylistItem.UPNP_CLASS);
	}
	[CCode (cheader_filename = "rygel-server.h")]
	public class RelationalExpression : Rygel.SearchExpression<GUPnP.SearchCriteriaOp,string,string> {
		public RelationalExpression ();
		public bool compare_int (int integer);
		public bool compare_string (string? str);
		public bool compare_uint (uint integer);
		public override bool satisfied_by (Rygel.MediaObject media_object);
		public override string to_string ();
	}
	[CCode (cheader_filename = "rygel-server.h")]
	public abstract class SearchExpression<G,H,I> {
		public G op;
		public H operand1;
		public I operand2;
		protected SearchExpression ();
		public abstract bool satisfied_by (Rygel.MediaObject media_object);
		public abstract string to_string ();
	}
	[CCode (cheader_filename = "rygel-server.h")]
	public class Serializer : GLib.Object {
		public Serializer (Rygel.SerializerType type);
		public GUPnP.DIDLLiteContainer? add_container ();
		public GUPnP.DIDLLiteItem? add_item ();
		public override void constructed ();
		public void filter (string filter_string);
		public string get_string ();
		public Rygel.SerializerType serializer_type { private get; construct; }
	}
	[CCode (cheader_filename = "rygel-server.h")]
	public class SimpleContainer : Rygel.MediaContainer, Rygel.SearchableContainer {
		public Rygel.MediaObjects children;
		public SimpleContainer (string id, Rygel.MediaContainer? parent, string title);
		public void add_child_container (Rygel.MediaContainer child);
		public void add_child_item (Rygel.MediaItem child);
		public void clear ();
		public override void constructed ();
		public override async Rygel.MediaObject? find_object (string id, GLib.Cancellable? cancellable) throws GLib.Error;
		protected Rygel.MediaObjects get_all_children ();
		public override async Rygel.MediaObjects? get_children (uint offset, uint max_count, string sort_criteria, GLib.Cancellable? cancellable) throws GLib.Error;
		protected bool is_child_id_unique (string child_id);
		public void remove_child (Rygel.MediaObject child);
		public SimpleContainer.root (string title);
	}
	[CCode (cheader_filename = "rygel-server.h")]
	public class Subtitle {
		public string caption_type;
		public string file_extension;
		public string mime_type;
		public int64 size;
		public string uri;
		public Subtitle (string mime_type = "text/srt", string caption_type = "srt", string file_extension = "srt");
	}
	[CCode (cheader_filename = "rygel-server.h")]
	public class Thumbnail : Rygel.IconInfo {
		public string dlna_profile;
		public Thumbnail (string mime_type = "image/jpeg", string dlna_profile = "JPEG_TN", string file_extension = "jpg");
	}
	[CCode (cheader_filename = "rygel-server.h")]
	public class VideoItem : Rygel.AudioItem, Rygel.VisualItem {
		public new const string UPNP_CLASS;
		public VideoItem (string id, Rygel.MediaContainer parent, string title, string upnp_class = VideoItem.UPNP_CLASS);
		public override void add_uri (string uri);
		public override void constructed ();
		public string author { get; set; }
		public Gee.ArrayList<Rygel.Subtitle> subtitles { get; protected set; }
	}
	[CCode (cheader_filename = "rygel-server.h")]
	public interface DataSource : GLib.Object {
		public abstract void freeze ();
		public abstract Gee.List<Rygel.HTTPResponseElement>? preroll (Rygel.HTTPSeekRequest? seek, Rygel.PlaySpeedRequest? playspeed) throws GLib.Error;
		public abstract void start () throws GLib.Error;
		public abstract void stop ();
		public abstract void thaw ();
		public signal void data_available (uint8[] data);
		public signal void done ();
		public signal void error (GLib.Error error);
	}
	[CCode (cheader_filename = "rygel-server.h")]
	public interface SearchableContainer : Rygel.MediaContainer {
		public async Rygel.MediaObject? find_object (string id, GLib.Cancellable? cancellable) throws GLib.Error;
		public abstract async Rygel.MediaObjects? search (Rygel.SearchExpression? expression, uint offset, uint max_count, string sort_criteria, GLib.Cancellable? cancellable, out uint total_matches) throws GLib.Error;
		public async Rygel.MediaObjects? simple_search (Rygel.SearchExpression? expression, uint offset, uint max_count, string sort_criteria, GLib.Cancellable? cancellable, out uint total_matches) throws GLib.Error;
		public abstract Gee.ArrayList<string> search_classes { get; set; }
	}
	[CCode (cheader_filename = "rygel-server.h")]
	public interface TrackableContainer : Rygel.MediaContainer {
		protected abstract async void add_child (Rygel.MediaObject object);
		public async void add_child_tracked (Rygel.MediaObject object);
		public async void clear ();
		public virtual string get_service_reset_token ();
		public virtual uint32 get_system_update_id ();
		protected abstract async void remove_child (Rygel.MediaObject object);
		public async void remove_child_tracked (Rygel.MediaObject object);
		public virtual void set_service_reset_token (string token);
		protected signal void child_added (Rygel.MediaObject object);
		protected signal void child_removed (Rygel.MediaObject object);
	}
	[CCode (cheader_filename = "rygel-server.h")]
	public interface TrackableItem : Rygel.MediaItem {
		public void changed ();
	}
	[CCode (cheader_filename = "rygel-server.h")]
	public interface UpdatableObject : Rygel.MediaObject {
		public abstract async void commit () throws GLib.Error;
	}
	[CCode (cheader_filename = "rygel-server.h")]
	public interface VisualItem : Rygel.MediaFileItem {
		public abstract int color_depth { get; set; }
		public abstract int height { get; set; }
		public abstract Gee.ArrayList<Rygel.Thumbnail> thumbnails { get; protected set; }
		public abstract int width { get; set; }
	}
	[CCode (cheader_filename = "rygel-server.h")]
	public interface WritableContainer : Rygel.MediaContainer {
		public const string WRITABLE_SCHEME;
		public abstract async void add_container (Rygel.MediaContainer container, GLib.Cancellable? cancellable) throws GLib.Error;
		public abstract async void add_item (Rygel.MediaFileItem item, GLib.Cancellable? cancellable) throws GLib.Error;
		public virtual async string add_reference (Rygel.MediaObject object, GLib.Cancellable? cancellable) throws GLib.Error;
		public bool can_create (string upnp_class);
		public abstract async void remove_container (string id, GLib.Cancellable? cancellable) throws GLib.Error;
		public abstract async void remove_item (string id, GLib.Cancellable? cancellable) throws GLib.Error;
		public abstract Gee.ArrayList<string> create_classes { get; set; }
	}
	[CCode (cheader_filename = "rygel-server.h")]
	public enum LogicalOperator {
		AND,
		OR
	}
	[CCode (cheader_filename = "rygel-server.h")]
	public enum ObjectEventType {
		ADDED,
		MODIFIED,
		DELETED
	}
	[CCode (cheader_filename = "rygel-server.h")]
	public enum SerializerType {
		GENERIC_DIDL,
		DIDL_S,
		M3UEXT
	}
	[CCode (cheader_filename = "rygel-server.h")]
	public errordomain DataSourceError {
		GENERAL,
		SEEK_FAILED,
		PLAYSPEED_FAILED
	}
	[CCode (cheader_filename = "rygel-server.h")]
	public errordomain HTTPRequestError {
		UNACCEPTABLE,
		BAD_REQUEST,
		NOT_FOUND,
		INTERNAL_SERVER_ERROR
	}
	[CCode (cheader_filename = "rygel-server.h")]
	public errordomain HTTPSeekRequestError {
		INVALID_RANGE,
		BAD_REQUEST,
		OUT_OF_RANGE
	}
	[CCode (cheader_filename = "rygel-server.h")]
	public errordomain MediaEngineError {
		NOT_FOUND
	}
	[CCode (cheader_filename = "rygel-server.h")]
	public errordomain PlaySpeedError {
		INVALID_SPEED_FORMAT,
		SPEED_NOT_PRESENT
	}
	[CCode (cheader_filename = "rygel-server.h")]
	public errordomain WritableContainerError {
		NOT_IMPLEMENTED
	}
}
