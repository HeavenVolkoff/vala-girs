/*
 * Copyright (C) 2017 - Red Hat Inc
 *
 * This library is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public
 * License as published by the Free Software Foundation; either
 * version 2.1 of the License, or (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this library; if not, write to the
 * Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor,
 * Boston, MA  02110-1301, USA.
 */

namespace Tracker {
	[CCode (cheader_filename = "libtracker-sparql/tracker-sparql.h")]
	public class NamespaceManager : GLib.Object {
		public NamespaceManager ();
		public void add_prefix (string prefix, string namespace);
		public bool has_prefix (string prefix);
		public string lookup_prefix (string prefix);
		public string expand_uri (string compact_uri);

		public static NamespaceManager get_default ();
	}

	[CCode (cheader_filename = "libtracker-sparql/tracker-sparql.h")]
	public class Resource : GLib.Object {
		public Resource (string identifier);

		public void set_value (string predicate, GLib.Value value);
		public void set_boolean (string predicate, bool object);
		public void set_double (string predicate, double object);
		public void set_int (string predicate, int object);
		public void set_int64 (string predicate, int64 object);
		public void set_relation (string predicate, Resource object);
		public void set_string (string predicate, string object);
		public void set_uri (string predicate, string object);

		public void add_value (string predicate, GLib.Value value);
		public void add_boolean (string predicate, bool object);
		public void add_double (string predicate, double object);
		public void add_int (string predicate, int object);
		public void add_int64 (string predicate, int64 object);
		public void add_relation (string predicate, Resource object);
		public void add_string (string predicate, string object);
		public void add_uri (string predicate, string object);

		public GLib.List<GLib.Value?> get_values (string predicate);

		public bool get_first_boolean (string predicate);
		public double get_first_double (string predicate);
		public int get_first_int (string predicate);
		public int64 get_first_int64 (string predicate);
		public unowned Resource get_first_relation (string predicate);
		public string get_first_string (string predicate);
		public string get_first_uri (string predicate);

		public string get_identifier ();
		public void set_identifier (string identifier);

		public int identifier_compare_func (string identifier);

		public string print_turtle (NamespaceManager? namespace_manager);
		public string print_sparql_update (NamespaceManager? namespace_manager, string graph);
	}

	[CCode (cprefix = "TRACKER_NOTIFIER_FLAG_", cheader_filename = "libtracker-sparql/tracker-sparql.h")]
	public enum NotifierFlags {
		QUERY_URN,
		QUERY_LOCATION,
		NOTIFY_UNEXTRACTED
	}

	public enum NotifierEventType {
		QUERY_URN,
		QUERY_LOCATION,
		NOTIFY_UNEXTRACTED
	}

	[CCode (cheader_filename = "libtracker-sparql/tracker-sparql.h")]
	public class Notifier : GLib.Object, GLib.Initable {
		public Notifier (string[] classes, NotifierFlags flags, GLib.Cancellable? cancellable) throws GLib.Error;

		public class NotifierEvent {
			public enum Type {
				CREATE,
				DELETE,
				UPDATE
			}

			public int64 get_id ();
			public string get_type ();
			public string get_urn ();
			public string get_location ();
		}
	}
}
/* tracker-sparql-intermediate-vala.vapi generated by valac 0.54.1.112-935a9, do not modify. */

