/* rygel-db-2.6.vapi generated by valac 0.44.1.63-cc924, do not modify. */

namespace Rygel {
	namespace Database {
		[CCode (cheader_filename = "rygel-db.h")]
		public class Cursor : GLib.Object {
			public class Iterator {
				public Rygel.Database.Cursor cursor;
				public Iterator (Rygel.Database.Cursor cursor);
				public unowned Sqlite.Statement @get () throws Rygel.Database.DatabaseError;
				public bool next () throws Rygel.Database.DatabaseError;
			}
			public Cursor (Sqlite.Database db, string sql, GLib.Value[]? arguments) throws Rygel.Database.DatabaseError;
			public void bind (GLib.Value[]? arguments) throws Rygel.Database.DatabaseError;
			public bool has_next () throws Rygel.Database.DatabaseError;
			public Rygel.Database.Cursor.Iterator iterator ();
			public Sqlite.Statement* next () throws Rygel.Database.DatabaseError;
			protected void throw_if_code_is_error (int sqlite_error) throws Rygel.Database.DatabaseError;
			protected void throw_if_db_has_error () throws Rygel.Database.DatabaseError;
		}
		[CCode (cheader_filename = "rygel-db.h")]
		public class Database : GLib.Object, GLib.Initable {
			public Database (string name, Rygel.Database.Flavor flavor = Flavor.CACHE, Rygel.Database.Flags flags = Flags.READ_WRITE) throws Rygel.Database.DatabaseError, GLib.Error;
			public void analyze ();
			public void begin () throws Rygel.Database.DatabaseError;
			public void commit () throws Rygel.Database.DatabaseError;
			public void exec (string sql, GLib.Value[]? arguments = null) throws Rygel.Database.DatabaseError;
			public Rygel.Database.Cursor exec_cursor (string sql, GLib.Value[]? arguments = null) throws Rygel.Database.DatabaseError;
			public bool is_empty () throws Rygel.Database.DatabaseError;
			public int query_value (string sql, GLib.Value[]? args = null) throws Rygel.Database.DatabaseError;
			public void rollback ();
			public static int utf8_collate (int alen, void* a, int blen, void* b);
			public static void utf8_contains (Sqlite.Context context, Sqlite.Value[] args);
			public Rygel.Database.Flags flags { private get; set construct; }
			public Rygel.Database.Flavor flavor { private get; set construct; }
			public string name { private get; set construct; }
		}
		[CCode (cheader_filename = "rygel-db.h")]
		public class SqlFunction : Rygel.Database.SqlOperator {
			public SqlFunction (string name, string arg);
			public override string to_string ();
		}
		[CCode (cheader_filename = "rygel-db.h")]
		public class SqlOperator : GLib.Object {
			protected string arg;
			protected string collate;
			protected string name;
			public SqlOperator (string name, string arg, string collate = "");
			public SqlOperator.from_search_criteria_op (GUPnP.SearchCriteriaOp op, string arg, string collate);
			public virtual string to_string ();
		}
		[CCode (cheader_filename = "rygel-db.h")]
		public enum Flags {
			READ_ONLY,
			WRITE_ONLY,
			READ_WRITE,
			SHARED
		}
		[CCode (cheader_filename = "rygel-db.h")]
		public enum Flavor {
			CACHE,
			CONFIG,
			FOREIGN
		}
		[CCode (cheader_filename = "rygel-db.h")]
		public errordomain DatabaseError {
			SQLITE_ERROR,
			OPEN,
			PREPARE,
			BIND,
			STEP
		}
		[CCode (cheader_filename = "rygel-db.h")]
		public static GLib.Value @null ();
	}
}
