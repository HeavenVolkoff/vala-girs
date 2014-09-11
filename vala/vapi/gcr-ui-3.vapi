/* gcr-ui-3.vapi generated by vapigen-0.26, do not modify. */

[CCode (cprefix = "Gcr", gir_namespace = "GcrUi", gir_version = "3", lower_case_cprefix = "gcr_")]
namespace Gcr {
	[CCode (cheader_filename = "ui/gcr-ui.h", type_id = "gcr_certificate_renderer_get_type ()")]
	public class CertificateRenderer : GLib.Object, Gcr.Certificate, Gcr.Comparable, Gcr.Renderer {
		[CCode (has_construct_function = false)]
		public CertificateRenderer (Gcr.Certificate certificate);
		[CCode (has_construct_function = false)]
		public CertificateRenderer.for_attributes (string? label, void* attrs);
		public unowned Gcr.Certificate get_certificate ();
		public void set_certificate (Gcr.Certificate? certificate);
		public Gcr.Certificate certificate { get; set; }
	}
	[CCode (cheader_filename = "ui/gcr-ui.h", type_id = "gcr_certificate_widget_get_type ()")]
	public class CertificateWidget : Gtk.Bin, Atk.Implementor, Gtk.Buildable {
		[CCode (has_construct_function = false)]
		public CertificateWidget (Gcr.Certificate? certificate);
		public unowned Gcr.Certificate get_certificate ();
		public void set_certificate (Gcr.Certificate? certificate);
		[NoAccessorMethod]
		public Gck.Attributes attributes { owned get; set; }
		public Gcr.Certificate certificate { get; set; }
	}
	[CCode (cheader_filename = "ui/gcr-ui.h", type_id = "gcr_collection_model_get_type ()")]
	public class CollectionModel : GLib.Object, Gtk.TreeModel, Gtk.TreeSortable {
		[CCode (has_construct_function = false)]
		protected CollectionModel ();
		public void change_selected (Gtk.TreeIter iter, bool selected);
		public int column_for_selected ();
		public unowned Gcr.Collection get_collection ();
		public GLib.List<weak GLib.Object> get_selected_objects ();
		public bool is_selected (Gtk.TreeIter iter);
		public bool iter_for_object (GLib.Object object, Gtk.TreeIter iter);
		public unowned GLib.Object object_for_iter (Gtk.TreeIter iter);
		public void set_collection (Gcr.Collection? collection);
		public void set_selected_objects (GLib.List<GLib.Object> selected);
		public void toggle_selected (Gtk.TreeIter iter);
		public Gcr.Collection collection { get; set; }
		[NoAccessorMethod]
		public void* columns { get; construct; }
	}
	[CCode (cheader_filename = "ui/gcr-ui.h", type_id = "gcr_combo_selector_get_type ()")]
	public class ComboSelector : Gtk.ComboBox, Atk.Implementor, Gtk.Buildable, Gtk.CellEditable, Gtk.CellLayout {
		[CCode (has_construct_function = false)]
		public ComboSelector (Gcr.Collection collection);
		public unowned Gcr.Collection get_collection ();
		public unowned GLib.Object get_selected ();
		public void set_selected (GLib.Object? selected);
		public Gcr.Collection collection { get; construct; }
	}
	[CCode (cheader_filename = "ui/gcr-ui.h", type_id = "gcr_failure_renderer_get_type ()")]
	public class FailureRenderer : GLib.Object, Gcr.Renderer {
		[CCode (has_construct_function = false, type = "GcrRenderer*")]
		public FailureRenderer (string? label, GLib.Error error);
		public static Gcr.Renderer new_unsupported (string label);
	}
	[CCode (cheader_filename = "ui/gcr-ui.h", type_id = "gcr_import_button_get_type ()")]
	public class ImportButton : Gtk.Button, Atk.Implementor, Gtk.Actionable, Gtk.Activatable, Gtk.Buildable {
		[CCode (has_construct_function = false)]
		public ImportButton (string? label);
		public void add_parsed (Gcr.Parsed parsed);
		public virtual signal void imported (GLib.Object importer, GLib.Error error);
		public virtual signal void importing (GLib.Object importer);
	}
	[CCode (cheader_filename = "ui/gcr-ui.h", type_id = "gcr_key_renderer_get_type ()")]
	public class KeyRenderer : GLib.Object, Gcr.Renderer {
		[CCode (has_construct_function = false)]
		public KeyRenderer (string? label, Gck.Attributes? attrs);
		public unowned Gck.Attributes get_attributes ();
		public void set_attributes (Gck.Attributes? attrs);
		[NoAccessorMethod]
		public Gck.Object object { owned get; set; }
	}
	[CCode (cheader_filename = "ui/gcr-ui.h", type_id = "gcr_key_widget_get_type ()")]
	public class KeyWidget : Gtk.Bin, Atk.Implementor, Gtk.Buildable {
		[CCode (has_construct_function = false)]
		public KeyWidget (Gck.Attributes? attrs);
		public unowned Gck.Attributes get_attributes ();
		public void set_attributes (Gck.Attributes? attrs);
		public Gck.Attributes attributes { get; set; }
	}
	[CCode (cheader_filename = "ui/gcr-ui.h", type_id = "gcr_list_selector_get_type ()")]
	public class ListSelector : Gtk.TreeView, Atk.Implementor, Gtk.Buildable, Gtk.Scrollable {
		[CCode (has_construct_function = false)]
		public ListSelector (Gcr.Collection collection);
		public unowned Gcr.Collection get_collection ();
		public GLib.List<weak GLib.Object> get_selected ();
		public void set_selected (GLib.List<GLib.Object> selected);
		public Gcr.Collection collection { get; construct; }
	}
	[CCode (cheader_filename = "ui/gcr-ui.h", type_id = "gcr_prompt_dialog_get_type ()")]
	public class PromptDialog : Gtk.Dialog, Atk.Implementor, Gcr.Prompt, Gtk.Buildable {
		[CCode (has_construct_function = false)]
		protected PromptDialog ();
		[NoAccessorMethod]
		public bool choice_visible { get; }
		[NoAccessorMethod]
		public bool confirm_visible { get; }
		[NoAccessorMethod]
		public bool password_visible { get; }
		[NoAccessorMethod]
		public bool warning_visible { get; }
	}
	[CCode (cheader_filename = "ui/gcr-ui.h", type_id = "gcr_secure_entry_buffer_get_type ()")]
	public class SecureEntryBuffer : Gtk.EntryBuffer {
		[CCode (has_construct_function = false, type = "GtkEntryBuffer*")]
		public SecureEntryBuffer ();
	}
	[CCode (cheader_filename = "ui/gcr-ui.h", type_id = "gcr_tree_selector_get_type ()")]
	public class TreeSelector : Gtk.TreeView, Atk.Implementor, Gtk.Buildable, Gtk.Scrollable {
		[CCode (has_construct_function = false)]
		protected TreeSelector ();
		public unowned Gcr.Collection get_collection ();
		public GLib.List<weak GLib.Object> get_selected ();
		public void set_selected (GLib.List<GLib.Object> selected);
		public Gcr.Collection collection { get; construct; }
		[NoAccessorMethod]
		public void* columns { get; construct; }
	}
	[CCode (cheader_filename = "ui/gcr-ui.h", type_id = "gcr_unlock_options_widget_get_type ()")]
	public class UnlockOptionsWidget : Gtk.Bin, Atk.Implementor, Gtk.Buildable {
		[CCode (has_construct_function = false, type = "GtkWidget*")]
		public UnlockOptionsWidget ();
		public unowned string get_choice ();
		public unowned string get_label (string option);
		public bool get_sensitive (string option);
		public uint get_ttl ();
		public void set_choice (string option);
		public void set_label (string option, string text);
		public void set_sensitive (string option, bool sensitive, string reason);
		public void set_ttl (uint ttl);
		public string choice { get; set; }
		public uint ttl { get; set; }
	}
	[CCode (cheader_filename = "ui/gcr-ui.h", type_id = "gcr_viewer_widget_get_type ()")]
	public class ViewerWidget : Gtk.Box, Atk.Implementor, Gtk.Buildable, Gtk.Orientable {
		[CCode (has_construct_function = false)]
		public ViewerWidget ();
		public void clear_error ();
		public unowned string get_display_name ();
		public unowned Gcr.Parser get_parser ();
		public unowned Gcr.Viewer get_viewer ();
		public void load_bytes (string? display_name, GLib.Bytes data);
		public void load_data (string? display_name, [CCode (array_length_cname = "n_data", array_length_pos = 2.1, array_length_type = "gsize")] uint8[] data);
		public void load_file (GLib.File file);
		public void set_display_name (string display_name);
		public void show_error (string message, GLib.Error? error);
		public string display_name { get; set; }
		public Gcr.Parser parser { get; }
		public signal void added (Gcr.Renderer renderer, Gcr.Parsed parsed);
	}
	[CCode (cheader_filename = "ui/gcr-ui.h", type_id = "gcr_renderer_get_type ()")]
	public interface Renderer : GLib.Object {
		public static Gcr.Renderer create (string? label, Gck.Attributes attrs);
		public void emit_data_changed ();
		public unowned Gck.Attributes get_attributes ();
		[NoWrapper]
		public abstract void populate_popup (Gcr.Viewer viewer, Gtk.Menu menu);
		public void popuplate_popup (Gcr.Viewer viewer, Gtk.Menu menu);
		public static void register (GLib.Type renderer_type, Gck.Attributes attrs);
		public static void register_well_known ();
		public abstract void render_view (Gcr.Viewer viewer);
		public void set_attributes (Gck.Attributes? attrs);
		[NoAccessorMethod]
		public abstract Gck.Attributes attributes { owned get; set; }
		[NoAccessorMethod]
		public abstract string label { owned get; set; }
		public virtual signal void data_changed ();
	}
	[CCode (cheader_filename = "ui/gcr-ui.h", type_id = "gcr_viewer_get_type ()")]
	public interface Viewer : Gtk.Widget {
		public abstract void add_renderer (Gcr.Renderer renderer);
		public abstract uint count_renderers ();
		public abstract unowned Gcr.Renderer get_renderer (uint index_);
		public abstract void insert_renderer (Gcr.Renderer renderer, Gcr.Renderer? before);
		public static Gcr.Viewer @new ();
		public static unowned Gcr.Viewer new_scrolled ();
		public abstract void remove_renderer (Gcr.Renderer renderer);
	}
	[CCode (cheader_filename = "ui/gcr-ui.h", cprefix = "GCR_COLLECTION_MODEL_", has_type_id = false)]
	public enum CollectionModelMode {
		LIST,
		TREE
	}
	[CCode (cheader_filename = "ui/gcr-ui.h")]
	public static Gcr.Renderer renderer_create (string? label, Gck.Attributes attrs);
	[CCode (cheader_filename = "ui/gcr-ui.h")]
	public static void renderer_register (GLib.Type renderer_type, Gck.Attributes attrs);
	[CCode (cheader_filename = "ui/gcr-ui.h")]
	public static void renderer_register_well_known ();
	[CCode (cheader_filename = "ui/gcr-ui.h")]
	public static Gcr.Viewer viewer_new ();
	[CCode (cheader_filename = "ui/gcr-ui.h")]
	public static unowned Gcr.Viewer viewer_new_scrolled ();
}
