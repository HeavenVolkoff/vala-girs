/* libebackend-1.2.vapi generated by vapigen, do not modify. */

[CCode (cprefix = "E", gir_namespace = "EBackend", gir_version = "1.2", lower_case_cprefix = "e_")]
namespace E {
	[CCode (cheader_filename = "libebackend/libebackend.h", type_id = "e_backend_get_type ()")]
	[Version (since = "3.4")]
	public abstract class Backend : GLib.Object {
		[CCode (has_construct_function = false)]
		protected Backend ();
		[NoWrapper]
		public virtual E.SourceAuthenticationResult authenticate_sync (E.NamedParameters credentials, string out_certificate_pem, GLib.TlsCertificateFlags out_certificate_errors, GLib.Cancellable? cancellable = null) throws GLib.Error;
		[Version (since = "3.16")]
		public async bool credentials_required (E.SourceCredentialsReason reason, string certificate_pem, GLib.TlsCertificateFlags certificate_errors, GLib.Error? op_error, GLib.Cancellable? cancellable) throws GLib.Error;
		[Version (since = "3.16")]
		public bool credentials_required_sync (E.SourceCredentialsReason reason, string certificate_pem, GLib.TlsCertificateFlags certificate_errors, GLib.Error? op_error, GLib.Cancellable? cancellable = null) throws GLib.Error;
		[Version (since = "3.18")]
		public void ensure_online_state_updated (GLib.Cancellable? cancellable = null);
		[Version (since = "3.18")]
		public void ensure_source_status_connected ();
		[Version (since = "3.8")]
		public virtual bool get_destination_address (out string host, out uint16 port);
		public bool get_online ();
		public unowned E.Source get_source ();
		[Version (since = "3.8")]
		public void* get_user_prompter ();
		[Version (since = "3.8")]
		public bool is_destination_reachable (GLib.Cancellable? cancellable = null) throws GLib.Error;
		[Version (since = "3.16")]
		public virtual void prepare_shutdown ();
		[Version (since = "3.8")]
		public GLib.SocketConnectable? ref_connectable ();
		[Version (since = "3.8")]
		public GLib.MainContext ref_main_context ();
		[Version (since = "3.16")]
		public void schedule_authenticate (E.NamedParameters? credentials);
		[Version (since = "3.16")]
		public void schedule_credentials_required (E.SourceCredentialsReason reason, string certificate_pem, GLib.TlsCertificateFlags certificate_errors, GLib.Error? op_error, GLib.Cancellable? cancellable, string? who_calls);
		[Version (since = "3.8")]
		public void set_connectable (GLib.SocketConnectable connectable);
		public void set_online (bool online);
		[Version (since = "3.8")]
		public async E.TrustPromptResponse trust_prompt (E.NamedParameters parameters, GLib.Cancellable? cancellable) throws GLib.Error;
		[Version (since = "3.8")]
		public E.TrustPromptResponse trust_prompt_sync (E.NamedParameters parameters, GLib.Cancellable? cancellable = null) throws GLib.Error;
		[NoAccessorMethod]
		public GLib.SocketConnectable connectable { owned get; set; }
		[NoAccessorMethod]
		public GLib.MainContext main_context { owned get; }
		public bool online { get; set; }
		public E.Source source { get; construct; }
		public E.UserPrompter user_prompter { get; }
	}
	[CCode (cheader_filename = "libebackend/libebackend.h", type_id = "e_backend_factory_get_type ()")]
	[Version (since = "3.4")]
	public abstract class BackendFactory : E.Extension {
		[CCode (has_construct_function = false)]
		protected BackendFactory ();
		public virtual unowned string get_hash_key ();
		[Version (since = "3.16")]
		public unowned string get_module_filename ();
		public virtual E.Backend new_backend (E.Source source);
		[Version (since = "3.16")]
		public bool share_subprocess ();
	}
	[CCode (cheader_filename = "libebackend/libebackend.h", type_id = "e_cache_get_type ()")]
	[Version (since = "3.26")]
	public abstract class Cache : GLib.Object {
		[CCode (has_construct_function = false)]
		protected Cache ();
		[CCode (vfunc_name = "before_put")]
		[NoWrapper]
		public virtual bool before_put_impl (string uid, string revision, string object, E.CacheColumnValues other_columns, bool is_replace, GLib.Cancellable? cancellable = null) throws GLib.Error;
		[CCode (vfunc_name = "before_remove")]
		[NoWrapper]
		public virtual bool before_remove_impl (string uid, GLib.Cancellable? cancellable = null) throws GLib.Error;
		public void change_revision ();
		public bool clear_offline_changes (GLib.Cancellable? cancellable = null) throws GLib.Error;
		[NoWrapper]
		public virtual bool clear_offline_changes_locked (GLib.Cancellable? cancellable = null) throws GLib.Error;
		public bool contains (string uid, E.CacheDeletedFlag deleted_flag);
		[Version (since = "3.32")]
		public void copy_missing_to_column_values ([CCode (array_length_cname = "ncols", array_length_pos = 0.5)] string[] column_names, [CCode (array_length_cname = "ncols", array_length_pos = 0.5)] string[] column_values, ref E.CacheColumnValues other_columns);
		public string dup_key (string key) throws GLib.Error;
		public string dup_revision ();
		public virtual void erase ();
		public static GLib.Quark error_quark ();
		public bool @foreach (E.CacheDeletedFlag deleted_flag, string? where_clause, [CCode (delegate_target_pos = 3.5)] E.CacheForeachFunc func, GLib.Cancellable? cancellable = null) throws GLib.Error;
		public bool foreach_update (E.CacheDeletedFlag deleted_flag, string? where_clause, [CCode (delegate_target_pos = 3.5)] E.CacheUpdateFunc func, GLib.Cancellable? cancellable = null) throws GLib.Error;
		public void freeze_revision_change ();
		public string? @get (string uid, out string? out_revision, out E.CacheColumnValues? out_other_columns, GLib.Cancellable? cancellable = null) throws GLib.Error;
		public uint get_count (E.CacheDeletedFlag deleted_flag, GLib.Cancellable? cancellable = null) throws GLib.Error;
		public unowned string get_filename ();
		public int get_key_int (string key) throws GLib.Error;
		[Version (since = "3.30")]
		public string? get_object_include_deleted (string uid, out string? out_revision, out E.CacheColumnValues? out_other_columns, GLib.Cancellable? cancellable = null) throws GLib.Error;
		public bool get_objects (E.CacheDeletedFlag deleted_flag, out GLib.SList<string> out_objects, out GLib.SList<string>? out_revisions, GLib.Cancellable? cancellable = null) throws GLib.Error;
		public GLib.SList<E.CacheOfflineChange> get_offline_changes (GLib.Cancellable? cancellable = null) throws GLib.Error;
		public E.OfflineState get_offline_state (string uid, GLib.Cancellable? cancellable = null) throws GLib.Error;
		public void* get_sqlitedb ();
		public bool get_uids (E.CacheDeletedFlag deleted_flag, out GLib.SList<string> out_uids, out GLib.SList<string>? out_revisions, GLib.Cancellable? cancellable = null) throws GLib.Error;
		public int get_version ();
		public bool initialize_sync (string filename, GLib.SList<E.CacheColumnInfo>? other_columns, GLib.Cancellable? cancellable = null) throws GLib.Error;
		public bool is_revision_change_frozen ();
		public void @lock (E.CacheLockType lock_type);
		public bool put (string uid, string? revision, string object, E.CacheColumnValues? other_columns, E.CacheOfflineFlag offline_flag, GLib.Cancellable? cancellable = null) throws GLib.Error;
		[NoWrapper]
		public virtual bool put_locked (string uid, string revision, string object, E.CacheColumnValues other_columns, E.OfflineState offline_state, bool is_replace, GLib.Cancellable? cancellable = null) throws GLib.Error;
		public bool remove (string uid, E.CacheOfflineFlag offline_flag, GLib.Cancellable? cancellable = null) throws GLib.Error;
		public bool remove_all (GLib.Cancellable? cancellable = null) throws GLib.Error;
		[NoWrapper]
		public virtual bool remove_locked (string uid, GLib.Cancellable? cancellable = null) throws GLib.Error;
		public bool set_key (string key, string? value) throws GLib.Error;
		public bool set_key_int (string key, int value) throws GLib.Error;
		public bool set_offline_state (string uid, E.OfflineState state, GLib.Cancellable? cancellable = null) throws GLib.Error;
		public void set_revision (string? revision);
		public void set_version (int version);
		public bool sqlite_exec (string sql_stmt, GLib.Cancellable? cancellable = null) throws GLib.Error;
		public bool sqlite_maybe_vacuum (GLib.Cancellable? cancellable = null) throws GLib.Error;
		public bool sqlite_select (string sql_stmt, [CCode (delegate_target_pos = 2.5)] E.CacheSelectFunc func, GLib.Cancellable? cancellable = null) throws GLib.Error;
		public static void sqlite_stmt_free (string stmt);
		public void thaw_revision_change ();
		public void @unlock (E.CacheUnlockAction action);
		public virtual signal bool before_put (string uid, string revision, string object, E.CacheColumnValues other_columns, bool is_replace, GLib.Cancellable? cancellable, void* p5);
		public virtual signal bool before_remove (string uid, GLib.Cancellable? cancellable, void* p1);
		public virtual signal void revision_changed ();
	}
	[CCode (cheader_filename = "libebackend/libebackend.h", copy_function = "g_boxed_copy", free_function = "g_boxed_free", type_id = "e_cache_column_info_get_type ()")]
	[Compact]
	public class CacheColumnInfo {
		public weak string index_name;
		public weak string name;
		public weak string type;
		[CCode (has_construct_function = false)]
		[Version (since = "3.26")]
		public CacheColumnInfo (string name, string type, string? index_name);
		[Version (since = "3.26")]
		public E.CacheColumnInfo copy ();
		[Version (since = "3.26")]
		public static void free (void* info);
	}
	[CCode (cheader_filename = "libebackend/libebackend.h", copy_function = "g_boxed_copy", free_function = "g_boxed_free", type_id = "e_cache_column_values_get_type ()")]
	[Compact]
	public class CacheColumnValues {
		[CCode (has_construct_function = false)]
		[Version (since = "3.26")]
		public CacheColumnValues ();
		[Version (since = "3.26")]
		public bool contains (string name);
		[Version (since = "3.26")]
		public E.CacheColumnValues copy ();
		[Version (since = "3.26")]
		public void free ();
		[Version (since = "3.26")]
		public uint get_size ();
		[Version (since = "3.26")]
		public void init_iter (GLib.HashTableIter iter);
		[Version (since = "3.26")]
		public unowned string lookup (string name);
		[Version (since = "3.26")]
		public void put (string name, string? value);
		[Version (since = "3.26")]
		public bool remove (string name);
		[Version (since = "3.26")]
		public void remove_all ();
		[Version (since = "3.26")]
		public void take (owned string name, owned string? value);
		[Version (since = "3.26")]
		public void take_value (string name, owned string? value);
	}
	[CCode (cheader_filename = "libebackend/libebackend.h", copy_function = "g_boxed_copy", free_function = "g_boxed_free", type_id = "e_cache_offline_change_get_type ()")]
	[Compact]
	[Version (since = "3.26")]
	public class CacheOfflineChange {
		public weak string object;
		public weak string revision;
		public E.OfflineState state;
		public weak string uid;
		[CCode (has_construct_function = false)]
		public CacheOfflineChange (string uid, string? revision, string? object, E.OfflineState state);
		public E.CacheOfflineChange copy ();
		public static void free (void* change);
	}
	[CCode (cheader_filename = "libebackend/libebackend.h", type_id = "e_cache_reaper_get_type ()")]
	public class CacheReaper : E.Extension, E.Extensible {
		[CCode (has_construct_function = false)]
		protected CacheReaper ();
		public void add_private_directory (string name);
		public void remove_private_directory (string name);
		public static void type_register (GLib.TypeModule type_module);
	}
	[CCode (cheader_filename = "libebackend/libebackend.h", type_id = "e_collection_backend_get_type ()")]
	[Version (since = "3.6")]
	public class CollectionBackend : E.Backend {
		[CCode (has_construct_function = false)]
		protected CollectionBackend ();
		[Version (since = "3.16")]
		public void authenticate_children (E.NamedParameters credentials);
		public GLib.List<E.Source> claim_all_resources ();
		public virtual async bool create_resource (E.Source source, GLib.Cancellable? cancellable) throws GLib.Error;
		public virtual bool create_resource_sync (E.Source source, GLib.Cancellable? cancellable = null) throws GLib.Error;
		public virtual async bool delete_resource (E.Source source, GLib.Cancellable? cancellable) throws GLib.Error;
		public virtual bool delete_resource_sync (E.Source source, GLib.Cancellable? cancellable = null) throws GLib.Error;
		public virtual string dup_resource_id (E.Source child_source);
		public unowned string get_cache_dir ();
		[Version (since = "3.32")]
		public bool is_new_source (E.Source source);
		public GLib.List<E.Source> list_calendar_sources ();
		public GLib.List<E.Source> list_contacts_sources ();
		public GLib.List<E.Source> list_mail_sources ();
		public E.Source new_child (string resource_id);
		[NoWrapper]
		public virtual void populate ();
		[Version (since = "3.12")]
		public GLib.ProxyResolver? ref_proxy_resolver ();
		public E.SourceRegistryServer ref_server ();
		[Version (since = "3.30")]
		public void schedule_populate ();
		[NoAccessorMethod]
		public GLib.ProxyResolver proxy_resolver { owned get; }
		[NoAccessorMethod]
		public E.SourceRegistryServer server { owned get; construct; }
		public virtual signal void child_added (E.ServerSideSource child_source);
		public virtual signal void child_removed (E.ServerSideSource child_source);
	}
	[CCode (cheader_filename = "libebackend/libebackend.h", type_id = "e_collection_backend_factory_get_type ()")]
	[Version (since = "3.6")]
	public class CollectionBackendFactory : E.BackendFactory {
		[CCode (has_construct_function = false)]
		protected CollectionBackendFactory ();
		public virtual void prepare_mail (E.Source mail_account_source, E.Source mail_identity_source, E.Source mail_transport_source);
	}
	[CCode (cheader_filename = "libebackend/libebackend.h", type_id = "e_dbus_server_get_type ()")]
	[Version (since = "3.4")]
	public abstract class DBusServer : GLib.Object, E.Extensible {
		[CCode (has_construct_function = false)]
		protected DBusServer ();
		public void hold ();
		public void load_modules ();
		public void quit (E.DBusServerExitCode code);
		public void release ();
		public E.DBusServerExitCode run (bool wait_for_client);
		public virtual signal void bus_acquired (GLib.DBusConnection connection);
		public virtual signal void bus_name_acquired (GLib.DBusConnection connection);
		public virtual signal void bus_name_lost (GLib.DBusConnection connection);
		public virtual signal void quit_server (E.DBusServerExitCode code);
		public virtual signal E.DBusServerExitCode run_server ();
	}
	[CCode (cheader_filename = "libebackend/libebackend.h", type_id = "e_data_factory_get_type ()")]
	[Version (since = "3.4")]
	public class DataFactory : E.DBusServer, E.Extensible, GLib.Initable {
		[CCode (has_construct_function = false)]
		protected DataFactory ();
		public void backend_closed (E.Backend backend);
		public void backend_closed_by_sender (E.Backend backend, string sender);
		[NoWrapper]
		public virtual void complete_open (GLib.DBusMethodInvocation invocation, string object_path, string bus_name, string extension_name);
		[Version (since = "3.16")]
		public string construct_path ();
		public virtual E.Backend create_backend (E.BackendFactory backend_factory, E.Source source);
		public int get_backend_per_process ();
		[Version (since = "3.16")]
		public unowned E.SourceRegistry get_registry ();
		public bool get_reload_supported ();
		public GLib.SList<E.Backend> list_opened_backends ();
		public virtual string open_backend (E.Backend backend, GLib.DBusConnection connection, GLib.Cancellable? cancellable = null) throws GLib.Error;
		[Version (since = "3.6")]
		public E.BackendFactory ref_backend_factory (string backend_name, string extension_name);
		[Version (since = "3.16")]
		public void spawn_subprocess_backend (GLib.DBusMethodInvocation invocation, string uid, string extension_name, string subprocess_path);
		public bool use_backend_per_process ();
		public int backend_per_process { get; construct; }
		public E.SourceRegistry registry { get; }
		public bool reload_supported { get; construct; }
	}
	[CCode (cheader_filename = "libebackend/libebackend.h", type_id = "e_file_cache_get_type ()")]
	public class FileCache : GLib.Object {
		[CCode (has_construct_function = false)]
		public FileCache (string filename);
		public bool add_object (string key, string value);
		public bool clean ();
		public void freeze_changes ();
		public unowned string get_filename ();
		public GLib.SList<weak string> get_keys ();
		public unowned string get_object (string key);
		public GLib.SList<weak string> get_objects ();
		public bool remove ();
		public bool remove_object (string key);
		public bool replace_object (string key, string new_value);
		public void thaw_changes ();
		public string filename { get; construct; }
	}
	[CCode (cheader_filename = "libebackend/libebackend.h", type_id = "e_server_side_source_get_type ()")]
	[Version (since = "3.6")]
	public class ServerSideSource : E.Source, GLib.Initable, GLib.ProxyResolver {
		[CCode (has_construct_function = false, type = "ESource*")]
		public ServerSideSource (E.SourceRegistryServer server, GLib.File file) throws GLib.Error;
		public bool get_exported ();
		public unowned GLib.File? get_file ();
		public unowned GLib.Node? get_node ();
		public unowned E.SourceRegistryServer get_server ();
		public static unowned string get_user_dir ();
		public unowned string get_write_directory ();
		public bool load (GLib.Cancellable? cancellable = null) throws GLib.Error;
		[CCode (has_construct_function = false, type = "ESource*")]
		public ServerSideSource.memory_only (E.SourceRegistryServer server, string uid) throws GLib.Error;
		public static GLib.File new_user_file (string uid);
		[Version (since = "3.8")]
		public E.OAuth2Support? ref_oauth2_support ();
		[Version (since = "3.8")]
		public void set_oauth2_support (E.OAuth2Support oauth2_support);
		public void set_remote_creatable (bool remote_creatable);
		public void set_remote_deletable (bool remote_deletable);
		public void set_removable (bool removable);
		public void set_writable (bool writable);
		public void set_write_directory (string write_directory);
		public static string uid_from_file (GLib.File file) throws GLib.Error;
		public bool exported { get; }
		public GLib.File file { get; construct; }
		[NoAccessorMethod]
		public E.OAuth2Support oauth2_support { owned get; set; }
		[NoAccessorMethod]
		public bool remote_creatable { get; set; }
		[NoAccessorMethod]
		public bool remote_deletable { get; set; }
		[NoAccessorMethod]
		public bool removable { get; set; }
		public E.SourceRegistryServer server { get; construct; }
		[NoAccessorMethod]
		public bool writable { get; set; }
		public string write_directory { get; set; }
	}
	[CCode (cheader_filename = "libebackend/libebackend.h", type_id = "e_server_side_source_credentials_provider_get_type ()")]
	[Version (since = "3.16")]
	public class ServerSideSourceCredentialsProvider : E.SourceCredentialsProvider, E.Extensible {
		[CCode (has_construct_function = false, type = "ESourceCredentialsProvider*")]
		public ServerSideSourceCredentialsProvider (E.SourceRegistryServer registry);
	}
	[CCode (cheader_filename = "libebackend/libebackend.h", type_id = "e_source_registry_server_get_type ()")]
	[Version (since = "3.6")]
	public class SourceRegistryServer : E.DataFactory, E.Extensible, GLib.Initable {
		[CCode (has_construct_function = false, type = "EDBusServer*")]
		public SourceRegistryServer ();
		public void add_source (E.Source source);
		[Version (since = "3.8")]
		public E.Source? find_extension (E.Source source, string extension_name);
		[Version (since = "3.28")]
		public unowned E.OAuth2Services get_oauth2_services ();
		public GLib.List<E.Source> list_sources (string extension_name);
		public bool load_directory (string path, E.SourcePermissionFlags flags) throws GLib.Error;
		public E.Source? load_file (GLib.File file, E.SourcePermissionFlags flags) throws GLib.Error;
		[Version (since = "3.8")]
		public bool load_resource (GLib.Resource resource, string path, E.SourcePermissionFlags flags) throws GLib.Error;
		public E.CollectionBackend? ref_backend (E.Source source);
		public E.CollectionBackendFactory? ref_backend_factory (E.Source source);
		[Version (since = "3.16")]
		public E.SourceCredentialsProvider ref_credentials_provider ();
		public E.Source? ref_source (string uid);
		public void remove_source (E.Source source);
		public virtual signal void files_loaded ();
		[HasEmitter]
		public virtual signal void load_error (GLib.File file, GLib.Error error);
		public virtual signal void source_added (E.ServerSideSource source);
		public virtual signal void source_removed (E.ServerSideSource source);
		[Version (since = "3.8")]
		public virtual signal bool tweak_key_file (GLib.KeyFile key_file, string uid);
	}
	[CCode (cheader_filename = "libebackend/libebackend.h", type_id = "e_subprocess_factory_get_type ()")]
	[Version (since = "3.16")]
	public class SubprocessFactory : GLib.Object, GLib.Initable {
		[CCode (has_construct_function = false)]
		protected SubprocessFactory ();
		[NoWrapper]
		public virtual void backend_closed (E.Backend backend);
		[NoWrapper]
		public virtual void backend_created (E.Backend backend);
		public void call_backends_prepare_shutdown ();
		public static string construct_path ();
		public GLib.List<E.Backend> get_backends_list ();
		public unowned E.SourceRegistry get_registry ();
		public string open_backend (GLib.DBusConnection connection, string uid, string backend_factory_type_name, string module_filename, GLib.DBusInterfaceSkeleton proxy, GLib.Cancellable? cancellable = null) throws GLib.Error;
		[NoWrapper]
		public virtual string open_data (E.Backend backend, GLib.DBusConnection connection, void* data, GLib.Cancellable? cancellable = null) throws GLib.Error;
		public E.Backend? ref_initable_backend (string uid, string backend_factory_type_name, string module_filename, GLib.Cancellable? cancellable = null) throws GLib.Error;
		public void set_backend_callbacks (E.Backend backend, GLib.DBusInterfaceSkeleton proxy);
		public E.SourceRegistry registry { get; }
	}
	[CCode (cheader_filename = "libebackend/libebackend.h", type_id = "e_user_prompter_get_type ()")]
	[Version (since = "3.8")]
	public class UserPrompter : GLib.Object {
		[CCode (has_construct_function = false)]
		public UserPrompter ();
		public async int extension_prompt (string dialog_name, E.NamedParameters? in_parameters, GLib.Cancellable? cancellable) throws GLib.Error;
		public int extension_prompt_sync (string dialog_name, E.NamedParameters? in_parameters, E.NamedParameters? out_values, GLib.Cancellable? cancellable = null) throws GLib.Error;
		public async int prompt (string? type, string? title, string? primary_text, string? secondary_text, bool use_markup, GLib.List<string>? button_captions, GLib.Cancellable? cancellable) throws GLib.Error;
		public int prompt_sync (string? type, string? title, string? primary_text, string? secondary_text, bool use_markup, GLib.List<string>? button_captions, GLib.Cancellable? cancellable = null) throws GLib.Error;
	}
	[CCode (cheader_filename = "libebackend/libebackend.h", type_id = "e_user_prompter_server_get_type ()")]
	[Version (since = "3.8")]
	public class UserPrompterServer : E.DBusServer, E.Extensible {
		[CCode (has_construct_function = false, type = "EDBusServer*")]
		public UserPrompterServer ();
		public bool register (E.Extension extension, string dialog_name);
		public void response (int prompt_id, int response, E.NamedParameters? extension_values);
		public signal void prompt (int prompt_id, string? type, string? title, string? primary_text, string? secondary_text, bool use_markup, [CCode (array_length = false, array_null_terminated = true)] string[]? button_captions);
	}
	[CCode (cheader_filename = "libebackend/libebackend.h", type_id = "e_user_prompter_server_extension_get_type ()")]
	[Version (since = "3.8")]
	public abstract class UserPrompterServerExtension : E.Extension {
		[CCode (has_construct_function = false)]
		protected UserPrompterServerExtension ();
		public virtual bool prompt (int prompt_id, string dialog_name, E.NamedParameters? parameters);
		public void response (int prompt_id, int response, E.NamedParameters? values);
	}
	[CCode (cheader_filename = "libebackend/libebackend.h", lower_case_csuffix = "webdav_collection_backend", type_id = "e_webdav_collection_backend_get_type ()")]
	[Version (since = "3.26")]
	public class WebDAVCollectionBackend : E.CollectionBackend {
		[CCode (has_construct_function = false)]
		protected WebDAVCollectionBackend ();
		public E.SourceAuthenticationResult discover_sync (string? calendar_url, string? contacts_url, E.NamedParameters credentials, out string? out_certificate_pem, out GLib.TlsCertificateFlags? out_certificate_errors, GLib.Cancellable? cancellable = null) throws GLib.Error;
		public virtual string? get_resource_id (E.Source source);
		public virtual bool is_custom_source (E.Source source);
	}
	[CCode (cheader_filename = "libebackend/libebackend.h", type_cname = "EOAuth2SupportInterface", type_id = "e_oauth2_support_get_type ()")]
	[Version (since = "3.8")]
	public interface OAuth2Support : GLib.Object {
		public abstract async bool get_access_token (E.Source source, GLib.Cancellable? cancellable, out string out_access_token, out int out_expires_in) throws GLib.Error;
		public abstract bool get_access_token_sync (E.Source source, GLib.Cancellable? cancellable, out string out_access_token, out int out_expires_in) throws GLib.Error;
	}
	[CCode (cheader_filename = "libebackend/libebackend.h", cprefix = "E_AUTHENTICATION_SESSION_", type_id = "e_authentication_session_result_get_type ()")]
	[Version (since = "3.6")]
	public enum AuthenticationSessionResult {
		ERROR,
		SUCCESS,
		DISMISSED
	}
	[CCode (cheader_filename = "libebackend/libebackend.h", cprefix = "E_CACHE_", has_type_id = false)]
	[Version (since = "3.26")]
	public enum CacheDeletedFlag {
		EXCLUDE_DELETED,
		INCLUDE_DELETED
	}
	[CCode (cheader_filename = "libebackend/libebackend.h", cprefix = "E_CACHE_ERROR_", has_type_id = false)]
	[Version (since = "3.26")]
	public enum CacheError {
		ENGINE,
		CONSTRAINT,
		NOT_FOUND,
		INVALID_QUERY,
		UNSUPPORTED_FIELD,
		UNSUPPORTED_QUERY,
		END_OF_LIST,
		LOAD
	}
	[CCode (cheader_filename = "libebackend/libebackend.h", cprefix = "E_CACHE_LOCK_", has_type_id = false)]
	[Version (since = "3.26")]
	public enum CacheLockType {
		READ,
		WRITE
	}
	[CCode (cheader_filename = "libebackend/libebackend.h", cprefix = "E_CACHE_", has_type_id = false)]
	[Version (since = "3.26")]
	public enum CacheOfflineFlag {
		OFFLINE_UNKNOWN,
		IS_ONLINE,
		IS_OFFLINE
	}
	[CCode (cheader_filename = "libebackend/libebackend.h", cprefix = "E_CACHE_UNLOCK_", has_type_id = false)]
	[Version (since = "3.26")]
	public enum CacheUnlockAction {
		NONE,
		COMMIT,
		ROLLBACK
	}
	[CCode (cheader_filename = "libebackend/libebackend.h", cprefix = "E_DBUS_SERVER_EXIT_", type_id = "e_dbus_server_exit_code_get_type ()")]
	[Version (since = "3.6")]
	public enum DBusServerExitCode {
		NONE,
		NORMAL,
		RELOAD
	}
	[CCode (cheader_filename = "libebackend/libebackend.h", cprefix = "E_OFFLINE_STATE_", type_id = "e_offline_state_get_type ()")]
	[Version (since = "3.26")]
	public enum OfflineState {
		UNKNOWN,
		SYNCED,
		LOCALLY_CREATED,
		LOCALLY_MODIFIED,
		LOCALLY_DELETED
	}
	[CCode (cheader_filename = "libebackend/libebackend.h", cprefix = "E_SOURCE_PERMISSION_", type_id = "e_source_permission_flags_get_type ()")]
	[Flags]
	[Version (since = "3.6")]
	public enum SourcePermissionFlags {
		NONE,
		WRITABLE,
		REMOVABLE
	}
	[CCode (cheader_filename = "libebackend/libebackend.h", instance_pos = 7.9)]
	[Version (since = "3.26")]
	public delegate bool CacheForeachFunc (E.Cache cache, string uid, string revision, string object, E.OfflineState offline_state, [CCode (array_length_cname = "ncols", array_length_pos = 5.5)] string[] column_names, [CCode (array_length_cname = "ncols", array_length_pos = 5.5)] string[] column_values);
	[CCode (cheader_filename = "libebackend/libebackend.h", instance_pos = 3.9)]
	[Version (since = "3.26")]
	public delegate bool CacheSelectFunc (E.Cache cache, [CCode (array_length_cname = "ncols", array_length_pos = 1.5)] string[] column_names, [CCode (array_length_cname = "ncols", array_length_pos = 1.5)] string[] column_values);
	[CCode (cheader_filename = "libebackend/libebackend.h", instance_pos = 11.9)]
	[Version (since = "3.26")]
	public delegate bool CacheUpdateFunc (E.Cache cache, string uid, string revision, string object, E.OfflineState offline_state, [CCode (array_length_cname = "ncols", array_length_pos = 5.5)] string[] column_names, [CCode (array_length_cname = "ncols", array_length_pos = 5.5)] string[] column_values, out string out_revision, out string out_object, out E.OfflineState out_offline_state, out E.CacheColumnValues out_other_columns);
	[CCode (cheader_filename = "libebackend/libebackend.h", cname = "E_CACHE_COLUMN_OBJECT")]
	public const string CACHE_COLUMN_OBJECT;
	[CCode (cheader_filename = "libebackend/libebackend.h", cname = "E_CACHE_COLUMN_REVISION")]
	public const string CACHE_COLUMN_REVISION;
	[CCode (cheader_filename = "libebackend/libebackend.h", cname = "E_CACHE_COLUMN_STATE")]
	public const string CACHE_COLUMN_STATE;
	[CCode (cheader_filename = "libebackend/libebackend.h", cname = "E_CACHE_COLUMN_UID")]
	public const string CACHE_COLUMN_UID;
	[CCode (cheader_filename = "libebackend/libebackend.h", cname = "E_CACHE_TABLE_KEYS")]
	public const string CACHE_TABLE_KEYS;
	[CCode (cheader_filename = "libebackend/libebackend.h", cname = "E_CACHE_TABLE_OBJECTS")]
	public const string CACHE_TABLE_OBJECTS;
	[CCode (cheader_filename = "libebackend/libebackend.h", cname = "EDS_REGISTRY_MODULES")]
	public const string EDS_REGISTRY_MODULES;
	[CCode (cheader_filename = "libebackend/libebackend.h", cname = "E_SOURCE_REGISTRY_SERVER_OBJECT_PATH")]
	[Version (since = "3.6")]
	public const string SOURCE_REGISTRY_SERVER_OBJECT_PATH;
	[CCode (cheader_filename = "libebackend/libebackend.h", cname = "E_USER_PROMPTER_SERVER_OBJECT_PATH")]
	[Version (since = "3.8")]
	public const string USER_PROMPTER_SERVER_OBJECT_PATH;
	[CCode (cheader_filename = "libebackend/libebackend.h")]
	[Version (since = "3.2")]
	public static void sqlite3_vfs_init ();
}
