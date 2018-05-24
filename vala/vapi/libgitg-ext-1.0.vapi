/* libgitg-ext-1.0.vapi generated by valac 0.40.0.135-5d895, do not modify. */

[CCode (gir_namespace = "GitgExt", gir_version = "1.0")]
namespace GitgExt {
	[CCode (cheader_filename = "libgitg-ext/libgitg-ext.h")]
	public class CommandLines : GLib.Object {
		public CommandLines (GitgExt.CommandLine[] command_lines);
		public void apply (GitgExt.Application application);
		public T get_for<T> ();
		public void parse_finished ();
	}
	[CCode (cheader_filename = "libgitg-ext/libgitg-ext.h")]
	public abstract class Message : GLib.Object {
		public Message ();
		public bool has (string propname);
		public static bool type_check (GLib.Type type, string propname, GLib.Type value_type);
		public static bool type_has (GLib.Type type, string propname);
		public GitgExt.MessageId id { get; set construct; }
	}
	[CCode (cheader_filename = "libgitg-ext/libgitg-ext.h")]
	public class MessageBus : GLib.Object {
		public MessageBus ();
		public void block (uint id);
		public new uint connect (GitgExt.MessageId id, owned GitgExt.MessageCallback callback);
		public new void disconnect (uint id);
		public static GitgExt.MessageBus get_default ();
		public bool is_registered (GitgExt.MessageId id);
		public GLib.Type lookup (GitgExt.MessageId id);
		public void register (GLib.Type message_type, GitgExt.MessageId id);
		public GitgExt.Message? send (GitgExt.MessageId id, string? firstprop, ...);
		public GitgExt.Message send_message (GitgExt.Message message);
		public void unblock (uint id);
		public void unregister (GitgExt.MessageId id);
		public void unregister_all (string object_path);
		public virtual signal void dispatch (GitgExt.Message message);
		public signal void registered (GitgExt.MessageId id);
		public signal void unregistered (GitgExt.MessageId id);
	}
	[CCode (cheader_filename = "libgitg-ext/libgitg-ext.h")]
	public class MessageId : GLib.Object {
		public MessageId (string object_path, string method);
		public GitgExt.MessageId copy ();
		public bool equal (GitgExt.MessageId other);
		public uint hash ();
		public static bool valid_object_path (string path);
		public string id { owned get; }
		public string method { get; set construct; }
		public string object_path { get; set construct; }
	}
	[CCode (cheader_filename = "libgitg-ext/libgitg-ext.h")]
	public class UI {
		public UI ();
		public static Gee.HashMap<string,GLib.Object>? from_builder (string path, ...);
	}
	[CCode (cheader_filename = "libgitg-ext/libgitg-ext.h")]
	public class UserQuery : GLib.Object {
		public UserQuery ();
		public UserQuery.full (string title, string message, Gtk.MessageType message_type, ...);
		public bool default_is_destructive { get; set; }
		public Gtk.ResponseType default_response { get; set; }
		public string message { get; set; }
		public Gtk.MessageType message_type { get; set; }
		public bool message_use_markup { get; set; }
		public GitgExt.UserQueryResponse[] responses { get; set; }
		public string title { get; set; }
		public signal void quit ();
		public signal bool response (Gtk.ResponseType response_type);
	}
	[CCode (cheader_filename = "libgitg-ext/libgitg-ext.h")]
	public class UserQueryResponse : GLib.Object {
		public Gtk.ResponseType response_type;
		public string text;
		public UserQueryResponse (string text, Gtk.ResponseType response_type);
	}
	[CCode (cheader_filename = "libgitg-ext/libgitg-ext.h")]
	public interface Action : GitgExt.UIElement {
		public virtual void populate_menu (Gtk.Menu menu);
	}
	[CCode (cheader_filename = "libgitg-ext/libgitg-ext.h")]
	public interface Activity : GLib.Object, GitgExt.UIElement {
		public virtual bool is_default_for (string action);
	}
	[CCode (cheader_filename = "libgitg-ext/libgitg-ext.h")]
	public interface Application : GLib.Object {
		public abstract GitgExt.Activity? get_activity_by_id (string id);
		public abstract Ggit.Signature? get_verified_committer ();
		public abstract GitgExt.Application open_new (Ggit.Repository repository, string? hint = null);
		public abstract void open_repository (GLib.File path);
		public abstract GitgExt.Activity? set_activity_by_id (string id);
		public abstract void show_infobar (string primary_msg, string secondary_msg, Gtk.MessageType type);
		public abstract void user_query (GitgExt.UserQuery query);
		public abstract async Gtk.ResponseType user_query_async (GitgExt.UserQuery query);
		public abstract bool busy { get; set; }
		public abstract GitgExt.Activity? current_activity { owned get; }
		public abstract Gee.Map<string,string> environment { owned get; }
		public abstract GitgExt.MessageBus message_bus { owned get; }
		public abstract GitgExt.Notifications notifications { owned get; }
		public abstract GitgExt.RemoteLookup remote_lookup { owned get; }
		public abstract Gitg.Repository? repository { owned get; set; }
		public signal void repository_changed_externally (GitgExt.ExternalChangeHint hint);
		public signal void repository_commits_changed ();
	}
	[CCode (cheader_filename = "libgitg-ext/libgitg-ext.h")]
	public interface CommandLine : GLib.Object {
		public abstract void apply (GitgExt.Application application);
		public abstract GLib.OptionGroup get_option_group ();
		public abstract void parse_finished ();
	}
	[CCode (cheader_filename = "libgitg-ext/libgitg-ext.h")]
	public interface CommitAction : GitgExt.Action {
		public abstract GitgExt.RefActionInterface action_interface { get; set construct; }
		public abstract Gitg.Commit commit { get; set construct; }
		public signal void finished ();
	}
	[CCode (cheader_filename = "libgitg-ext/libgitg-ext.h")]
	public interface History : GLib.Object, GitgExt.Activity {
		public abstract void foreach_selected (GitgExt.ForeachCommitSelectionFunc func);
		public abstract void select (Gitg.Commit commit);
		public signal void selection_changed ();
	}
	[CCode (cheader_filename = "libgitg-ext/libgitg-ext.h")]
	public interface HistoryPanel : GLib.Object, GitgExt.UIElement {
		public abstract GitgExt.History? history { owned get; set construct; }
	}
	[CCode (cheader_filename = "libgitg-ext/libgitg-ext.h")]
	public interface Notification : GLib.Object {
		public abstract Gtk.Widget? widget { owned get; }
		public signal void close (uint delay = 0);
	}
	[CCode (cheader_filename = "libgitg-ext/libgitg-ext.h")]
	public interface Notifications : GLib.Object {
		public abstract void add (GitgExt.Notification notification);
		public abstract void remove (GitgExt.Notification notification, uint delay);
	}
	[CCode (cheader_filename = "libgitg-ext/libgitg-ext.h")]
	public interface Preferences : GLib.Object {
		public abstract string display_name { owned get; }
		public abstract string id { owned get; }
		public abstract Gtk.Widget widget { owned get; }
	}
	[CCode (cheader_filename = "libgitg-ext/libgitg-ext.h")]
	public interface RefAction : GitgExt.Action {
		public abstract GitgExt.RefActionInterface action_interface { get; set construct; }
		public abstract Gitg.Ref reference { get; set construct; }
	}
	[CCode (cheader_filename = "libgitg-ext/libgitg-ext.h")]
	public interface RefActionInterface : GLib.Object {
		public abstract void add_ref (Gitg.Ref reference);
		public abstract void edit_ref_name (Gitg.Ref reference, owned GitgExt.RefNameEditingDone callback);
		public abstract void refresh ();
		public abstract void remove_ref (Gitg.Ref reference);
		public abstract void replace_ref (Gitg.Ref old_ref, Gitg.Ref new_ref);
		public abstract void set_busy (Gitg.Ref reference, bool busy);
		public abstract GitgExt.Application application { owned get; set construct; }
		public abstract Gee.List<Gitg.Ref> references { owned get; }
	}
	[CCode (cheader_filename = "libgitg-ext/libgitg-ext.h")]
	public interface RemoteLookup : GLib.Object {
		public abstract Gitg.Remote? lookup (string name);
	}
	[CCode (cheader_filename = "libgitg-ext/libgitg-ext.h")]
	public interface Searchable : GLib.Object, GitgExt.Activity {
		public abstract bool search_available { get; }
		public abstract Gtk.Entry? search_entry { set; }
		public abstract string search_text { owned get; set; }
		public abstract bool search_visible { get; set; }
	}
	[CCode (cheader_filename = "libgitg-ext/libgitg-ext.h")]
	public interface Selectable : GLib.Object, GitgExt.Activity {
		public abstract Gtk.Widget? action_widget { owned get; }
		public abstract bool selectable_available { get; }
		public abstract GitgExt.SelectionMode selectable_mode { get; set; }
		public abstract string selectable_mode_tooltip { owned get; }
	}
	[CCode (cheader_filename = "libgitg-ext/libgitg-ext.h")]
	public interface UIElement : GLib.Object {
		public virtual int negotiate_order (GitgExt.UIElement other);
		public abstract GitgExt.Application? application { owned get; set construct; }
		public virtual bool available { get; }
		public abstract string description { owned get; }
		public abstract string display_name { owned get; }
		public virtual bool enabled { get; }
		public virtual string? icon { owned get; }
		public abstract string id { owned get; }
		public virtual Gtk.Widget? widget { owned get; }
		public virtual signal void activate ();
	}
	[CCode (cheader_filename = "libgitg-ext/libgitg-ext.h")]
	[Flags]
	public enum ExternalChangeHint {
		NONE,
		REFS,
		INDEX
	}
	[CCode (cheader_filename = "libgitg-ext/libgitg-ext.h")]
	public enum SelectionMode {
		NORMAL,
		SELECTION
	}
	[CCode (cheader_filename = "libgitg-ext/libgitg-ext.h")]
	public delegate bool ForeachCommitSelectionFunc (Ggit.Commit object);
	[CCode (cheader_filename = "libgitg-ext/libgitg-ext.h")]
	public delegate void MessageCallback (GitgExt.Message message);
	[CCode (cheader_filename = "libgitg-ext/libgitg-ext.h")]
	public delegate void RefNameEditingDone (string new_name, bool cancelled);
}
