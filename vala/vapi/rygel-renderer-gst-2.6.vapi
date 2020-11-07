/* rygel-renderer-gst-2.6.vapi generated by valac 0.50.1.47-26361, do not modify. */

[CCode (gir_namespace = "Rygel", gir_version = "2.6")]
namespace Rygel {
	[CCode (cheader_filename = "rygel-renderer-gst.h")]
	public class PlaybinPlayer : GLib.Object, Rygel.MediaPlayer {
		public static Rygel.PlaybinPlayer instance () throws GLib.Error;
		public Gst.Element playbin { get; private set; }
		public weak GLib.List<Rygel.DLNAProfile> supported_profiles { get; }
	}
	[CCode (cheader_filename = "rygel-renderer-gst.h")]
	public class PlaybinRenderer : Rygel.MediaRenderer {
		public PlaybinRenderer (string title);
		public Gst.Element? get_playbin ();
	}
	[CCode (cheader_filename = "rygel-renderer-gst.h")]
	public errordomain PlaybinPlayerError {
		NO_ELEMENT
	}
}
