/* shumate-0.0.vapi generated by vapigen, do not modify. */

[CCode (cprefix = "Shumate", gir_namespace = "Shumate", gir_version = "0.0", lower_case_cprefix = "shumate_")]
namespace Shumate {
	[CCode (cheader_filename = "shumate/shumate.h", type_id = "shumate_compass_get_type ()")]
	public class Compass : Gtk.Widget, Gtk.Accessible, Gtk.Buildable, Gtk.ConstraintTarget {
		[CCode (has_construct_function = false)]
		public Compass (Shumate.Viewport? viewport);
		public unowned Shumate.Viewport? get_viewport ();
		public void set_viewport (Shumate.Viewport? viewport);
		public Shumate.Viewport viewport { get; set; }
	}
	[CCode (cheader_filename = "shumate/shumate.h", type_id = "shumate_coordinate_get_type ()")]
	public class Coordinate : GLib.InitiallyUnowned, Shumate.Location {
		[CCode (has_construct_function = false)]
		public Coordinate ();
		[CCode (has_construct_function = false)]
		public Coordinate.full (double latitude, double longitude);
	}
	[CCode (cheader_filename = "shumate/shumate.h", type_id = "shumate_data_source_get_type ()")]
	public class DataSource : GLib.Object {
		[CCode (has_construct_function = false)]
		protected DataSource ();
		public virtual async GLib.Bytes? get_tile_data_async (int x, int y, int zoom_level, GLib.Cancellable? cancellable) throws GLib.Error;
		public signal void received_data (int x, int y, int zoom_level, GLib.Bytes bytes);
	}
	[CCode (cheader_filename = "shumate/shumate.h", type_id = "shumate_file_cache_get_type ()")]
	public class FileCache : GLib.Object {
		[CCode (has_construct_function = false)]
		protected FileCache ();
		[CCode (has_construct_function = false)]
		public FileCache.full (uint size_limit, string cache_key, string? cache_dir);
		public unowned string get_cache_dir ();
		public unowned string get_cache_key ();
		public uint get_size_limit ();
		[CCode (async_result_pos = 3.1)]
		public async GLib.Bytes get_tile_async (int x, int y, int zoom_level, GLib.Cancellable? cancellable, out string? etag, out GLib.DateTime? modtime) throws GLib.Error;
		public void mark_up_to_date (int x, int y, int zoom_level);
		public async bool purge_cache_async (GLib.Cancellable? cancellable) throws GLib.Error;
		public void set_size_limit (uint size_limit);
		public async bool store_tile_async (int x, int y, int zoom_level, GLib.Bytes bytes, string? etag, GLib.Cancellable? cancellable) throws GLib.Error;
		public string cache_dir { get; construct; }
		public string cache_key { get; construct; }
		public uint size_limit { get; set construct; }
	}
	[CCode (cheader_filename = "shumate/shumate.h", type_id = "shumate_layer_get_type ()")]
	public abstract class Layer : Gtk.Widget, Gtk.Accessible, Gtk.Buildable, Gtk.ConstraintTarget {
		[CCode (has_construct_function = false)]
		protected Layer ();
		public virtual unowned string? get_license ();
		public virtual unowned string? get_license_uri ();
		public unowned Shumate.Viewport get_viewport ();
		public string license { get; }
		public string license_uri { get; }
		public Shumate.Viewport viewport { get; construct; }
	}
	[CCode (cheader_filename = "shumate/shumate.h", type_id = "shumate_license_get_type ()")]
	public class License : Gtk.Widget, Gtk.Accessible, Gtk.Buildable, Gtk.ConstraintTarget {
		[CCode (has_construct_function = false)]
		public License ();
		public unowned string get_extra_text ();
		public unowned Shumate.Map? get_map ();
		public float get_xalign ();
		public void set_extra_text (string text);
		public void set_map (Shumate.Map? map);
		public void set_xalign (float xalign);
		public string extra_text { get; set; }
		public Shumate.Map map { get; set; }
		public float xalign { get; set; }
	}
	[CCode (cheader_filename = "shumate/shumate.h", type_id = "shumate_map_get_type ()")]
	public class Map : Gtk.Widget, Gtk.Accessible, Gtk.Buildable, Gtk.ConstraintTarget {
		[CCode (has_construct_function = false)]
		public Map ();
		public void add_layer (Shumate.Layer layer);
		public void center_on (double latitude, double longitude);
		public bool get_animate_zoom ();
		public uint get_go_to_duration ();
		public GLib.List<weak Shumate.Layer> get_layers ();
		public Shumate.State get_state ();
		public unowned Shumate.Viewport get_viewport ();
		public bool get_zoom_on_double_click ();
		public void go_to (double latitude, double longitude);
		public void insert_layer_above (Shumate.Layer layer, Shumate.Layer? next_sibling);
		public void insert_layer_behind (Shumate.Layer layer, Shumate.Layer? next_sibling);
		public void remove_layer (Shumate.Layer layer);
		public void set_animate_zoom (bool value);
		public void set_go_to_duration (uint duration);
		public void set_map_source (Shumate.MapSource map_source);
		public void set_zoom_on_double_click (bool value);
		[CCode (has_construct_function = false)]
		public Map.simple ();
		public void stop_go_to ();
		public bool animate_zoom { get; set; }
		public uint go_to_duration { get; set; }
		public Shumate.State state { get; }
		public Shumate.Viewport viewport { get; }
		public bool zoom_on_double_click { get; set; }
		public signal void animation_completed ();
		public signal void layers_changed ();
	}
	[CCode (cheader_filename = "shumate/shumate.h", type_id = "shumate_map_layer_get_type ()")]
	public class MapLayer : Shumate.Layer, Gtk.Accessible, Gtk.Buildable, Gtk.ConstraintTarget {
		[CCode (has_construct_function = false)]
		public MapLayer (Shumate.MapSource map_source, Shumate.Viewport viewport);
		[NoAccessorMethod]
		public Shumate.MapSource map_source { owned get; construct; }
	}
	[CCode (cheader_filename = "shumate/shumate.h", type_id = "shumate_map_source_get_type ()")]
	public abstract class MapSource : GLib.Object {
		[CCode (has_construct_function = false)]
		protected MapSource ();
		public virtual async bool fill_tile_async (Shumate.Tile tile, GLib.Cancellable? cancellable) throws GLib.Error;
		public uint get_column_count (uint zoom_level);
		public unowned string get_id ();
		public double get_latitude (double zoom_level, double y);
		public unowned string get_license ();
		public unowned string get_license_uri ();
		public double get_longitude (double zoom_level, double x);
		public uint get_max_zoom_level ();
		public double get_meters_per_pixel (double zoom_level, double latitude, double longitude);
		public uint get_min_zoom_level ();
		public unowned string get_name ();
		public Shumate.MapProjection get_projection ();
		public uint get_row_count (uint zoom_level);
		public uint get_tile_size ();
		public double get_tile_size_at_zoom (double zoom_level);
		public double get_x (double zoom_level, double longitude);
		public double get_y (double zoom_level, double latitude);
		public void set_id (string id);
		public void set_license (string license);
		public void set_license_uri (string license_uri);
		public void set_max_zoom_level (uint zoom_level);
		public void set_min_zoom_level (uint zoom_level);
		public void set_name (string name);
		public void set_projection (Shumate.MapProjection projection);
		public void set_tile_size (uint tile_size);
		public string id { get; set construct; }
		public string license { get; set construct; }
		public string license_uri { get; set construct; }
		public uint max_zoom_level { get; set construct; }
		public uint min_zoom_level { get; set construct; }
		public string name { get; set construct; }
		public Shumate.MapProjection projection { get; set construct; }
		public uint tile_size { get; set construct; }
	}
	[CCode (cheader_filename = "shumate/shumate.h", type_id = "shumate_map_source_registry_get_type ()")]
	public class MapSourceRegistry : GLib.Object, GLib.ListModel {
		[CCode (has_construct_function = false)]
		public MapSourceRegistry ();
		public void add (owned Shumate.MapSource map_source);
		public unowned Shumate.MapSource? get_by_id (string id);
		public void populate_defaults ();
		public void remove (string id);
		[CCode (has_construct_function = false)]
		public MapSourceRegistry.with_defaults ();
	}
	[CCode (cheader_filename = "shumate/shumate.h", type_id = "shumate_marker_get_type ()")]
	public class Marker : Gtk.Widget, Gtk.Accessible, Gtk.Buildable, Gtk.ConstraintTarget, Shumate.Location {
		[CCode (has_construct_function = false)]
		public Marker ();
		public void animate_in ();
		public void animate_in_with_delay (uint delay);
		public void animate_out ();
		public void animate_out_with_delay (uint delay);
		public unowned Gtk.Widget? get_child ();
		public bool get_draggable ();
		public bool get_selectable ();
		public bool is_selected ();
		public void set_child (Gtk.Widget? child);
		public void set_draggable (bool value);
		public void set_selectable (bool value);
		public Gtk.Widget child { get; set; }
		public bool draggable { get; set; }
		public bool selectable { get; set; }
	}
	[CCode (cheader_filename = "shumate/shumate.h", type_id = "shumate_marker_layer_get_type ()")]
	public class MarkerLayer : Shumate.Layer, Gtk.Accessible, Gtk.Buildable, Gtk.ConstraintTarget {
		[CCode (has_construct_function = false)]
		public MarkerLayer (Shumate.Viewport viewport);
		public void add_marker (Shumate.Marker marker);
		public void animate_in_all_markers ();
		public void animate_out_all_markers ();
		[CCode (has_construct_function = false)]
		public MarkerLayer.full (Shumate.Viewport viewport, Gtk.SelectionMode mode);
		public GLib.List<weak Shumate.Marker> get_markers ();
		public GLib.List<weak Shumate.Marker> get_selected ();
		public Gtk.SelectionMode get_selection_mode ();
		public void hide_all_markers ();
		public void remove_all ();
		public void remove_marker (Shumate.Marker marker);
		public void select_all_markers ();
		public bool select_marker (Shumate.Marker marker);
		public void set_all_markers_draggable ();
		public void set_all_markers_undraggable ();
		public void set_selection_mode (Gtk.SelectionMode mode);
		public void show_all_markers ();
		public void unselect_all_markers ();
		public void unselect_marker (Shumate.Marker marker);
		public Gtk.SelectionMode selection_mode { get; set; }
		public signal void marker_selected (Shumate.Marker marker);
		public signal void marker_unselected (Shumate.Marker marker);
	}
	[CCode (cheader_filename = "shumate/shumate.h", type_id = "shumate_memory_cache_get_type ()")]
	public class MemoryCache : GLib.Object {
		[CCode (has_construct_function = false)]
		protected MemoryCache ();
		public void clean ();
		[CCode (has_construct_function = false)]
		public MemoryCache.full (uint size_limit);
		public uint get_size_limit ();
		public void set_size_limit (uint size_limit);
		public void store_texture (Shumate.Tile tile, Gdk.Texture texture, string source_id);
		public bool try_fill_tile (Shumate.Tile tile, string source_id);
		public uint size_limit { get; set construct; }
	}
	[CCode (cheader_filename = "shumate/shumate.h", type_id = "shumate_path_layer_get_type ()")]
	public class PathLayer : Shumate.Layer, Gtk.Accessible, Gtk.Buildable, Gtk.ConstraintTarget {
		[CCode (has_construct_function = false)]
		public PathLayer (Shumate.Viewport viewport);
		public void add_node (Shumate.Location location);
		public bool get_closed ();
		public GLib.List<uint> get_dash ();
		public bool get_fill ();
		public Gdk.RGBA? get_fill_color ();
		public GLib.List<weak Shumate.Location> get_nodes ();
		public Gdk.RGBA? get_outline_color ();
		public double get_outline_width ();
		public bool get_stroke ();
		public Gdk.RGBA? get_stroke_color ();
		public double get_stroke_width ();
		public void insert_node (Shumate.Location location, uint position);
		public void remove_all ();
		public void remove_node (Shumate.Location location);
		public void set_closed (bool value);
		public void set_dash (GLib.List<uint> dash_pattern);
		public void set_fill (bool value);
		public void set_fill_color (Gdk.RGBA? color);
		public void set_outline_color (Gdk.RGBA? color);
		public void set_outline_width (double value);
		public void set_stroke (bool value);
		public void set_stroke_color (Gdk.RGBA? color);
		public void set_stroke_width (double value);
		public bool closed { get; set; }
		public bool fill { get; set; }
		public Gdk.RGBA fill_color { owned get; set; }
		public Gdk.RGBA outline_color { owned get; set; }
		public double outline_width { get; set; }
		public bool stroke { get; set; }
		public Gdk.RGBA stroke_color { owned get; set; }
		public double stroke_width { get; set; }
	}
	[CCode (cheader_filename = "shumate/shumate.h", type_id = "shumate_point_get_type ()")]
	public class Point : Shumate.Marker, Gtk.Accessible, Gtk.Buildable, Gtk.ConstraintTarget, Shumate.Location {
		[CCode (has_construct_function = false, type = "ShumateMarker*")]
		public Point ();
	}
	[CCode (cheader_filename = "shumate/shumate.h", type_id = "shumate_raster_renderer_get_type ()")]
	public class RasterRenderer : Shumate.MapSource {
		[CCode (has_construct_function = false)]
		public RasterRenderer (Shumate.DataSource data_source);
		[CCode (has_construct_function = false)]
		public RasterRenderer.from_url (string url_template);
		[CCode (has_construct_function = false)]
		public RasterRenderer.full (string id, string name, string license, string license_uri, uint min_zoom, uint max_zoom, uint tile_size, Shumate.MapProjection projection, Shumate.DataSource data_source);
		[CCode (has_construct_function = false)]
		public RasterRenderer.full_from_url (string id, string name, string license, string license_uri, uint min_zoom, uint max_zoom, uint tile_size, Shumate.MapProjection projection, string url_template);
		[NoAccessorMethod]
		public Shumate.DataSource data_source { owned get; construct; }
	}
	[CCode (cheader_filename = "shumate/shumate.h", type_id = "shumate_scale_get_type ()")]
	public class Scale : Gtk.Widget, Gtk.Accessible, Gtk.Buildable, Gtk.ConstraintTarget {
		[CCode (has_construct_function = false)]
		public Scale (Shumate.Viewport? viewport);
		public uint get_max_width ();
		public Shumate.Unit get_unit ();
		public unowned Shumate.Viewport? get_viewport ();
		public void set_max_width (uint value);
		public void set_unit (Shumate.Unit unit);
		public void set_viewport (Shumate.Viewport? viewport);
		public uint max_width { get; set; }
		public Shumate.Unit unit { get; set; }
		public Shumate.Viewport viewport { get; set; }
	}
	[CCode (cheader_filename = "shumate/shumate.h", type_id = "shumate_tile_get_type ()")]
	public class Tile : Gtk.Widget, Gtk.Accessible, Gtk.Buildable, Gtk.ConstraintTarget {
		[CCode (has_construct_function = false)]
		public Tile ();
		[CCode (has_construct_function = false)]
		public Tile.full (uint x, uint y, uint size, uint zoom_level);
		public unowned string get_etag ();
		public bool get_fade_in ();
		public GLib.DateTime get_modified_time ();
		public uint get_size ();
		public Shumate.State get_state ();
		public unowned Gdk.Texture? get_texture ();
		public uint get_x ();
		public uint get_y ();
		public uint get_zoom_level ();
		public void set_etag (string etag);
		public void set_fade_in (bool fade_in);
		public void set_modified_time (GLib.DateTime modified_time);
		public void set_size (uint size);
		public void set_state (Shumate.State state);
		public void set_texture (Gdk.Texture texture);
		public void set_x (uint x);
		public void set_y (uint y);
		public void set_zoom_level (uint zoom_level);
		public bool fade_in { get; set; }
		public uint size { get; set; }
		public Shumate.State state { get; set; }
		public Gdk.Texture texture { get; set; }
		public uint x { get; set; }
		public uint y { get; set; }
		public uint zoom_level { get; set; }
	}
	[CCode (cheader_filename = "shumate/shumate.h", type_id = "shumate_tile_downloader_get_type ()")]
	public class TileDownloader : Shumate.DataSource {
		[CCode (has_construct_function = false)]
		public TileDownloader (string url_template);
		[NoAccessorMethod]
		public string url_template { owned get; construct; }
	}
	[CCode (cheader_filename = "shumate/shumate.h", type_id = "shumate_vector_renderer_get_type ()")]
	public class VectorRenderer : Shumate.MapSource, GLib.Initable {
		[CCode (has_construct_function = false)]
		public VectorRenderer (Shumate.DataSource data_source, string style_json) throws GLib.Error;
		[CCode (has_construct_function = false)]
		public VectorRenderer.from_url (string url_template, string style_json) throws GLib.Error;
		[CCode (has_construct_function = false)]
		public VectorRenderer.full (string id, string name, string license, string license_uri, uint min_zoom, uint max_zoom, uint tile_size, Shumate.MapProjection projection, Shumate.DataSource data_source, string style_json) throws GLib.Error;
		[CCode (has_construct_function = false)]
		public VectorRenderer.full_from_url (string id, string name, string license, string license_uri, uint min_zoom, uint max_zoom, uint tile_size, Shumate.MapProjection projection, string url_template, string style_json) throws GLib.Error;
		public static bool is_supported ();
		[NoAccessorMethod]
		public Shumate.DataSource data_source { owned get; construct; }
		[NoAccessorMethod]
		public string style_json { owned get; construct; }
	}
	[CCode (cheader_filename = "shumate/shumate.h", type_id = "shumate_viewport_get_type ()")]
	public class Viewport : GLib.Object, Shumate.Location {
		[CCode (has_construct_function = false)]
		public Viewport ();
		public uint get_max_zoom_level ();
		public uint get_min_zoom_level ();
		public unowned Shumate.MapSource? get_reference_map_source ();
		public double get_rotation ();
		public double get_zoom_level ();
		public void location_to_widget_coords (Gtk.Widget widget, double latitude, double longitude, out double x, out double y);
		public void set_max_zoom_level (uint max_zoom_level);
		public void set_min_zoom_level (uint min_zoom_level);
		public void set_reference_map_source (Shumate.MapSource? map_source);
		public void set_rotation (double rotation);
		public void set_zoom_level (double zoom_level);
		public void widget_coords_to_location (Gtk.Widget widget, double x, double y, out double latitude, out double longitude);
		public void zoom_in ();
		public void zoom_out ();
		public uint max_zoom_level { get; set; }
		public uint min_zoom_level { get; set; }
		public Shumate.MapSource reference_map_source { get; set; }
		public double rotation { get; set; }
		public double zoom_level { get; set; }
	}
	[CCode (cheader_filename = "shumate/shumate.h", type_cname = "ShumateLocationInterface", type_id = "shumate_location_get_type ()")]
	public interface Location : GLib.Object {
		public abstract double get_latitude ();
		public abstract double get_longitude ();
		public abstract void set_location (double latitude, double longitude);
		[NoAccessorMethod]
		public abstract double latitude { get; set; }
		[NoAccessorMethod]
		public abstract double longitude { get; set; }
	}
	[CCode (cheader_filename = "shumate/shumate.h", cprefix = "SHUMATE_MAP_PROJECTION_", type_id = "shumate_map_projection_get_type ()")]
	public enum MapProjection {
		MERCATOR
	}
	[CCode (cheader_filename = "shumate/shumate.h", cprefix = "SHUMATE_STATE_", type_id = "shumate_state_get_type ()")]
	public enum State {
		NONE,
		LOADING,
		LOADED,
		DONE
	}
	[CCode (cheader_filename = "shumate/shumate.h", cprefix = "SHUMATE_UNIT_", type_id = "shumate_unit_get_type ()")]
	public enum Unit {
		BOTH,
		METRIC,
		IMPERIAL
	}
	[CCode (cheader_filename = "shumate/shumate.h", cprefix = "SHUMATE_FILE_CACHE_ERROR_")]
	public errordomain FileCacheError {
		FAILED;
		public static GLib.Quark quark ();
	}
	[CCode (cheader_filename = "shumate/shumate.h", cprefix = "SHUMATE_STYLE_ERROR_")]
	public errordomain StyleError {
		FAILED,
		MALFORMED_STYLE,
		UNSUPPORTED_LAYER,
		INVALID_EXPRESSION,
		SUPPORT_OMITTED;
		public static GLib.Quark quark ();
	}
	[CCode (cheader_filename = "shumate/shumate.h", cprefix = "SHUMATE_TILE_DOWNLOADER_ERROR_")]
	public errordomain TileDownloaderError {
		FAILED,
		BAD_RESPONSE,
		COULD_NOT_CONNECT,
		MALFORMED_URL,
		OFFLINE;
		public static GLib.Quark quark ();
	}
	[CCode (cheader_filename = "shumate/shumate.h", cname = "SHUMATE_MAJOR_VERSION")]
	public const int MAJOR_VERSION;
	[CCode (cheader_filename = "shumate/shumate.h", cname = "SHUMATE_MAP_SOURCE_MFF_RELIEF")]
	public const string MAP_SOURCE_MFF_RELIEF;
	[CCode (cheader_filename = "shumate/shumate.h", cname = "SHUMATE_MAP_SOURCE_OSM_CYCLE_MAP")]
	public const string MAP_SOURCE_OSM_CYCLE_MAP;
	[CCode (cheader_filename = "shumate/shumate.h", cname = "SHUMATE_MAP_SOURCE_OSM_MAPNIK")]
	public const string MAP_SOURCE_OSM_MAPNIK;
	[CCode (cheader_filename = "shumate/shumate.h", cname = "SHUMATE_MAP_SOURCE_OSM_TRANSPORT_MAP")]
	public const string MAP_SOURCE_OSM_TRANSPORT_MAP;
	[CCode (cheader_filename = "shumate/shumate.h", cname = "SHUMATE_MAP_SOURCE_OWM_CLOUDS")]
	public const string MAP_SOURCE_OWM_CLOUDS;
	[CCode (cheader_filename = "shumate/shumate.h", cname = "SHUMATE_MAP_SOURCE_OWM_PRECIPITATION")]
	public const string MAP_SOURCE_OWM_PRECIPITATION;
	[CCode (cheader_filename = "shumate/shumate.h", cname = "SHUMATE_MAP_SOURCE_OWM_PRESSURE")]
	public const string MAP_SOURCE_OWM_PRESSURE;
	[CCode (cheader_filename = "shumate/shumate.h", cname = "SHUMATE_MAP_SOURCE_OWM_TEMPERATURE")]
	public const string MAP_SOURCE_OWM_TEMPERATURE;
	[CCode (cheader_filename = "shumate/shumate.h", cname = "SHUMATE_MAP_SOURCE_OWM_WIND")]
	public const string MAP_SOURCE_OWM_WIND;
	[CCode (cheader_filename = "shumate/shumate.h", cname = "SHUMATE_MAX_LATITUDE")]
	public const double MAX_LATITUDE;
	[CCode (cheader_filename = "shumate/shumate.h", cname = "SHUMATE_MAX_LONGITUDE")]
	public const double MAX_LONGITUDE;
	[CCode (cheader_filename = "shumate/shumate.h", cname = "SHUMATE_MICRO_VERSION")]
	public const int MICRO_VERSION;
	[CCode (cheader_filename = "shumate/shumate.h", cname = "SHUMATE_MINOR_VERSION")]
	public const int MINOR_VERSION;
	[CCode (cheader_filename = "shumate/shumate.h", cname = "SHUMATE_MIN_LATITUDE")]
	public const double MIN_LATITUDE;
	[CCode (cheader_filename = "shumate/shumate.h", cname = "SHUMATE_MIN_LONGITUDE")]
	public const double MIN_LONGITUDE;
	[CCode (cheader_filename = "shumate/shumate.h")]
	[Version (replacement = "FileCacheError.quark")]
	public static GLib.Quark file_cache_error_quark ();
	[CCode (cheader_filename = "shumate/shumate.h")]
	[Version (replacement = "StyleError.quark")]
	public static GLib.Quark style_error_quark ();
	[CCode (cheader_filename = "shumate/shumate.h")]
	[Version (replacement = "TileDownloaderError.quark")]
	public static GLib.Quark tile_downloader_error_quark ();
}