[CCode (cprefix = "Tracker", gir_namespace = "Tracker_Vala", gir_version = "2.0", lower_case_cprefix = "tracker_")]
namespace Tracker {
	namespace Sparql {
		[CCode (cheader_filename = "libtracker-sparql/tracker-sparql.h")]
		public class Builder : GLib.Object {
			public enum State {
				UPDATE,
				INSERT,
				DELETE,
				SUBJECT,
				PREDICATE,
				OBJECT,
				BLANK,
				WHERE,
				EMBEDDED_INSERT,
				GRAPH
			}
			public Builder ();
			[Version (deprecated = true, deprecated_since = "2.0", replacement = "Tracker.Resource")]
			public void append (string raw);
			[Version (deprecated = true, deprecated_since = "2.0", replacement = "Tracker.Resource")]
			public void delete_close ();
			[Version (deprecated = true, deprecated_since = "2.0", replacement = "Tracker.Resource")]
			public void delete_open (string? graph);
			public Builder.embedded_insert ();
			[Version (deprecated = true, deprecated_since = "2.0", replacement = "Tracker.Resource")]
			public void graph_close ();
			[Version (deprecated = true, deprecated_since = "2.0", replacement = "Tracker.Resource")]
			public void graph_open (string graph);
			[Version (deprecated = true, deprecated_since = "2.0", replacement = "Tracker.Resource")]
			public void insert_close ();
			[Version (deprecated = true, deprecated_since = "2.0", replacement = "Tracker.Resource")]
			public void insert_open (string? graph);
			[Version (deprecated = true, deprecated_since = "2.0", replacement = "Tracker.Resource")]
			public void insert_silent_open (string? graph);
			[Version (deprecated = true, deprecated_since = "2.0", replacement = "Tracker.Resource")]
			public void object (string s);
			[Version (deprecated = true, deprecated_since = "2.0", replacement = "Tracker.Resource")]
			public void object_blank_close ();
			[Version (deprecated = true, deprecated_since = "2.0", replacement = "Tracker.Resource")]
			public void object_blank_open ();
			[Version (deprecated = true, deprecated_since = "2.0", replacement = "Tracker.Resource")]
			public void object_boolean (bool literal);
			[Version (deprecated = true, deprecated_since = "2.0", replacement = "Tracker.Resource")]
			public void object_date (ref time_t literal);
			[Version (deprecated = true, deprecated_since = "2.0", replacement = "Tracker.Resource")]
			public void object_double (double literal);
			[Version (deprecated = true, deprecated_since = "2.0", replacement = "Tracker.Resource")]
			public void object_int64 (int64 literal);
			[Version (deprecated = true, deprecated_since = "2.0", replacement = "Tracker.Resource")]
			public void object_iri (string iri);
			[Version (deprecated = true, deprecated_since = "2.0", replacement = "Tracker.Resource")]
			public void object_string (string literal);
			[Version (deprecated = true, deprecated_since = "2.0", replacement = "Tracker.Resource")]
			public void object_unvalidated (string value);
			[Version (deprecated = true, deprecated_since = "2.0", replacement = "Tracker.Resource")]
			public void object_variable (string var_name);
			[Version (deprecated = true, deprecated_since = "2.0", replacement = "Tracker.Resource")]
			public void predicate (string s);
			[Version (deprecated = true, deprecated_since = "2.0", replacement = "Tracker.Resource")]
			public void predicate_iri (string iri);
			[Version (deprecated = true, deprecated_since = "2.0", replacement = "Tracker.Resource")]
			public void prepend (string raw);
			[Version (deprecated = true, deprecated_since = "2.0", replacement = "Tracker.Resource")]
			public void subject (string s);
			[Version (deprecated = true, deprecated_since = "2.0", replacement = "Tracker.Resource")]
			public void subject_iri (string iri);
			[Version (deprecated = true, deprecated_since = "2.0", replacement = "Tracker.Resource")]
			public void subject_variable (string var_name);
			public Builder.update ();
			[Version (deprecated = true, deprecated_since = "2.0", replacement = "Tracker.Resource")]
			public void where_close ();
			[Version (deprecated = true, deprecated_since = "2.0", replacement = "Tracker.Resource")]
			public void where_open ();
			public int length { get; private set; }
			public string result { get; }
			public Tracker.Sparql.Builder.State state { get; }
		}
		[CCode (cheader_filename = "libtracker-sparql/tracker-sparql.h")]
		public abstract class Connection : GLib.Object {
			protected Connection ();
			public new static Tracker.Sparql.Connection @get (GLib.Cancellable? cancellable = null) throws Tracker.Sparql.Error, GLib.IOError, GLib.DBusError, GLib.SpawnError;
			public new static async Tracker.Sparql.Connection get_async (GLib.Cancellable? cancellable = null) throws Tracker.Sparql.Error, GLib.IOError, GLib.DBusError, GLib.SpawnError;
			public static GLib.DBusConnection? get_dbus_connection ();
			public static string? get_domain ();
			public virtual Tracker.NamespaceManager? get_namespace_manager ();
			public virtual void load (GLib.File file, GLib.Cancellable? cancellable = null) throws Tracker.Sparql.Error, GLib.IOError, GLib.DBusError;
			public virtual async void load_async (GLib.File file, GLib.Cancellable? cancellable = null) throws Tracker.Sparql.Error, GLib.IOError, GLib.DBusError;
			public new static Tracker.Sparql.Connection local_new (Tracker.Sparql.ConnectionFlags flags, GLib.File store, GLib.File? journal, GLib.File? ontology, GLib.Cancellable? cancellable = null) throws Tracker.Sparql.Error, GLib.IOError;
			public new static async Tracker.Sparql.Connection local_new_async (Tracker.Sparql.ConnectionFlags flags, GLib.File store, GLib.File? journal, GLib.File? ontology, GLib.Cancellable? cancellable = null) throws Tracker.Sparql.Error, GLib.IOError;
			public abstract Tracker.Sparql.Cursor query (string sparql, GLib.Cancellable? cancellable = null) throws Tracker.Sparql.Error, GLib.Error, GLib.IOError, GLib.DBusError;
			public abstract async Tracker.Sparql.Cursor query_async (string sparql, GLib.Cancellable? cancellable = null) throws Tracker.Sparql.Error, GLib.Error, GLib.IOError, GLib.DBusError;
			public virtual Tracker.Sparql.Statement? query_statement (string sparql, GLib.Cancellable? cancellable = null) throws Tracker.Sparql.Error;
			public new static Tracker.Sparql.Connection remote_new (string uri_base);
			public static void set_dbus_connection (GLib.DBusConnection dbus_connection);
			public static void set_domain (string? domain);
			public virtual Tracker.Sparql.Cursor? statistics (GLib.Cancellable? cancellable = null) throws Tracker.Sparql.Error, GLib.IOError, GLib.DBusError;
			public virtual async Tracker.Sparql.Cursor? statistics_async (GLib.Cancellable? cancellable = null) throws Tracker.Sparql.Error, GLib.IOError, GLib.DBusError;
			public virtual void update (string sparql, int priority = GLib.Priority.DEFAULT, GLib.Cancellable? cancellable = null) throws Tracker.Sparql.Error, GLib.Error, GLib.IOError, GLib.DBusError;
			public virtual async GLib.GenericArray<Tracker.Sparql.Error?>? update_array_async (string[] sparql, int priority = GLib.Priority.DEFAULT, GLib.Cancellable? cancellable = null) throws Tracker.Sparql.Error, GLib.Error, GLib.IOError, GLib.DBusError;
			public virtual async void update_async (string sparql, int priority = GLib.Priority.DEFAULT, GLib.Cancellable? cancellable = null) throws Tracker.Sparql.Error, GLib.Error, GLib.IOError, GLib.DBusError;
			public virtual GLib.Variant? update_blank (string sparql, int priority = GLib.Priority.DEFAULT, GLib.Cancellable? cancellable = null) throws Tracker.Sparql.Error, GLib.Error, GLib.IOError, GLib.DBusError;
			public virtual async GLib.Variant? update_blank_async (string sparql, int priority = GLib.Priority.DEFAULT, GLib.Cancellable? cancellable = null) throws Tracker.Sparql.Error, GLib.Error, GLib.IOError, GLib.DBusError;
		}
		[CCode (cheader_filename = "libtracker-sparql/tracker-sparql.h")]
		public abstract class Cursor : GLib.Object {
			protected Cursor ();
			public virtual void close ();
			public virtual bool get_boolean (int column);
			public virtual double get_double (int column);
			public virtual int64 get_integer (int column);
			public abstract unowned string? get_string (int column, out long length = null);
			public abstract Tracker.Sparql.ValueType get_value_type (int column);
			public abstract unowned string? get_variable_name (int column);
			public virtual bool is_bound (int column);
			public abstract bool next (GLib.Cancellable? cancellable = null) throws GLib.Error;
			public abstract async bool next_async (GLib.Cancellable? cancellable = null) throws GLib.Error;
			public abstract void rewind ();
			public Tracker.Sparql.Connection connection { get; set; }
			public abstract int n_columns { get; }
		}
		[CCode (cheader_filename = "libtracker-sparql/tracker-sparql.h")]
		public abstract class Statement : GLib.Object {
			protected Statement ();
			public abstract void bind_boolean (string name, bool value);
			public abstract void bind_double (string name, double value);
			public abstract void bind_int (string name, int64 value);
			public abstract void bind_string (string name, string value);
			public abstract Tracker.Sparql.Cursor execute (GLib.Cancellable? cancellable) throws Tracker.Sparql.Error, GLib.Error, GLib.IOError, GLib.DBusError;
			public abstract async Tracker.Sparql.Cursor execute_async (GLib.Cancellable? cancellable) throws Tracker.Sparql.Error, GLib.Error, GLib.IOError, GLib.DBusError;
			public Tracker.Sparql.Connection connection { get; set construct; }
			public string sparql { get; set construct; }
		}
		[CCode (cheader_filename = "libtracker-sparql/tracker-sparql.h")]
		public enum ConnectionFlags {
			NONE,
			READONLY
		}
		[CCode (cheader_filename = "libtracker-sparql/tracker-sparql.h")]
		public enum ValueType {
			UNBOUND,
			URI,
			STRING,
			INTEGER,
			DOUBLE,
			DATETIME,
			BLANK_NODE,
			BOOLEAN
		}
		[CCode (cheader_filename = "libtracker-sparql/tracker-sparql.h")]
		[DBus (name = "org.freedesktop.Tracker1.SparqlError")]
		public errordomain Error {
			PARSE,
			UNKNOWN_CLASS,
			UNKNOWN_PROPERTY,
			TYPE,
			CONSTRAINT,
			NO_SPACE,
			INTERNAL,
			UNSUPPORTED
		}
		[CCode (cheader_filename = "libtracker-sparql/tracker-sparql.h")]
		public static string escape_string (string literal);
		[CCode (cheader_filename = "libtracker-sparql/tracker-sparql.h")]
		public static string escape_uri (string uri);
		[CCode (cheader_filename = "libtracker-sparql/tracker-sparql.h")]
		public static string escape_uri_printf (string format, ...);
		[CCode (cheader_filename = "libtracker-sparql/tracker-sparql.h")]
		public static string escape_uri_vprintf (string format, va_list args);
		[CCode (cheader_filename = "libtracker-sparql/tracker-sparql.h")]
		public static string get_uuid_urn ();
	}
	[CCode (cheader_filename = "libtracker-sparql/tracker-sparql.h")]
	public const string DBUS_INTERFACE_RESOURCES;
	[CCode (cheader_filename = "libtracker-sparql/tracker-sparql.h")]
	public const string DBUS_INTERFACE_STATISTICS;
	[CCode (cheader_filename = "libtracker-sparql/tracker-sparql.h")]
	public const string DBUS_INTERFACE_STATUS;
	[CCode (cheader_filename = "libtracker-sparql/tracker-sparql.h")]
	public const string DBUS_INTERFACE_STEROIDS;
	[CCode (cheader_filename = "libtracker-sparql/tracker-sparql.h")]
	public const string DBUS_OBJECT_RESOURCES;
	[CCode (cheader_filename = "libtracker-sparql/tracker-sparql.h")]
	public const string DBUS_OBJECT_STATISTICS;
	[CCode (cheader_filename = "libtracker-sparql/tracker-sparql.h")]
	public const string DBUS_OBJECT_STATUS;
	[CCode (cheader_filename = "libtracker-sparql/tracker-sparql.h")]
	public const string DBUS_OBJECT_STEROIDS;
	[CCode (cheader_filename = "libtracker-sparql/tracker-sparql.h")]
	public const string DBUS_SERVICE;
}
