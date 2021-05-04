/* rygel-ruih-2.0.vapi generated by valac 0.52.2.48-318df, do not modify. */

[CCode (gir_namespace = "Rygel", gir_version = "2.6")]
namespace Rygel {
	[CCode (cheader_filename = "rygel-ruih.h")]
	public class RuihServer : Rygel.MediaDevice {
		public RuihServer (string title, Rygel.PluginCapabilities capabilities = PluginCapabilities.NONE);
		public override void constructed ();
	}
	[CCode (cheader_filename = "rygel-ruih.h")]
	public class RuihServerPlugin : Rygel.Plugin {
		public RuihServerPlugin (string name, string? title, string? description = null, Rygel.PluginCapabilities capabilities = PluginCapabilities.NONE);
		public override void constructed ();
	}
	[CCode (cheader_filename = "rygel-ruih.h")]
	public class RuihServiceManager : GLib.Object {
		public const string UI_LISTING_FILE_NAME;
		public RuihServiceManager ();
		public override void constructed ();
		public string get_compatible_uis (string device_profile, string filter) throws Rygel.RuihServiceError;
		public static Rygel.RuihServiceManager get_default ();
		public void set_ui_list (string ui_list_file_path) throws Rygel.RuihServiceError;
		public bool ui_list_available ();
		public signal void updated ();
	}
	[CCode (cheader_filename = "rygel-ruih.h")]
	public errordomain RuihServiceError {
		OPERATION_REJECTED,
		INVALID_FILTER
	}
}
[CCode (cheader_filename = "rygel-ruih.h")]
protected class FilterEntry {
	public FilterEntry (string name, string value);
	public virtual bool matches (string name, string value);
}
[CCode (cheader_filename = "rygel-ruih.h")]
protected class IconElem : UIListing {
	public IconElem (Xml.Node* node) throws Rygel.RuihServiceError;
	public override bool match (Gee.ArrayList<ProtocolElem>? protocols, Gee.ArrayList<FilterEntry> filters);
	public override string to_ui_listing (Gee.ArrayList<FilterEntry> filters);
}
[CCode (cheader_filename = "rygel-ruih.h")]
protected class ProtocolElem : UIListing {
	public ProtocolElem (Xml.Node* node) throws Rygel.RuihServiceError;
	public string get_protocol_info ();
	public string get_short_name ();
	public override bool match (Gee.ArrayList<ProtocolElem>? protocols, Gee.ArrayList<FilterEntry> filters);
	public override string to_ui_listing (Gee.ArrayList<FilterEntry> filters);
}
[CCode (cheader_filename = "rygel-ruih.h")]
protected class UIElem : UIListing {
	public UIElem (Xml.Node* node) throws Rygel.RuihServiceError;
	public override bool match (Gee.ArrayList<ProtocolElem>? protocol_elements, Gee.ArrayList<FilterEntry> filters);
	public override string to_ui_listing (Gee.ArrayList<FilterEntry> filters);
}
[CCode (cheader_filename = "rygel-ruih.h")]
public abstract class UIListing {
	protected const string DESCRIPTION;
	protected const string FORK;
	protected const string ICON;
	protected const string ICONLIST;
	protected const string LIFETIME;
	protected const string NAME;
	protected const string PROTOCOL;
	protected const string PROTOCOL_INFO;
	protected const string SHORT_NAME;
	protected const string UI;
	protected const string UIID;
	protected const string URI;
	protected UIListing ();
	public bool filters_match (Gee.ArrayList<FilterEntry>? filters, string? name, string? value);
	public abstract bool match (Gee.ArrayList<ProtocolElem>? protocols, Gee.ArrayList<FilterEntry> filters);
	public abstract string to_ui_listing (Gee.ArrayList<FilterEntry> filters);
	public string to_xml (Gee.HashMap<string,string> hash_map);
}
[CCode (cheader_filename = "rygel-ruih.h")]
protected class WildCardFilterEntry : FilterEntry {
	public WildCardFilterEntry ();
	public override bool matches (string name, string value);
}
