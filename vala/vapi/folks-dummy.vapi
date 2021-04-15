/* folks-dummy.vapi generated by valac 0.52.1, do not modify. */

[CCode (gir_namespace = "FolksDummy", gir_version = "0.7")]
namespace FolksDummy {
	/**
	 * A backend which allows {@link FolksDummy.PersonaStore}s and
	 * {@link FolksDummy.Persona}s to be programmatically created and manipulated,
	 * for the purposes of testing the core of libfolks itself.
	 *
	 * This backend is not meant to be enabled in production use. The methods on
	 * {@link FolksDummy.Backend} (and other classes) for programmatically
	 * manipulating the backend's state are considered internal to libfolks and are
	 * not stable.
	 *
	 * This backend maintains two sets of persona stores: the set of all persona
	 * stores, and the set of enabled persona stores (which must be a subset of the
	 * former). {@link FolksDummy.Backend.register_persona_stores} adds persona
	 * stores to the set of all stores. Optionally it also enables them, adding them
	 * to the set of enabled stores. The set of persona stores advertised by the
	 * backend as {@link Folks.Backend.persona_stores} is the set of enabled stores.
	 * libfolks may internally enable or disable stores using
	 * {@link Folks.Backend.enable_persona_store},
	 * {@link Folks.Backend.disable_persona_store}
	 * and {@link Folks.Backend.set_persona_stores}.  The ``register_`` and
	 * ``unregister_`` prefixes are commonly used for backend methods.
	 *
	 * The API in {@link FolksDummy} is unstable and may change wildly. It is
	 * designed mostly for use by libfolks unit tests.
	 *
	 * @since 0.9.7
	 */
	[CCode (cheader_filename = "folks/folks-dummy.h")]
	public class Backend : Folks.Backend {
		/**
		 * {@inheritDoc}
		 *
		 * @since 0.9.7
		 */
		public Backend ();
		/**
		 * {@inheritDoc}
		 *
		 * @since 0.9.7
		 */
		public override void disable_persona_store (Folks.PersonaStore store);
		/**
		 * {@inheritDoc}
		 *
		 * @since 0.9.7
		 */
		public override void enable_persona_store (Folks.PersonaStore store);
		/**
		 * {@inheritDoc}
		 *
		 * @since 0.9.7
		 */
		public override async void prepare () throws GLib.Error;
		/**
		 * Register and enable some {@link FolksDummy.PersonaStore}s.
		 *
		 * For each of the persona stores in ``stores``, register it with this
		 * backend. If ``enable_stores`` is ``true``, added stores will also be
		 * enabled, emitting {@link Folks.Backend.persona_store_added} for each
		 * newly-enabled store. After all addition signals are emitted, a change
		 * notification for {@link Folks.Backend.persona_stores} will be emitted (but
		 * only if at least one addition signal is emitted).
		 *
		 * Persona stores are identified by their {@link Folks.PersonaStore.id}; if a
		 * store in ``stores`` has the same ID as a store previously registered
		 * through this method, the duplicate will be ignored (so
		 * {@link Folks.Backend.persona_store_added} won't be emitted for that store).
		 *
		 * Persona stores must be instances of {@link FolksDummy.PersonaStore} or
		 * subclasses of it, allowing for different persona store implementations to
		 * be tested.
		 *
		 * @param stores set of persona stores to register
		 * @param enable_stores whether to automatically enable the stores
		 * @since 0.9.7
		 */
		public void register_persona_stores (Gee.Set<FolksDummy.PersonaStore> stores, bool enable_stores = true);
		/**
		 * {@inheritDoc}
		 *
		 * @since 0.9.7
		 */
		public override void set_persona_stores (Gee.Set<string>? store_ids);
		/**
		 * {@inheritDoc}
		 *
		 * @since 0.9.7
		 */
		public override async void unprepare () throws GLib.Error;
		/**
		 * Disable and unregister some {@link FolksDummy.PersonaStore}s.
		 *
		 * For each of the persona stores in ``stores``, disable it (if it was
		 * enabled) and unregister it from the backend so that it cannot be re-enabled
		 * using {@link Folks.Backend.enable_persona_store} or
		 * {@link Folks.Backend.set_persona_stores}.
		 *
		 * {@link Folks.Backend.persona_store_removed} will be emitted for all persona
		 * stores in ``stores`` which were previously enabled. After all removal
		 * signals are emitted, a change notification for
		 * {@link Folks.Backend.persona_stores} will be emitted (but only if at least
		 * one removal signal is emitted).
		 *
		 * @since 0.9.7
		 */
		public void unregister_persona_stores (Gee.Set<FolksDummy.PersonaStore> stores);
		/**
		 * Whether this Backend has been prepared.
		 *
		 * See {@link Folks.Backend.is_prepared}.
		 *
		 * @since 0.9.7
		 */
		public override bool is_prepared { get; }
		/**
		 * Whether this Backend has reached a quiescent state.
		 *
		 * See {@link Folks.Backend.is_quiescent}.
		 *
		 * @since 0.9.7
		 */
		public override bool is_quiescent { get; }
		/**
		 * {@inheritDoc}
		 *
		 * @since 0.9.7
		 */
		public override string name { get; }
		/**
		 * {@inheritDoc}
		 *
		 * @since 0.9.7
		 */
		public override Gee.Map<string,Folks.PersonaStore> persona_stores { get; }
	}
	/**
	 * A persona subclass representing a single ‘full’ contact.
	 *
	 * This mocks up a ‘full’ persona which implements all the available property
	 * interfaces provided by libfolks. This is in contrast with
	 * {@link FolksDummy.Persona}, which provides a base class implementing none of
	 * libfolks’ interfaces.
	 *
	 * The full dummy persona can be used to simulate a persona from most libfolks
	 * backends, if writing a custom {@link FolksDummy.Persona} subclass is not an
	 * option.
	 *
	 * There are two sides to this class’ interface: the normal methods required by
	 * the libfolks ‘details’ interfaces, such as
	 * {@link Folks.GenderDetails.change_gender},
	 * and the backend methods which should be called by test driver code to
	 * simulate changes in the backing store providing this persona, such as
	 * {@link FullPersona.update_gender}. For example, test driver code should call
	 * {@link FullPersona.update_nickname} to simulate the user editing a contact’s
	 * nickname in an online address book which is being exposed to libfolks. The
	 * ``update_``, ``register_`` and ``unregister_`` prefixes are commonly used for
	 * backend methods.
	 *
	 * The API in {@link FolksDummy} is unstable and may change wildly. It is
	 * designed mostly for use by libfolks unit tests.
	 *
	 * @since 0.9.7
	 */
	[CCode (cheader_filename = "folks/folks-dummy.h")]
	public class FullPersona : FolksDummy.Persona, Folks.AntiLinkable, Folks.AvatarDetails, Folks.BirthdayDetails, Folks.EmailDetails, Folks.FavouriteDetails, Folks.GenderDetails, Folks.GroupDetails, Folks.ImDetails, Folks.LocalIdDetails, Folks.NameDetails, Folks.NoteDetails, Folks.PhoneDetails, Folks.RoleDetails, Folks.UrlDetails, Folks.PostalAddressDetails, Folks.WebServiceDetails {
		/**
		 * Create a new ‘full’ persona.
		 *
		 * Create a new persona for the {@link FolksDummy.PersonaStore} ``store``,
		 * with the given construct-only properties.
		 *
		 * @param store the store which will contain the persona
		 * @param contact_id a unique free-form string identifier for the persona
		 * @param is_user ``true`` if the persona represents the user, ``false``
		 * otherwise
		 * @param linkable_properties an array of names of the properties which should
		 * be used for linking this persona to others
		 *
		 * @since 0.9.7
		 */
		public FullPersona (FolksDummy.PersonaStore store, string contact_id, bool is_user = false, string[] linkable_properties = new string[0] { });
		/**
		 * Update persona's anti-links.
		 *
		 * This simulates a backing-store-side update of the persona's
		 * {@link Folks.AntiLinkable.anti_links} property. It is intended to be used
		 * for testing code which consumes this property. If the property value
		 * changes, this results in a property change notification on the persona.
		 *
		 * @param anti_links persona's new anti-links
		 * @since 0.9.7
		 */
		public void update_anti_links (Gee.Set<string> anti_links);
		/**
		 * Update persona's avatar.
		 *
		 * This simulates a backing-store-side update of the persona's
		 * {@link Folks.AvatarDetails.avatar} property. It is intended to be used for
		 * testing code which consumes this property. If the property value changes,
		 * this results in a property change notification on the persona.
		 *
		 * @param avatar persona's new avatar
		 * @since 0.9.7
		 */
		public void update_avatar (GLib.LoadableIcon? avatar);
		/**
		 * Update persona's birthday.
		 *
		 * This simulates a backing-store-side update of the persona's
		 * {@link Folks.BirthdayDetails.birthday} property. It is intended to be used
		 * for testing code which consumes this property. If the property value
		 * changes, this results in a property change notification on the persona.
		 *
		 * @param birthday persona's new birthday
		 * @since 0.9.7
		 */
		public void update_birthday (GLib.DateTime? birthday);
		/**
		 * Update persona's birthday calendar event ID.
		 *
		 * This simulates a backing-store-side update of the persona's
		 * {@link Folks.BirthdayDetails.calendar_event_id} property. It is intended to
		 * be used for testing code which consumes this property. If the property
		 * value changes, this results in a property change notification on the
		 * persona.
		 *
		 * @param calendar_event_id persona's new birthday calendar event ID
		 * @since 0.9.7
		 */
		public void update_calendar_event_id (string? calendar_event_id);
		/**
		 * Update persona's e-mail addresses.
		 *
		 * This simulates a backing-store-side update of the persona's
		 * {@link Folks.EmailDetails.email_addresses} property. It is intended to be
		 * used for testing code which consumes this property. If the property value
		 * changes, this results in a property change notification on the persona.
		 *
		 * @param email_addresses persona's new e-mail addresses
		 * @since 0.9.7
		 */
		public void update_email_addresses (Gee.Set<Folks.EmailFieldDetails> email_addresses);
		/**
		 * Update persona's full name.
		 *
		 * This simulates a backing-store-side update of the persona's
		 * {@link Folks.NameDetails.full_name} property. It is intended to be used for
		 * testing code which consumes this property. If the property value changes,
		 * this results in a property change notification on the persona.
		 *
		 * @param full_name persona's new full name
		 * @since 0.9.7
		 */
		public void update_full_name (string full_name);
		/**
		 * Update persona's gender.
		 *
		 * This simulates a backing-store-side update of the persona's
		 * {@link Folks.GenderDetails.gender} property. It is intended to be used for
		 * testing code which consumes this property. If the property value changes,
		 * this results in a property change notification on the persona.
		 *
		 * @param gender persona's new gender
		 * @since 0.9.7
		 */
		public void update_gender (Folks.Gender gender);
		/**
		 * Update persona's groups.
		 *
		 * This simulates a backing-store-side update of the persona's
		 * {@link Folks.GroupDetails.groups} property. It is intended to be used for
		 * testing code which consumes this property. If the property value changes,
		 * this results in a property change notification on the persona.
		 *
		 * @param groups persona's new groups
		 * @since 0.9.7
		 */
		public void update_groups (Gee.Set<string> groups);
		/**
		 * Update persona's IM addresses.
		 *
		 * This simulates a backing-store-side update of the persona's
		 * {@link Folks.ImDetails.im_addresses} property. It is intended to be used
		 * for testing code which consumes this property. If the property value
		 * changes, this results in a property change notification on the persona.
		 *
		 * @param im_addresses persona's new IM addresses
		 * @since 0.9.7
		 */
		public void update_im_addresses (Gee.MultiMap<string,Folks.ImFieldDetails> im_addresses);
		/**
		 * Update persona's status as a favourite.
		 *
		 * This simulates a backing-store-side update of the persona's
		 * {@link Folks.FavouriteDetails.is_favourite} property. It is intended to be
		 * used for testing code which consumes this property. If the property value
		 * changes, this results in a property change notification on the persona.
		 *
		 * @param is_favourite persona's new status as a favourite
		 * @since 0.9.7
		 */
		public void update_is_favourite (bool is_favourite);
		/**
		 * Update persona's local IDs.
		 *
		 * This simulates a backing-store-side update of the persona's
		 * {@link Folks.LocalIdDetails.local_ids} property. It is intended to be used
		 * for testing code which consumes this property. If the property value
		 * changes, this results in a property change notification on the persona.
		 *
		 * @param local_ids persona's new local IDs
		 * @since 0.9.7
		 */
		public void update_local_ids (Gee.Set<string> local_ids);
		/**
		 * Update persona's nickname.
		 *
		 * This simulates a backing-store-side update of the persona's
		 * {@link Folks.NameDetails.nickname} property. It is intended to be used for
		 * testing code which consumes this property. If the property value changes,
		 * this results in a property change notification on the persona.
		 *
		 * @param nickname persona's new nickname
		 * @since 0.9.7
		 */
		public void update_nickname (string nickname);
		/**
		 * Update persona's notes.
		 *
		 * This simulates a backing-store-side update of the persona's
		 * {@link Folks.NoteDetails.notes} property. It is intended to be used for
		 * testing code which consumes this property. If the property value changes,
		 * this results in a property change notification on the persona.
		 *
		 * @param notes persona's new notes
		 * @since 0.9.7
		 */
		public void update_notes (Gee.Set<Folks.NoteFieldDetails> notes);
		/**
		 * Update persona's phone numbers.
		 *
		 * This simulates a backing-store-side update of the persona's
		 * {@link Folks.PhoneDetails.phone_numbers} property. It is intended to be
		 * used for testing code which consumes this property. If the property value
		 * changes, this results in a property change notification on the persona.
		 *
		 * @param phone_numbers persona's new phone numbers
		 * @since 0.9.7
		 */
		public void update_phone_numbers (Gee.Set<Folks.PhoneFieldDetails> phone_numbers);
		/**
		 * Update persona's postal addresses.
		 *
		 * This simulates a backing-store-side update of the persona's
		 * {@link Folks.PostalAddressDetails.postal_addresses} property. It is
		 * intended to be used for testing code which consumes this property. If the
		 * property value changes, this results in a property change notification on
		 * the persona.
		 *
		 * @param postal_addresses persona's new postal addresses
		 * @since 0.9.7
		 */
		public void update_postal_addresses (Gee.Set<Folks.PostalAddressFieldDetails> postal_addresses);
		/**
		 * Update persona's roles.
		 *
		 * This simulates a backing-store-side update of the persona's
		 * {@link Folks.RoleDetails.roles} property. It is intended to be used for
		 * testing code which consumes this property. If the property value changes,
		 * this results in a property change notification on the persona.
		 *
		 * @param roles persona's new roles
		 * @since 0.9.7
		 */
		public void update_roles (Gee.Set<Folks.RoleFieldDetails> roles);
		/**
		 * Update persona's structured name.
		 *
		 * This simulates a backing-store-side update of the persona's
		 * {@link Folks.NameDetails.structured_name} property. It is intended to be
		 * used for testing code which consumes this property. If the property value
		 * changes, this results in a property change notification on the persona.
		 *
		 * @param structured_name persona's new structured name
		 * @since 0.9.7
		 */
		public void update_structured_name (Folks.StructuredName? structured_name);
		/**
		 * Update persona's URIs.
		 *
		 * This simulates a backing-store-side update of the persona's
		 * {@link Folks.UrlDetails.urls} property. It is intended to be used for
		 * testing code which consumes this property. If the property value changes,
		 * this results in a property change notification on the persona.
		 *
		 * @param urls persona's new URIs
		 * @since 0.9.7
		 */
		public void update_urls (Gee.Set<Folks.UrlFieldDetails> urls);
		/**
		 * Update persona's web service addresses.
		 *
		 * This simulates a backing-store-side update of the persona's
		 * {@link Folks.WebServiceDetails.web_service_addresses} property. It is
		 * intended to be used for testing code which consumes this property. If the
		 * property value changes, this results in a property change notification on
		 * the persona.
		 *
		 * @param web_service_addresses persona's new web service addresses
		 * @since 0.9.7
		 */
		public void update_web_service_addresses (Gee.MultiMap<string,Folks.WebServiceFieldDetails> web_service_addresses);
	}
	/**
	 * A persona subclass representing a single contact.
	 *
	 * This mocks up a ‘thin’ persona which implements none of the available
	 * property interfaces provided by libfolks, and is designed as a base class to
	 * be subclassed by personas which will implement one or more of these
	 * interfaces. For example, {@link FolksDummy.FullPersona} is one such subclass
	 * which implements all available interfaces.
	 *
	 * There are two sides to this class’ interface: the normal methods required by
	 * {@link Folks.Persona}, such as
	 * {@link Folks.Persona.linkable_property_to_links},
	 * and the backend methods which should be called by test driver code to
	 * simulate changes in the backing store providing this persona, such as
	 * {@link FolksDummy.Persona.update_writeable_properties}. The ``update_``,
	 * ``register_`` and ``unregister_`` prefixes are commonly used for backend
	 * methods.
	 *
	 * All property changes for contact details of subclasses of
	 * {@link FolksDummy.Persona} have a configurable delay before taking effect,
	 * which can be controlled by {@link FolksDummy.Persona.property_change_delay}.
	 *
	 * The API in {@link FolksDummy} is unstable and may change wildly. It is
	 * designed mostly for use by libfolks unit tests.
	 *
	 * @since 0.9.7
	 */
	[CCode (cheader_filename = "folks/folks-dummy.h")]
	public class Persona : Folks.Persona {
		/**
		 * Callback to effect a property change in a backing store.
		 *
		 * This is called by {@link FolksDummy.Persona.change_property} after the
		 * {@link FolksDummy.Persona.property_change_delay} has expired. It must
		 * effect the property change in the simulated backing store, for example by
		 * calling an ‘update’ method such as
		 * {@link FolksDummy.FullPersona.update_nickname}.
		 *
		 * @since 0.9.7
		 */
		protected delegate void ChangePropertyCallback ();
		/**
		 * Create a new persona.
		 *
		 * Create a new persona for the {@link FolksDummy.PersonaStore} ``store``,
		 * with the given construct-only properties.
		 *
		 * The persona’s {@link Folks.Persona.writeable_properties} are initialised to
		 * the given ``store``’s
		 * {@link Folks.PersonaStore.always_writeable_properties}. They may be updated
		 * afterwards using {@link FolksDummy.Persona.update_writeable_properties}.
		 *
		 * @param store the store which will contain the persona
		 * @param contact_id a unique free-form string identifier for the persona
		 * @param is_user ``true`` if the persona represents the user, ``false``
		 * otherwise
		 * @param linkable_properties an array of names of the properties which should
		 * be used for linking this persona to others
		 *
		 * @since 0.9.7
		 */
		public Persona (FolksDummy.PersonaStore store, string contact_id, bool is_user = false, string[] linkable_properties = new string[0] { });
		/**
		 * Change a property in the simulated backing store.
		 *
		 * This triggers a property change in the simulated backing store, applying
		 * the current {@link FolksDummy.Persona.property_change_delay} before calling
		 * the given ``callback`` which should actually effect the property change.
		 *
		 * @param property_name name of the property being changed
		 * @param callback callback to call once the change delay has passed
		 * @since 0.9.7
		 */
		protected async void change_property (string property_name, FolksDummy.Persona.ChangePropertyCallback callback);
		/**
		 * {@inheritDoc}
		 *
		 * @since 0.9.7
		 */
		public override void linkable_property_to_links (string prop_name, Folks.Persona.LinkablePropertyCallback callback);
		/**
		 * Update the persona’s set of linkable properties.
		 *
		 * Update the {@link Folks.Persona.linkable_properties} property to contain
		 * the given ``linkable_properties``.
		 *
		 * @param linkable_properties new set of linkable property names, in lower
		 * case, hyphenated form
		 * @since 0.9.7
		 */
		public void update_linkable_properties (string[] linkable_properties);
		/**
		 * Update the persona’s set of writeable properties.
		 *
		 * Update the {@link Folks.Persona.writeable_properties} property to contain
		 * the union of {@link Folks.PersonaStore.always_writeable_properties} from
		 * the persona’s store, and the given ``writeable_properties``.
		 *
		 * This should be used to simulate a change in the backing store for the
		 * persona which affects the writeability of one or more of its properties.
		 *
		 * @since 0.9.7
		 */
		public void update_writeable_properties (string[] writeable_properties);
		/**
		 * {@inheritDoc}
		 *
		 * @since 0.9.7
		 */
		public override string[] linkable_properties { get; }
		/**
		 * Delay between property changes and notifications.
		 *
		 * This sets an optional delay between client code requesting a property
		 * change (e.g. by calling {@link Folks.NameDetails.change_nickname}) and the
		 * property change taking place and a {@link Object.notify} signal being
		 * emitted for it.
		 *
		 * Delays are in milliseconds. Negative delays mean that property change
		 * notifications happen synchronously in the change method. A delay of 0
		 * means that property change notifications happen in an idle callback
		 * immediately after the change method. A positive delay means that property
		 * change notifications happen that many milliseconds after the change method
		 * is called.
		 *
		 * @since 0.9.7
		 */
		protected int property_change_delay { get; set; }
		/**
		 * {@inheritDoc}
		 *
		 * @since 0.9.7
		 */
		public override string[] writeable_properties { get; }
	}
	/**
	 * A persona store which allows {@link FolksDummy.Persona}s to be
	 * programmatically created and manipulated, for the purposes of testing the
	 * core of libfolks itself. This should not be used in user-visible
	 * applications.
	 *
	 * There are two sides to this class’ interface: the methods and properties
	 * declared by {@link Folks.PersonaStore}, which form the normal libfolks
	 * persona store API; and the mock methods and properties (see for example
	 * {@link FolksDummy.PersonaStore.set_add_persona_from_details_mock}) which are
	 * intended to be used by test driver code to simulate the behaviour of a real
	 * backing store. Calls to these mock methods effect state changes in the store
	 * which are visible in the normal libfolks API. The ``update_``, ``register_``
	 * and ``unregister_`` prefixes and the ``mock`` suffix are commonly used for
	 * backing store methods.
	 *
	 * The main action performed with a dummy persona store is to change its set of
	 * personas, adding and removing them dynamically to test client-side behaviour.
	 * The client-side APIs ({@link Folks.PersonaStore.add_persona_from_details} and
	 * {@link Folks.PersonaStore.remove_persona}) should //not// be used for this.
	 * Instead, the mock APIs should be used:
	 * {@link FolksDummy.PersonaStore.freeze_personas_changed},
	 * {@link FolksDummy.PersonaStore.register_personas},
	 * {@link FolksDummy.PersonaStore.unregister_personas} and
	 * {@link FolksDummy.PersonaStore.thaw_personas_changed}. These can be used to
	 * build up complex {@link Folks.PersonaStore.personas_changed} signal
	 * emissions, which are only emitted after the final call to
	 * {@link FolksDummy.PersonaStore.thaw_personas_changed}.
	 *
	 * The API in {@link FolksDummy} is unstable and may change wildly. It is
	 * designed mostly for use by libfolks unit tests.
	 *
	 * @since 0.9.7
	 */
	[CCode (cheader_filename = "folks/folks-dummy.h")]
	public class PersonaStore : Folks.PersonaStore {
		/**
		 * Type of a mock function for
		 * {@link Folks.PersonaStore.add_persona_from_details}.
		 *
		 * See {@link FolksDummy.PersonaStore.set_add_persona_from_details_mock}.
		 *
		 * @param persona the persona being added to the store, as constructed from
		 * the details passed to {@link Folks.PersonaStore.add_persona_from_details}.
		 * @throws PersonaStoreError to be thrown from
		 * {@link Folks.PersonaStore.add_persona_from_details}
		 * @return delay to apply to the add persona operation (negative delays
		 * complete synchronously; zero delays complete in an idle callback; positive
		 * delays complete after that many milliseconds)
		 *
		 * @since 0.9.7
		 */
		public delegate int AddPersonaFromDetailsMock (FolksDummy.Persona persona) throws Folks.PersonaStoreError;
		/**
		 * Type of a mock function for {@link Folks.PersonaStore.prepare}.
		 *
		 * See {@link FolksDummy.PersonaStore.set_prepare_mock}.
		 *
		 * @throws PersonaStoreError to be thrown from
		 * {@link Folks.PersonaStore.prepare}
		 * @return delay to apply to the prepare operation (negative and zero delays
		 * complete in an idle callback; positive
		 * delays complete after that many milliseconds)
		 *
		 * @since 0.9.7
		 */
		public delegate int PrepareMock () throws Folks.PersonaStoreError;
		/**
		 * Type of a mock function for {@link Folks.PersonaStore.remove_persona}.
		 *
		 * See {@link FolksDummy.PersonaStore.set_remove_persona_mock}.
		 *
		 * @param persona the persona being removed from the store
		 * @throws PersonaStoreError to be thrown from
		 * {@link Folks.PersonaStore.remove_persona}
		 * @return delay to apply to the remove persona operation (negative and zero
		 * delays complete in an idle callback; positive
		 * delays complete after that many milliseconds)
		 *
		 * @since 0.9.7
		 */
		public delegate int RemovePersonaMock (FolksDummy.Persona persona) throws Folks.PersonaStoreError;
		/**
		 * Create a new persona store.
		 *
		 * This store will have no personas to begin with; use
		 * {@link FolksDummy.PersonaStore.register_personas} to add some, then call
		 * {@link FolksDummy.PersonaStore.reach_quiescence} to signal the store
		 * reaching quiescence.
		 *
		 * @param id The new store's ID.
		 * @param display_name The new store's display name.
		 * @param always_writeable_properties The set of always writeable properties.
		 *
		 * @since 0.9.7
		 */
		public PersonaStore (string id, string display_name, string[] always_writeable_properties);
		/**
		 * Add a new {@link Persona} to the PersonaStore.
		 *
		 * Accepted keys for ``details`` are:
		 * - PersonaStore.detail_key (PersonaDetail.AVATAR)
		 * - PersonaStore.detail_key (PersonaDetail.BIRTHDAY)
		 * - PersonaStore.detail_key (PersonaDetail.EMAIL_ADDRESSES)
		 * - PersonaStore.detail_key (PersonaDetail.FULL_NAME)
		 * - PersonaStore.detail_key (PersonaDetail.GENDER)
		 * - PersonaStore.detail_key (PersonaDetail.IM_ADDRESSES)
		 * - PersonaStore.detail_key (PersonaDetail.IS_FAVOURITE)
		 * - PersonaStore.detail_key (PersonaDetail.PHONE_NUMBERS)
		 * - PersonaStore.detail_key (PersonaDetail.POSTAL_ADDRESSES)
		 * - PersonaStore.detail_key (PersonaDetail.ROLES)
		 * - PersonaStore.detail_key (PersonaDetail.STRUCTURED_NAME)
		 * - PersonaStore.detail_key (PersonaDetail.LOCAL_IDS)
		 * - PersonaStore.detail_key (PersonaDetail.WEB_SERVICE_ADDRESSES)
		 * - PersonaStore.detail_key (PersonaDetail.NOTES)
		 * - PersonaStore.detail_key (PersonaDetail.URLS)
		 *
		 * See {@link Folks.PersonaStore.add_persona_from_details}.
		 *
		 * @param details key–value pairs giving the new persona’s details
		 * @throws Folks.PersonaStoreError.STORE_OFFLINE if the store hasn’t been
		 * prepared
		 * @throws Folks.PersonaStoreError.CREATE_FAILED if creating the persona in
		 * the dummy store failed
		 *
		 * @since 0.9.7
		 */
		public override async Folks.Persona? add_persona_from_details (GLib.HashTable<string,GLib.Value?> details) throws Folks.PersonaStoreError;
		/**
		 * Freeze persona changes in the store.
		 *
		 * This freezes externally-visible changes to the set of personas in the store
		 * until {@link FolksDummy.PersonaStore.thaw_personas_changed} is called, at
		 * which point all pending changes are made visible in the
		 * {@link Folks.PersonaStore.personas} property and by emitting
		 * {@link Folks.PersonaStore.personas_changed}.
		 *
		 * Calls to {@link FolksDummy.PersonaStore.freeze_personas_changed} and
		 * {@link FolksDummy.PersonaStore.thaw_personas_changed} must be well-nested.
		 * Pending changes will only be committed after the final call to
		 * {@link FolksDummy.PersonaStore.thaw_personas_changed}.
		 *
		 * @see PersonaStore.thaw_personas_changed
		 * @since 0.9.7
		 */
		public void freeze_personas_changed ();
		/**
		 * Prepare the PersonaStore for use.
		 *
		 * See {@link Folks.PersonaStore.prepare}.
		 *
		 * @throws Folks.PersonaStoreError.STORE_OFFLINE if the store is offline
		 * @throws Folks.PersonaStoreError.PERMISSION_DENIED if permission was denied
		 * to open the store
		 * @throws Folks.PersonaStoreError.INVALID_ARGUMENT if any other error
		 * occurred in the store
		 *
		 * @since 0.9.7
		 */
		public override async void prepare () throws Folks.PersonaStoreError;
		/**
		 * Reach quiescence on the store.
		 *
		 * If the {@link Folks.PersonaStore.prepare} method has already been called on
		 * the store, this causes the store to signal that it has reached quiescence
		 * immediately. If the store has not yet been prepared, this will set a flag
		 * to ensure that quiescence is reached as soon as
		 * {@link Folks.PersonaStore.prepare} is called.
		 *
		 * This must be called before the store will reach quiescence.
		 *
		 * @since 0.9.7
		 */
		public void reach_quiescence ();
		/**
		 * Register new personas with the persona store.
		 *
		 * This registers a set of personas as if they had just appeared in the
		 * backing store. If the persona store is not frozen (see
		 * {@link FolksDummy.PersonaStore.freeze_personas_changed}) the changes are
		 * made externally visible on the store immediately (e.g. in the
		 * {@link Folks.PersonaStore.personas} property and through a
		 * {@link Folks.PersonaStore.personas_changed} signal). If the store is
		 * frozen, the changes will be pending until the store is next unfrozen.
		 *
		 * All elements in the @personas set be of type
		 * {@link FolksDummy.PersonaStore.persona_type}.
		 *
		 * @param personas set of personas to register
		 *
		 * @since 0.9.7
		 */
		public void register_personas (Gee.Set<FolksDummy.Persona> personas);
		/**
		 * Remove a {@link Persona} from the PersonaStore.
		 *
		 * See {@link Folks.PersonaStore.remove_persona}.
		 *
		 * @param persona the persona that should be removed
		 * @throws Folks.PersonaStoreError.STORE_OFFLINE if the store hasn’t been
		 * prepared or has gone offline
		 * @throws Folks.PersonaStoreError.PERMISSION_DENIED if the store denied
		 * permission to delete the contact
		 * @throws Folks.PersonaStoreError.READ_ONLY if the store is read only
		 * @throws Folks.PersonaStoreError.REMOVE_FAILED if any other errors happened
		 * in the store
		 *
		 * @since 0.9.7
		 */
		public override async void remove_persona (Folks.Persona persona) throws Folks.PersonaStoreError;
		/**
		 * Mock function for {@link Folks.PersonaStore.add_persona_from_details}.
		 *
		 * This function is called whenever this store's
		 * {@link Folks.PersonaStore.add_persona_from_details} method is called. It
		 * allows the caller to determine whether adding the given persona should
		 * fail, by throwing an error from this mock function. If no error is thrown
		 * from this function, adding the given persona will succeed. This is useful
		 * for testing error handling of calls to
		 * {@link Folks.PersonaStore.add_persona_from_details}.
		 *
		 * The value returned by this function gives a delay which is imposed for
		 * completion of the {@link Folks.PersonaStore.add_persona_from_details} call.
		 * Negative or zero delays
		 * result in completion in an idle callback, and positive delays result in
		 * completion after that many milliseconds.
		 *
		 * If this is ``null``, all calls to
		 * {@link Folks.PersonaStore.add_persona_from_details} will succeed.
		 *
		 * This mock function may be changed at any time; changes will take effect for
		 * the next call to {@link Folks.PersonaStore.add_persona_from_details}.
		 *
		 * @since 0.9.7
		 */
		public void set_add_persona_from_details_mock (FolksDummy.PersonaStore.AddPersonaFromDetailsMock? mock);
		/**
		 * Mock function for {@link Folks.PersonaStore.prepare}.
		 *
		 * This function is called whenever this store's
		 * {@link Folks.PersonaStore.prepare} method is called on an unprepared store.
		 * It allows the caller to determine whether preparing the store should fail,
		 * by throwing an error from this mock function. If no error is thrown from
		 * this function, preparing the store will succeed (and all future calls to
		 * {@link Folks.PersonaStore.prepare} will return immediately without calling
		 * this mock function). This is useful for testing error handling of calls to
		 * {@link Folks.PersonaStore.prepare}.
		 *
		 * See {@link FolksDummy.PersonaStore.set_add_persona_from_details_mock}.
		 *
		 * This mock function may be changed at any time; changes will take effect for
		 * the next call to {@link Folks.PersonaStore.prepare}.
		 *
		 * @since 0.9.7
		 */
		public void set_prepare_mock (FolksDummy.PersonaStore.PrepareMock? mock);
		/**
		 * Mock function for {@link Folks.PersonaStore.remove_persona}.
		 *
		 * This function is called whenever this store's
		 * {@link Folks.PersonaStore.remove_persona} method is called. It allows
		 * the caller to determine whether removing the given persona should fail, by
		 * throwing an error from this mock function. If no error is thrown from this
		 * function, removing the given persona will succeed. This is useful for
		 * testing error handling of calls to
		 * {@link Folks.PersonaStore.remove_persona}.
		 *
		 * See {@link FolksDummy.PersonaStore.set_add_persona_from_details_mock}.
		 *
		 * This mock function may be changed at any time; changes will take effect for
		 * the next call to {@link Folks.PersonaStore.remove_persona}.
		 *
		 * @since 0.9.7
		 */
		public void set_remove_persona_mock (FolksDummy.PersonaStore.RemovePersonaMock? mock);
		/**
		 * Thaw persona changes in the store.
		 *
		 * This thaws externally-visible changes to the set of personas in the store.
		 * If the number of calls to
		 * {@link FolksDummy.PersonaStore.thaw_personas_changed} matches the number of
		 * calls to {@link FolksDummy.PersonaStore.freeze_personas_changed}, all
		 * pending changes are committed and made externally-visible.
		 *
		 * @see PersonaStore.freeze_personas_changed
		 * @since 0.9.7
		 */
		public void thaw_personas_changed ();
		/**
		 * Unregister existing personas with the persona store.
		 *
		 * This unregisters a set of personas as if they had just disappeared from the
		 * backing store. If the persona store is not frozen (see
		 * {@link FolksDummy.PersonaStore.freeze_personas_changed}) the changes are
		 * made externally visible on the store immediately (e.g. in the
		 * {@link Folks.PersonaStore.personas} property and through a
		 * {@link Folks.PersonaStore.personas_changed} signal). If the store is
		 * frozen, the changes will be pending until the store is next unfrozen.
		 *
		 * @param personas set of personas to unregister
		 *
		 * @since 0.9.7
		 */
		public void unregister_personas (Gee.Set<FolksDummy.Persona> personas);
		/**
		 * Set capabilities of the persona store.
		 *
		 * This sets the capabilities of the store, as if they were changed on a
		 * backing store somewhere. This is intended to be used for testing code which
		 * depends on the values of {@link Folks.PersonaStore.can_add_personas},
		 * {@link Folks.PersonaStore.can_alias_personas} and
		 * {@link Folks.PersonaStore.can_remove_personas}.
		 *
		 * @param can_add_personas whether the store can handle adding personas
		 * @param can_alias_personas whether the store can handle and update
		 * user-specified persona aliases
		 * @param can_remove_personas whether the store can handle removing personas
		 *
		 * @since 0.9.7
		 */
		public void update_capabilities (Folks.MaybeBool can_add_personas, Folks.MaybeBool can_alias_personas, Folks.MaybeBool can_remove_personas);
		/**
		 * Update the {@link Folks.PersonaStore.is_user_set_default} property.
		 *
		 * Backend method for use by test code to simulate a backing-store-driven
		 * change in the {@link Folks.PersonaStore.is_user_set_default} property.
		 *
		 * @param is_user_set_default new value for the property
		 *
		 * @since 0.9.7
		 */
		public void update_is_user_set_default (bool is_user_set_default);
		/**
		 * Update the {@link Folks.PersonaStore.trust_level} property.
		 *
		 * Backend method for use by test code to simulate a backing-store-driven
		 * change in the {@link Folks.PersonaStore.trust_level} property.
		 *
		 * @param trust_level new value for the property
		 *
		 * @since 0.9.7
		 */
		public void update_trust_level (Folks.PersonaStoreTrust trust_level);
		/**
		 * {@inheritDoc}
		 *
		 * @since 0.9.7
		 */
		public override string[] always_writeable_properties { get; }
		/**
		 * Whether this PersonaStore can add {@link Folks.Persona}s.
		 *
		 * See {@link Folks.PersonaStore.can_add_personas}.
		 *
		 * @since 0.9.7
		 */
		public override Folks.MaybeBool can_add_personas { get; }
		/**
		 * Whether this PersonaStore can set the alias of {@link Folks.Persona}s.
		 *
		 * See {@link Folks.PersonaStore.can_alias_personas}.
		 *
		 * @since 0.9.7
		 */
		public override Folks.MaybeBool can_alias_personas { get; }
		/**
		 * Whether this PersonaStore can set the groups of {@link Folks.Persona}s.
		 *
		 * See {@link Folks.PersonaStore.can_group_personas}.
		 *
		 * @since 0.9.7
		 */
		public override Folks.MaybeBool can_group_personas { get; }
		/**
		 * Whether this PersonaStore can remove {@link Folks.Persona}s.
		 *
		 * See {@link Folks.PersonaStore.can_remove_personas}.
		 *
		 * @since 0.9.7
		 */
		public override Folks.MaybeBool can_remove_personas { get; }
		/**
		 * Whether this PersonaStore has been prepared.
		 *
		 * See {@link Folks.PersonaStore.is_prepared}.
		 *
		 * @since 0.9.7
		 */
		public override bool is_prepared { get; }
		public override bool is_quiescent { get; }
		/**
		 * Type of programmatically created personas.
		 *
		 * This is the type used to create new personas when
		 * {@link Folks.PersonaStore.add_persona_from_details} is called. It must be a
		 * subtype of {@link FolksDummy.Persona}.
		 *
		 * This may be modified at any time, with modifications taking effect for the
		 * next call to {@link Folks.PersonaStore.add_persona_from_details} or
		 * {@link FolksDummy.PersonaStore.register_personas}.
		 *
		 * @since 0.9.7
		 */
		public GLib.Type persona_type { get; set; }
		/**
		 * The {@link Persona}s exposed by this PersonaStore.
		 *
		 * See {@link Folks.PersonaStore.personas}.
		 *
		 * @since 0.9.7
		 */
		public override Gee.Map<string,Folks.Persona> personas { get; }
		/**
		 * The type of persona store this is.
		 *
		 * See {@link Folks.PersonaStore.type_id}.
		 *
		 * @since 0.9.7
		 */
		public override string type_id { get; }
	}
}
