/* libportal.vapi generated by vapigen, do not modify. */

[CCode (cprefix = "Xdp", gir_namespace = "Xdp", gir_version = "1.0", lower_case_cprefix = "xdp_")]
namespace Xdp {
	[CCode (cheader_filename = "libportal/portal.h", copy_function = "g_boxed_copy", free_function = "g_boxed_free", type_id = "xdp_parent_get_type ()")]
	[Compact]
	public class Parent {
		public Xdp.Parent copy ();
		public void free ();
	}
	[CCode (cheader_filename = "libportal/portal.h", type_id = "xdp_portal_get_type ()")]
	public class Portal : GLib.Object {
		[CCode (has_construct_function = false)]
		public Portal ();
		public async bool access_camera (Xdp.Parent? parent, Xdp.CameraFlags flags, GLib.Cancellable? cancellable) throws GLib.Error;
		public async bool add_notification (string id, GLib.Variant notification, Xdp.NotificationFlags flags, GLib.Cancellable? cancellable) throws GLib.Error;
		public async bool compose_email (Xdp.Parent? parent, [CCode (array_length = false, array_null_terminated = true)] string[]? addresses, [CCode (array_length = false, array_null_terminated = true)] string[]? cc, [CCode (array_length = false, array_null_terminated = true)] string[]? bcc, string? subject, string? body, [CCode (array_length = false, array_null_terminated = true)] string[]? attachments, Xdp.EmailFlags flags, GLib.Cancellable? cancellable) throws GLib.Error;
		public async Xdp.Session create_remote_desktop_session (Xdp.DeviceType devices, Xdp.OutputType outputs, Xdp.RemoteDesktopFlags flags, Xdp.CursorMode cursor_mode, GLib.Cancellable? cancellable) throws GLib.Error;
		public async Xdp.Session create_screencast_session (Xdp.OutputType outputs, Xdp.ScreencastFlags flags, Xdp.CursorMode cursor_mode, Xdp.PersistMode persist_mode, string? restore_token, GLib.Cancellable? cancellable) throws GLib.Error;
		public string dynamic_launcher_get_desktop_entry (string desktop_file_id) throws GLib.Error;
		public GLib.Variant dynamic_launcher_get_icon (string desktop_file_id, string? out_icon_format, uint? out_icon_size) throws GLib.Error;
		public bool dynamic_launcher_install (string token, string desktop_file_id, string desktop_entry) throws GLib.Error;
		public bool dynamic_launcher_launch (string desktop_file_id, string activation_token) throws GLib.Error;
		public async GLib.Variant dynamic_launcher_prepare_install (Xdp.Parent? parent, string name, GLib.Variant icon_v, Xdp.LauncherType launcher_type, string? target, bool editable_name, bool editable_icon, GLib.Cancellable? cancellable) throws GLib.Error;
		public string dynamic_launcher_request_install_token (string name, GLib.Variant icon_v) throws GLib.Error;
		public bool dynamic_launcher_uninstall (string desktop_file_id) throws GLib.Error;
		public async GLib.Variant get_user_information (Xdp.Parent? parent, string? reason, Xdp.UserInformationFlags flags, GLib.Cancellable? cancellable) throws GLib.Error;
		public bool is_camera_present ();
		public async bool location_monitor_start (Xdp.Parent? parent, uint distance_threshold, uint time_threshold, Xdp.LocationAccuracy accuracy, Xdp.LocationMonitorFlags flags, GLib.Cancellable? cancellable) throws GLib.Error;
		public void location_monitor_stop ();
		public async bool open_directory (Xdp.Parent parent, string uri, Xdp.OpenUriFlags flags, GLib.Cancellable? cancellable) throws GLib.Error;
		public async GLib.Variant open_file (Xdp.Parent? parent, string title, GLib.Variant? filters, GLib.Variant? current_filter, GLib.Variant? choices, Xdp.OpenFileFlags flags, GLib.Cancellable? cancellable) throws GLib.Error;
		public int open_pipewire_remote_for_camera ();
		public async bool open_uri (Xdp.Parent parent, string uri, Xdp.OpenUriFlags flags, GLib.Cancellable? cancellable) throws GLib.Error;
		public async GLib.Variant pick_color (Xdp.Parent? parent, GLib.Cancellable? cancellable) throws GLib.Error;
		public async GLib.Variant prepare_print (Xdp.Parent? parent, string title, GLib.Variant? settings, GLib.Variant? page_setup, Xdp.PrintFlags flags, GLib.Cancellable? cancellable) throws GLib.Error;
		public async bool print_file (Xdp.Parent? parent, string title, uint token, string file, Xdp.PrintFlags flags, GLib.Cancellable? cancellable) throws GLib.Error;
		public void remove_notification (string id);
		public async bool request_background (Xdp.Parent? parent, string? reason, owned GLib.GenericArray<weak string> commandline, Xdp.BackgroundFlags flags, GLib.Cancellable? cancellable) throws GLib.Error;
		public static bool running_under_flatpak ();
		public static bool running_under_sandbox ();
		public static bool running_under_snap () throws GLib.Error;
		public async GLib.Variant save_file (Xdp.Parent? parent, string title, string? current_name, string? current_folder, string? current_file, GLib.Variant? filters, GLib.Variant? current_filter, GLib.Variant? choices, Xdp.SaveFileFlags flags, GLib.Cancellable? cancellable) throws GLib.Error;
		public async GLib.Variant save_files (Xdp.Parent? parent, string title, string? current_name, string? current_folder, GLib.Variant files, GLib.Variant? choices, Xdp.SaveFileFlags flags, GLib.Cancellable? cancellable) throws GLib.Error;
		public async int session_inhibit (Xdp.Parent? parent, string? reason, Xdp.InhibitFlags flags, GLib.Cancellable? cancellable) throws GLib.Error;
		public void session_monitor_query_end_response ();
		public async bool session_monitor_start (Xdp.Parent? parent, Xdp.SessionMonitorFlags flags, GLib.Cancellable? cancellable) throws GLib.Error;
		public void session_monitor_stop ();
		public void session_uninhibit (int id);
		public async bool set_wallpaper (Xdp.Parent parent, string uri, Xdp.WallpaperFlags flags, GLib.Cancellable? cancellable) throws GLib.Error;
		public async int spawn (string cwd, [CCode (array_length = false, array_null_terminated = true)] string[] argv, [CCode (array_length_cname = "n_fds", array_length_pos = 4.5)] int[]? fds, [CCode (array_length_cname = "n_fds", array_length_pos = 4.5)] int[]? map_to, [CCode (array_length = false, array_null_terminated = true)] string[]? env, Xdp.SpawnFlags flags, [CCode (array_length = false, array_null_terminated = true)] string[]? sandbox_expose, [CCode (array_length = false, array_null_terminated = true)] string[]? sandbox_expose_ro, GLib.Cancellable? cancellable) throws GLib.Error;
		public void spawn_signal (int pid, int @signal, bool to_process_group);
		public async string? take_screenshot (Xdp.Parent? parent, Xdp.ScreenshotFlags flags, GLib.Cancellable? cancellable) throws GLib.Error;
		public async bool trash_file (string path, GLib.Cancellable? cancellable) throws GLib.Error;
		public async bool update_install (Xdp.Parent parent, Xdp.UpdateInstallFlags flags, GLib.Cancellable? cancellable) throws GLib.Error;
		public async bool update_monitor_start (Xdp.UpdateMonitorFlags flags, GLib.Cancellable? cancellable) throws GLib.Error;
		public void update_monitor_stop ();
		public signal void location_updated (double latitude, double longitude, double altitude, double accuracy, double speed, double heading, string description, int64 timestamp_s, int64 timestamp_ms);
		public signal void notification_action_invoked (string id, string action, GLib.Variant? parameter);
		public signal void session_state_changed (bool screensaver_active, Xdp.LoginSessionState session_state);
		public signal void spawn_exited (uint pid, uint exit_status);
		public signal void update_available (string running_commit, string local_commit, string remote_commit);
		public signal void update_progress (uint n_ops, uint op, uint progress, Xdp.UpdateStatus status, string error, string error_message);
	}
	[CCode (cheader_filename = "libportal/portal.h", type_id = "xdp_session_get_type ()")]
	public class Session : GLib.Object {
		[CCode (has_construct_function = false)]
		protected Session ();
		public void close ();
		public Xdp.DeviceType get_devices ();
		public Xdp.PersistMode get_persist_mode ();
		public string? get_restore_token ();
		public Xdp.SessionState get_session_state ();
		public Xdp.SessionType get_session_type ();
		public GLib.Variant get_streams ();
		public void keyboard_key (bool keysym, int key, Xdp.KeyState state);
		public int open_pipewire_remote ();
		public void pointer_axis (bool finish, double dx, double dy);
		public void pointer_axis_discrete (Xdp.DiscreteAxis axis, int steps);
		public void pointer_button (int button, Xdp.ButtonState state);
		public void pointer_motion (double dx, double dy);
		public void pointer_position (uint stream, double x, double y);
		public async bool start (Xdp.Parent? parent, GLib.Cancellable? cancellable) throws GLib.Error;
		public void touch_down (uint stream, uint slot, double x, double y);
		public void touch_position (uint stream, uint slot, double x, double y);
		public void touch_up (uint slot);
		public signal void closed ();
	}
	[CCode (cheader_filename = "libportal/portal.h", cprefix = "XDP_BACKGROUND_FLAG_", type_id = "xdp_background_flags_get_type ()")]
	[Flags]
	public enum BackgroundFlags {
		NONE,
		AUTOSTART,
		ACTIVATABLE
	}
	[CCode (cheader_filename = "libportal/portal.h", cprefix = "XDP_BUTTON_", type_id = "xdp_button_state_get_type ()")]
	public enum ButtonState {
		RELEASED,
		PRESSED
	}
	[CCode (cheader_filename = "libportal/portal.h", cprefix = "XDP_CAMERA_FLAG_", type_id = "xdp_camera_flags_get_type ()")]
	public enum CameraFlags {
		NONE
	}
	[CCode (cheader_filename = "libportal/portal.h", cprefix = "XDP_CURSOR_MODE_", type_id = "xdp_cursor_mode_get_type ()")]
	[Flags]
	public enum CursorMode {
		HIDDEN,
		EMBEDDED,
		METADATA
	}
	[CCode (cheader_filename = "libportal/portal.h", cprefix = "XDP_DEVICE_", type_id = "xdp_device_type_get_type ()")]
	[Flags]
	public enum DeviceType {
		NONE,
		KEYBOARD,
		POINTER,
		TOUCHSCREEN
	}
	[CCode (cheader_filename = "libportal/portal.h", cprefix = "XDP_AXIS_", type_id = "xdp_discrete_axis_get_type ()")]
	public enum DiscreteAxis {
		HORIZONTAL_SCROLL,
		VERTICAL_SCROLL
	}
	[CCode (cheader_filename = "libportal/portal.h", cprefix = "XDP_EMAIL_FLAG_", type_id = "xdp_email_flags_get_type ()")]
	public enum EmailFlags {
		NONE
	}
	[CCode (cheader_filename = "libportal/portal.h", cprefix = "XDP_INHIBIT_FLAG_", type_id = "xdp_inhibit_flags_get_type ()")]
	[Flags]
	public enum InhibitFlags {
		LOGOUT,
		USER_SWITCH,
		SUSPEND,
		IDLE
	}
	[CCode (cheader_filename = "libportal/portal.h", cprefix = "XDP_KEY_", type_id = "xdp_key_state_get_type ()")]
	public enum KeyState {
		RELEASED,
		PRESSED
	}
	[CCode (cheader_filename = "libportal/portal.h", cprefix = "XDP_LAUNCHER_", type_id = "xdp_launcher_type_get_type ()")]
	[Flags]
	public enum LauncherType {
		APPLICATION,
		WEBAPP
	}
	[CCode (cheader_filename = "libportal/portal.h", cprefix = "XDP_LOCATION_ACCURACY_", type_id = "xdp_location_accuracy_get_type ()")]
	public enum LocationAccuracy {
		NONE,
		COUNTRY,
		CITY,
		NEIGHBORHOOD,
		STREET,
		EXACT
	}
	[CCode (cheader_filename = "libportal/portal.h", cprefix = "XDP_LOCATION_MONITOR_FLAG_", type_id = "xdp_location_monitor_flags_get_type ()")]
	public enum LocationMonitorFlags {
		NONE
	}
	[CCode (cheader_filename = "libportal/portal.h", cprefix = "XDP_LOGIN_SESSION_", type_id = "xdp_login_session_state_get_type ()")]
	public enum LoginSessionState {
		RUNNING,
		QUERY_END,
		ENDING
	}
	[CCode (cheader_filename = "libportal/portal.h", cprefix = "XDP_NOTIFICATION_FLAG_", type_id = "xdp_notification_flags_get_type ()")]
	public enum NotificationFlags {
		NONE
	}
	[CCode (cheader_filename = "libportal/portal.h", cprefix = "XDP_OPEN_FILE_FLAG_", type_id = "xdp_open_file_flags_get_type ()")]
	[Flags]
	public enum OpenFileFlags {
		NONE,
		MULTIPLE
	}
	[CCode (cheader_filename = "libportal/portal.h", cprefix = "XDP_OPEN_URI_FLAG_", type_id = "xdp_open_uri_flags_get_type ()")]
	[Flags]
	public enum OpenUriFlags {
		NONE,
		ASK,
		WRITABLE
	}
	[CCode (cheader_filename = "libportal/portal.h", cprefix = "XDP_OUTPUT_", type_id = "xdp_output_type_get_type ()")]
	[Flags]
	public enum OutputType {
		MONITOR,
		WINDOW,
		VIRTUAL
	}
	[CCode (cheader_filename = "libportal/portal.h", cprefix = "XDP_PERSIST_MODE_", type_id = "xdp_persist_mode_get_type ()")]
	public enum PersistMode {
		NONE,
		TRANSIENT,
		PERSISTENT
	}
	[CCode (cheader_filename = "libportal/portal.h", cprefix = "XDP_PRINT_FLAG_", type_id = "xdp_print_flags_get_type ()")]
	public enum PrintFlags {
		NONE
	}
	[CCode (cheader_filename = "libportal/portal.h", cprefix = "XDP_REMOTE_DESKTOP_FLAG_", type_id = "xdp_remote_desktop_flags_get_type ()")]
	[Flags]
	public enum RemoteDesktopFlags {
		NONE,
		MULTIPLE
	}
	[CCode (cheader_filename = "libportal/portal.h", cprefix = "XDP_SAVE_FILE_FLAG_", type_id = "xdp_save_file_flags_get_type ()")]
	public enum SaveFileFlags {
		NONE
	}
	[CCode (cheader_filename = "libportal/portal.h", cprefix = "XDP_SCREENCAST_FLAG_", type_id = "xdp_screencast_flags_get_type ()")]
	[Flags]
	public enum ScreencastFlags {
		NONE,
		MULTIPLE
	}
	[CCode (cheader_filename = "libportal/portal.h", cprefix = "XDP_SCREENSHOT_FLAG_", type_id = "xdp_screenshot_flags_get_type ()")]
	[Flags]
	public enum ScreenshotFlags {
		NONE,
		INTERACTIVE
	}
	[CCode (cheader_filename = "libportal/portal.h", cprefix = "XDP_SESSION_MONITOR_FLAG_", type_id = "xdp_session_monitor_flags_get_type ()")]
	public enum SessionMonitorFlags {
		NONE
	}
	[CCode (cheader_filename = "libportal/portal.h", cprefix = "XDP_SESSION_", type_id = "xdp_session_state_get_type ()")]
	public enum SessionState {
		INITIAL,
		ACTIVE,
		CLOSED
	}
	[CCode (cheader_filename = "libportal/portal.h", cprefix = "XDP_SESSION_", type_id = "xdp_session_type_get_type ()")]
	public enum SessionType {
		SCREENCAST,
		REMOTE_DESKTOP
	}
	[CCode (cheader_filename = "libportal/portal.h", cprefix = "XDP_SPAWN_FLAG_", type_id = "xdp_spawn_flags_get_type ()")]
	[Flags]
	public enum SpawnFlags {
		NONE,
		CLEARENV,
		LATEST,
		SANDBOX,
		NO_NETWORK,
		WATCH
	}
	[CCode (cheader_filename = "libportal/portal.h", cprefix = "XDP_UPDATE_INSTALL_FLAG_", type_id = "xdp_update_install_flags_get_type ()")]
	public enum UpdateInstallFlags {
		NONE
	}
	[CCode (cheader_filename = "libportal/portal.h", cprefix = "XDP_UPDATE_MONITOR_FLAG_", type_id = "xdp_update_monitor_flags_get_type ()")]
	public enum UpdateMonitorFlags {
		NONE
	}
	[CCode (cheader_filename = "libportal/portal.h", cprefix = "XDP_UPDATE_STATUS_", type_id = "xdp_update_status_get_type ()")]
	public enum UpdateStatus {
		RUNNING,
		EMPTY,
		DONE,
		FAILED
	}
	[CCode (cheader_filename = "libportal/portal.h", cprefix = "XDP_USER_INFORMATION_FLAG_", type_id = "xdp_user_information_flags_get_type ()")]
	public enum UserInformationFlags {
		NONE
	}
	[CCode (cheader_filename = "libportal/portal.h", cprefix = "XDP_WALLPAPER_FLAG_", type_id = "xdp_wallpaper_flags_get_type ()")]
	[Flags]
	public enum WallpaperFlags {
		NONE,
		BACKGROUND,
		LOCKSCREEN,
		PREVIEW
	}
	[CCode (cheader_filename = "libportal/portal.h", cname = "XDP_WALLPAPER_TARGET_BOTH")]
	public const int WALLPAPER_TARGET_BOTH;
}
