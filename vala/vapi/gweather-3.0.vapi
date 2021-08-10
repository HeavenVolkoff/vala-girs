/* gweather-3.0.vapi generated by vapigen, do not modify. */

[CCode (cprefix = "GWeather", gir_namespace = "GWeather", gir_version = "3.0", lower_case_cprefix = "gweather_")]
namespace GWeather {
	[CCode (cheader_filename = "libgweather/gweather.h", type_id = "gweather_info_get_type ()")]
	public class Info : GLib.Object {
		[CCode (has_construct_function = false)]
		public Info (GWeather.Location? location);
		public void abort ();
		public string get_apparent ();
		public unowned string get_application_id ();
		public unowned string get_attribution ();
		public string get_conditions ();
		public unowned string get_contact_info ();
		public string get_dew ();
		public GWeather.Provider get_enabled_providers ();
		public unowned GLib.SList<GWeather.Info> get_forecast_list ();
		public string get_humidity ();
		public unowned string get_icon_name ();
		public unowned GWeather.Location get_location ();
		public string get_location_name ();
		public string get_pressure ();
		public unowned Gdk.PixbufAnimation get_radar ();
		public string get_sky ();
		public string get_sunrise ();
		public string get_sunset ();
		public unowned string get_symbolic_icon_name ();
		public string get_temp ();
		public string get_temp_max ();
		public string get_temp_min ();
		public string get_temp_summary ();
		public bool get_upcoming_moonphases ([CCode (array_length = false)] out ulong phases[4]);
		public string get_update ();
		public bool get_value_apparent (GWeather.TemperatureUnit unit, out double value);
		public bool get_value_conditions (out GWeather.ConditionPhenomenon phenomenon, out GWeather.ConditionQualifier qualifier);
		public bool get_value_dew (GWeather.TemperatureUnit unit, out double value);
		public bool get_value_moonphase (out GWeather.MoonPhase value, out GWeather.MoonLatitude lat);
		public bool get_value_pressure (GWeather.PressureUnit unit, out double value);
		public bool get_value_sky (out GWeather.Sky sky);
		public bool get_value_sunrise (out ulong value);
		public bool get_value_sunset (out ulong value);
		public bool get_value_temp (GWeather.TemperatureUnit unit, out double value);
		public bool get_value_temp_max (GWeather.TemperatureUnit unit, out double value);
		public bool get_value_temp_min (GWeather.TemperatureUnit unit, out double value);
		public bool get_value_update (out long value);
		public bool get_value_visibility (GWeather.DistanceUnit unit, out double value);
		public bool get_value_wind (GWeather.SpeedUnit unit, out double speed, out GWeather.WindDirection direction);
		public string get_visibility ();
		public string get_weather_summary ();
		public string get_wind ();
		public bool is_daytime ();
		public bool is_valid ();
		public bool network_error ();
		public int next_sun_event ();
		public void set_application_id (string application_id);
		public void set_contact_info (string contact_info);
		public void set_enabled_providers (GWeather.Provider providers);
		public void set_location (GWeather.Location? location);
		public static void store_cache ();
		public void update ();
		public string application_id { get; set; }
		public string contact_info { get; set; }
		public GWeather.Provider enabled_providers { get; set; }
		public GWeather.Location location { get; set construct; }
		public signal void updated ();
	}
	[CCode (cheader_filename = "libgweather/gweather.h", ref_function = "gweather_location_ref", type_id = "gweather_location_get_type ()", unref_function = "gweather_location_unref")]
	[Compact]
	public class Location {
		public GWeather.Location deserialize (GLib.Variant serialized);
		[CCode (has_construct_function = false)]
		public Location.detached (string name, string? icao, double latitude, double longitude);
		[Version (since = "3.12")]
		public async GWeather.Location detect_nearest_city (double lat, double lon, GLib.Cancellable? cancellable) throws GLib.Error;
		public bool equal (GWeather.Location two);
		public GWeather.Location find_by_country_code (string country_code);
		public GWeather.Location find_by_station_code (string station_code);
		[Version (since = "3.12")]
		public GWeather.Location find_nearest_city (double lat, double lon);
		[Version (since = "3.12")]
		public GWeather.Location find_nearest_city_full (double lat, double lon, owned GWeather.FilterFunc? func);
		public void free_timezones (GWeather.Timezone zones);
		[CCode (array_length = false, array_null_terminated = true)]
		[Version (deprecated = true, deprecated_since = "40.")]
		public unowned GWeather.Location[] get_children ();
		public string? get_city_name ();
		public unowned string? get_code ();
		public void get_coords (out double latitude, out double longitude);
		public unowned string? get_country ();
		public string? get_country_name ();
		public double get_distance (GWeather.Location loc2);
		[Version (since = "3.36")]
		public unowned string get_english_name ();
		[Version (since = "3.38")]
		public unowned string get_english_sort_name ();
		public GWeather.LocationLevel get_level ();
		public unowned string get_name ();
		public GWeather.Location? get_parent ();
		public unowned string get_sort_name ();
		public unowned GWeather.Timezone? get_timezone ();
		public unowned string? get_timezone_str ();
		[CCode (array_length = false, array_null_terminated = true)]
		public GWeather.Timezone[] get_timezones ();
		public static GWeather.Location? get_world ();
		public bool has_coords ();
		[Version (since = "40")]
		public GWeather.Location? next_child (owned GWeather.Location? child);
		public GWeather.Location @ref ();
		public unowned GLib.Variant serialize ();
		public void unref ();
	}
	[CCode (cheader_filename = "libgweather/gweather.h", type_id = "gweather_location_entry_get_type ()")]
	public class LocationEntry : Gtk.SearchEntry, Atk.Implementor, Gtk.Buildable, Gtk.CellEditable, Gtk.Editable {
		[CCode (has_construct_function = false, type = "GtkWidget*")]
		public LocationEntry (GWeather.Location top);
		public GWeather.Location? get_location ();
		public bool has_custom_text ();
		public bool set_city (string? city_name, string code);
		public void set_location (GWeather.Location? loc);
		public GWeather.Location location { owned get; set; }
		[NoAccessorMethod]
		public bool show_named_timezones { get; construct; }
		[NoAccessorMethod]
		public GWeather.Location top { construct; }
	}
	[CCode (cheader_filename = "libgweather/gweather.h", ref_function = "gweather_timezone_ref", type_id = "gweather_timezone_get_type ()", unref_function = "gweather_timezone_unref")]
	[Compact]
	public class Timezone {
		[Version (since = "3.12")]
		public static GWeather.Timezone get_by_tzid (string tzid);
		public int get_dst_offset ();
		public unowned string get_name ();
		public int get_offset ();
		public unowned string get_tzid ();
		public static GWeather.Timezone get_utc ();
		public bool has_dst ();
		public GWeather.Timezone @ref ();
		public void unref ();
	}
	[CCode (cheader_filename = "libgweather/gweather.h", type_id = "gweather_timezone_menu_get_type ()")]
	public class TimezoneMenu : Gtk.ComboBox, Atk.Implementor, Gtk.Buildable, Gtk.CellEditable, Gtk.CellLayout {
		[CCode (has_construct_function = false, type = "GtkWidget*")]
		public TimezoneMenu (GWeather.Location top);
		public unowned string? get_tzid ();
		public void set_tzid (string? tzid);
		[NoAccessorMethod]
		public GWeather.Location top { construct; }
		public string tzid { get; set; }
	}
	[CCode (cheader_filename = "libgweather/gweather.h", has_type_id = false)]
	public struct Conditions {
		public bool significant;
		public GWeather.ConditionPhenomenon phenomenon;
		public GWeather.ConditionQualifier qualifier;
		public unowned string to_string ();
		public unowned string to_string_full (GWeather.FormatOptions options);
	}
	[CCode (cheader_filename = "libgweather/gweather.h")]
	[SimpleType]
	public struct MoonLatitude : double {
	}
	[CCode (cheader_filename = "libgweather/gweather.h")]
	[SimpleType]
	public struct MoonPhase : double {
	}
	[CCode (cheader_filename = "libgweather/gweather.h", cprefix = "GWEATHER_PHENOMENON_", type_id = "gweather_phenomenon_get_type ()")]
	public enum ConditionPhenomenon {
		INVALID,
		NONE,
		DRIZZLE,
		RAIN,
		SNOW,
		SNOW_GRAINS,
		ICE_CRYSTALS,
		ICE_PELLETS,
		HAIL,
		SMALL_HAIL,
		UNKNOWN_PRECIPITATION,
		MIST,
		FOG,
		SMOKE,
		VOLCANIC_ASH,
		SAND,
		HAZE,
		SPRAY,
		DUST,
		SQUALL,
		SANDSTORM,
		DUSTSTORM,
		FUNNEL_CLOUD,
		TORNADO,
		DUST_WHIRLS,
		LAST
	}
	[CCode (cheader_filename = "libgweather/gweather.h", cprefix = "GWEATHER_QUALIFIER_", type_id = "gweather_qualifier_get_type ()")]
	public enum ConditionQualifier {
		INVALID,
		NONE,
		VICINITY,
		LIGHT,
		MODERATE,
		HEAVY,
		SHALLOW,
		PATCHES,
		PARTIAL,
		THUNDERSTORM,
		BLOWING,
		SHOWERS,
		DRIFTING,
		FREEZING,
		LAST
	}
	[CCode (cheader_filename = "libgweather/gweather.h", cprefix = "GWEATHER_DISTANCE_UNIT_", type_id = "gweather_distance_unit_get_type ()")]
	public enum DistanceUnit {
		INVALID,
		DEFAULT,
		METERS,
		KM,
		MILES
	}
	[CCode (cheader_filename = "libgweather/gweather.h", cprefix = "GWEATHER_FORMAT_OPTION_", type_id = "gweather_format_options_get_type ()")]
	[Flags]
	public enum FormatOptions {
		DEFAULT,
		SENTENCE_CAPITALIZATION,
		NO_CAPITALIZATION
	}
	[CCode (cheader_filename = "libgweather/gweather.h", cprefix = "GWEATHER_LOCATION_", type_id = "gweather_location_level_get_type ()")]
	public enum LocationLevel {
		WORLD,
		REGION,
		COUNTRY,
		ADM1,
		CITY,
		WEATHER_STATION,
		DETACHED,
		NAMED_TIMEZONE;
		public unowned string to_string ();
	}
	[CCode (cheader_filename = "libgweather/gweather.h", cprefix = "GWEATHER_PRESSURE_UNIT_", type_id = "gweather_pressure_unit_get_type ()")]
	public enum PressureUnit {
		INVALID,
		DEFAULT,
		KPA,
		HPA,
		MB,
		MM_HG,
		INCH_HG,
		ATM
	}
	[CCode (cheader_filename = "libgweather/gweather.h", cprefix = "GWEATHER_PROVIDER_", type_id = "gweather_provider_get_type ()")]
	[Flags]
	public enum Provider {
		NONE,
		METAR,
		IWIN,
		YAHOO,
		MET_NO,
		OWM,
		ALL
	}
	[CCode (cheader_filename = "libgweather/gweather.h", cprefix = "GWEATHER_SKY_", type_id = "gweather_sky_get_type ()")]
	public enum Sky {
		INVALID,
		CLEAR,
		BROKEN,
		SCATTERED,
		FEW,
		OVERCAST,
		LAST;
		public unowned string to_string ();
		public unowned string to_string_full (GWeather.FormatOptions options);
	}
	[CCode (cheader_filename = "libgweather/gweather.h", cprefix = "GWEATHER_SPEED_UNIT_", type_id = "gweather_speed_unit_get_type ()")]
	public enum SpeedUnit {
		INVALID,
		DEFAULT,
		MS,
		KPH,
		MPH,
		KNOTS,
		BFT;
		public unowned string to_string ();
	}
	[CCode (cheader_filename = "libgweather/gweather.h", cprefix = "GWEATHER_TEMP_UNIT_", type_id = "gweather_temperature_unit_get_type ()")]
	public enum TemperatureUnit {
		INVALID,
		DEFAULT,
		KELVIN,
		CENTIGRADE,
		FAHRENHEIT;
		public GWeather.TemperatureUnit to_real ();
	}
	[CCode (cheader_filename = "libgweather/gweather.h", cprefix = "GWEATHER_WIND_", type_id = "gweather_wind_direction_get_type ()")]
	public enum WindDirection {
		INVALID,
		VARIABLE,
		N,
		NNE,
		NE,
		ENE,
		E,
		ESE,
		SE,
		SSE,
		S,
		SSW,
		SW,
		WSW,
		W,
		WNW,
		NW,
		NNW,
		LAST;
		public unowned string to_string ();
		public unowned string to_string_full (GWeather.FormatOptions options);
	}
	[CCode (cheader_filename = "libgweather/gweather.h", instance_pos = 1.9)]
	public delegate bool FilterFunc (GWeather.Location location);
	[CCode (cheader_filename = "libgweather/gweather.h", cname = "GWEATHER_LOCATION_ENTRY_H")]
	public const int LOCATION_ENTRY_H;
	[CCode (cheader_filename = "libgweather/gweather.h", cname = "GWEATHER_TIMEZONE_MENU_H")]
	public const int TIMEZONE_MENU_H;
	[CCode (cheader_filename = "libgweather/gweather.h")]
	[Version (replacement = "Location.detect_nearest_city_finish")]
	public static GWeather.Location location_detect_nearest_city_finish (GLib.AsyncResult result) throws GLib.Error;
	[CCode (cheader_filename = "libgweather/gweather.h")]
	[Version (replacement = "Location.get_world")]
	public static GWeather.Location? location_get_world ();
	[CCode (cheader_filename = "libgweather/gweather.h")]
	[Version (replacement = "LocationLevel.to_string")]
	public static unowned string location_level_to_string (GWeather.LocationLevel level);
	[CCode (cheader_filename = "libgweather/gweather.h")]
	[Version (replacement = "Sky.to_string")]
	public static unowned string sky_to_string (GWeather.Sky sky);
	[CCode (cheader_filename = "libgweather/gweather.h")]
	[Version (replacement = "Sky.to_string_full")]
	public static unowned string sky_to_string_full (GWeather.Sky sky, GWeather.FormatOptions options);
	[CCode (cheader_filename = "libgweather/gweather.h")]
	[Version (replacement = "SpeedUnit.to_string")]
	public static unowned string speed_unit_to_string (GWeather.SpeedUnit unit);
	[CCode (cheader_filename = "libgweather/gweather.h")]
	[Version (replacement = "TemperatureUnit.to_real")]
	public static GWeather.TemperatureUnit temperature_unit_to_real (GWeather.TemperatureUnit unit);
	[CCode (cheader_filename = "libgweather/gweather.h")]
	[Version (replacement = "Timezone.get_by_tzid", since = "3.12")]
	public static GWeather.Timezone timezone_get_by_tzid (string tzid);
	[CCode (cheader_filename = "libgweather/gweather.h")]
	[Version (replacement = "Timezone.get_utc")]
	public static GWeather.Timezone timezone_get_utc ();
	[CCode (cheader_filename = "libgweather/gweather.h")]
	[Version (replacement = "WindDirection.to_string")]
	public static unowned string wind_direction_to_string (GWeather.WindDirection wind);
	[CCode (cheader_filename = "libgweather/gweather.h")]
	[Version (replacement = "WindDirection.to_string_full")]
	public static unowned string wind_direction_to_string_full (GWeather.WindDirection wind, GWeather.FormatOptions options);
}
