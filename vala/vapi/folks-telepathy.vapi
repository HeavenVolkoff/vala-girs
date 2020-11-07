/* folks-telepathy.vapi generated by valac 0.50.1.47-26361, do not modify. */

[CCode (gir_namespace = "FolksTelepathy", gir_version = "0.6")]
namespace Tpf {
	/**
	 * A persona subclass which represents a single instant messaging contact from
	 * Telepathy.
	 *
	 * There is a one-to-one correspondence between {@link Tpf.Persona}s and
	 * {@link TelepathyGLib.Contact}s, although at any time the
	 * {@link Tpf.Persona.contact} property of a persona may be ``null`` if the
	 * contact's Telepathy connection isn't available (e.g. due to being offline).
	 * In this case, the persona's properties persist from a local cache.
	 */
	[CCode (cheader_filename = "folks/folks-telepathy.h")]
	public class Persona : Folks.Persona, Folks.AliasDetails, Folks.AvatarDetails, Folks.BirthdayDetails, Folks.EmailDetails, Folks.FavouriteDetails, Folks.GroupDetails, Folks.InteractionDetails, Folks.ImDetails, Folks.NameDetails, Folks.PhoneDetails, Folks.PresenceDetails, Folks.UrlDetails {
		/**
		 * Create a new persona.
		 *
		 * Create a new persona for the {@link PersonaStore} ``store``, representing
		 * the Telepathy contact given by ``contact``.
		 *
		 * @param contact the Telepathy contact being represented by the persona
		 * @param store the persona store to place the persona in
		 */
		public Persona (TelepathyGLib.Contact contact, Tpf.PersonaStore store);
		public override void constructed ();
		/**
		 * Look up a {@link Tpf.Persona} by its {@link TelepathyGLib.Contact}.
		 *
		 * If the {@link TelepathyGLib.Account} for the contact's
		 * {@link TelepathyGLib.Connection} is ``null``, or if a
		 * {@link Tpf.PersonaStore} can't be found for that account, ``null`` will be
		 * returned. Otherwise, if a {@link Tpf.Persona} already exists for the given
		 * contact, that will be returned; if one doesn't exist a new one will be
		 * created and returned. In this case, the {@link Tpf.Persona} will be added
		 * to the {@link PersonaStore} associated with the account, and will be
		 * removed when ``contact`` is destroyed.
		 *
		 * @param contact the Telepathy contact of the persona
		 * @return the persona associated with the contact, or ``null``
		 * @since 0.6.6
		 */
		public static Tpf.Persona? dup_for_contact (TelepathyGLib.Contact contact);
		/**
		 * The Telepathy contact represented by this persona.
		 *
		 * Note that this may be ``null`` if the {@link PersonaStore} providing this
		 * {@link Persona} isn't currently available (e.g. due to not being connected
		 * to the network). In this case, most other properties of the {@link Persona}
		 * are being retrieved from a cache and may not be current (though there's no
		 * way to tell this).
		 */
		public TelepathyGLib.Contact? contact { get; construct; }
		/**
		 * Whether the Persona is in the user's contact list.
		 *
		 * This will be true for most {@link Folks.Persona}s, but may not be true for
		 * personas where {@link Folks.Persona.is_user} is true. If it's false in
		 * this case, it means that the persona has been retrieved from the Telepathy
		 * connection, but has not been added to the user's contact list.
		 *
		 * @since 0.3.5
		 */
		public bool is_in_contact_list { get; set; }
		/**
		 * The names of the Persona's linkable properties.
		 *
		 * See {@link Folks.Persona.linkable_properties}.
		 */
		public override string[] linkable_properties { get; }
		/**
		 * {@inheritDoc}
		 *
		 * @since 0.6.0
		 */
		public override string[] writeable_properties { get; }
	}
	/**
	 * A persona store which is associated with a single Telepathy account. It will
	 * create {@link Persona}s for each of the contacts in the account's
	 * contact list.
	 *
	 * User must define contact features it wants on the #TpSimpleClientFactory of
	 * the default #TpAccountManager returned by tp_account_manager_dup() *before*
	 * preparing telepathy stores. Note that this is a behaviour change since
	 * 0.7.0, folks won't force preparing any feature anymore.
	 */
	[CCode (cheader_filename = "folks/folks-telepathy.h")]
	public class PersonaStore : Folks.PersonaStore {
		/**
		 * Create a new PersonaStore.
		 *
		 * Create a new persona store to store the {@link Persona}s for the contacts
		 * in the Telepathy account provided by ``account``.
		 *
		 * @param account the Telepathy account being represented by the persona store
		 */
		public PersonaStore (TelepathyGLib.Account account);
		/**
		 * Add a new {@link Persona} to the PersonaStore.
		 *
		 * See {@link Folks.PersonaStore.add_persona_from_details}.
		 *
		 * This method is safe to call multiple times concurrently for the same (or
		 * different) contact IDs (assuming Telepathy is safe).
		 *
		 * @throws Folks.PersonaStoreError.INVALID_ARGUMENT if the ``contact`` key was
		 * not provided in ``details``
		 * @throws Folks.PersonaStoreError.STORE_OFFLINE if the CM is offline
		 * @throws Folks.PersonaStoreError.CREATE_FAILED if adding the contact failed
		 */
		public override async Folks.Persona? add_persona_from_details (GLib.HashTable<string,GLib.Value?> details) throws Folks.PersonaStoreError;
		/**
		 * Look up a {@link Tpf.PersonaStore} by its {@link TelepathyGLib.Account}.
		 *
		 * If found, a new reference to the persona store will be returned. If not
		 * found, a new {@link Tpf.PersonaStore} will be created for the account.
		 *
		 * See the documentation for {@link Tpf.PersonaStore.list_persona_stores} for
		 * information on the lifecycle of these stores when a
		 * {@link Folks.BackendStore} is and is not present.
		 *
		 * @param account the Telepathy account of the persona store
		 * @return the persona store associated with the account
		 * @since 0.6.6
		 */
		public static Tpf.PersonaStore dup_for_account (TelepathyGLib.Account account);
		public override async void flush ();
		/**
		 * Get a map of all the currently constructed {@link Tpf.PersonaStore}s.
		 *
		 * If a {@link Folks.BackendStore} has been prepared, this map will be
		 * complete, containing every store known to the Telepathy account manager. If
		 * no {@link Folks.BackendStore} has been prepared, this map will only contain
		 * the stores which have been created by calling
		 * {@link Tpf.PersonaStore.dup_for_account}.
		 *
		 * This map is read-only. Use {@link Folks.BackendStore} or
		 * {@link Tpf.PersonaStore.dup_for_account} to add stores.
		 *
		 * @return map from {@link Folks.PersonaStore.id} to {@link Tpf.PersonaStore}
		 * @since 0.6.6
		 */
		public static unowned Gee.Map<string,Tpf.PersonaStore> list_persona_stores ();
		/**
		 * Prepare the PersonaStore for use.
		 *
		 * See {@link Folks.PersonaStore.prepare}.
		 *
		 * @throws GLib.Error currently unused
		 */
		public override async void prepare () throws GLib.Error;
		/**
		 * Remove a {@link Persona} from the PersonaStore.
		 *
		 * See {@link Folks.PersonaStore.remove_persona}.
		 *
		 * @throws Folks.PersonaStoreError.UNSUPPORTED_ON_USER if ``persona`` is the
		 * local user — removing the local user isn’t supported
		 * @throws Folks.PersonaStoreError.REMOVE_FAILED if removing the contact
		 * failed
		 */
		public override async void remove_persona (Folks.Persona persona) throws Folks.PersonaStoreError;
		/**
		 * The Telepathy account this store is based upon.
		 */
		[Description (blurb = "Telepathy account this store is based upon", nick = "basis account")]
		public TelepathyGLib.Account account { get; construct; }
		/**
		 * {@inheritDoc}
		 *
		 * @since 0.6.2
		 */
		public override string[] always_writeable_properties { get; }
		/**
		 * Whether this PersonaStore can add {@link Folks.Persona}s.
		 *
		 * See {@link Folks.PersonaStore.can_add_personas}.
		 *
		 * @since 0.3.1
		 */
		public override Folks.MaybeBool can_add_personas { get; }
		/**
		 * Whether this PersonaStore can set the alias of {@link Folks.Persona}s.
		 *
		 * See {@link Folks.PersonaStore.can_alias_personas}.
		 *
		 * @since 0.3.1
		 */
		public override Folks.MaybeBool can_alias_personas { get; }
		/**
		 * Whether this PersonaStore can set the groups of {@link Folks.Persona}s.
		 *
		 * See {@link Folks.PersonaStore.can_group_personas}.
		 *
		 * @since 0.3.1
		 */
		public override Folks.MaybeBool can_group_personas { get; }
		/**
		 * Whether this PersonaStore can remove {@link Folks.Persona}s.
		 *
		 * See {@link Folks.PersonaStore.can_remove_personas}.
		 *
		 * @since 0.3.1
		 */
		public override Folks.MaybeBool can_remove_personas { get; }
		/**
		 * Whether this PersonaStore has been prepared.
		 *
		 * See {@link Folks.PersonaStore.is_prepared}.
		 *
		 * @since 0.3.0
		 */
		public override bool is_prepared { get; }
		public override bool is_quiescent { get; }
		/**
		 * The {@link Persona}s exposed by this PersonaStore.
		 *
		 * See {@link Folks.PersonaStore.personas}.
		 */
		public override Gee.Map<string,Folks.Persona> personas { get; }
		/**
		 * The type of persona store this is.
		 *
		 * See {@link Folks.PersonaStore.type_id}.
		 */
		public override string type_id { get; }
	}
}
