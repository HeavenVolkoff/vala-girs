/* folks-eds.vapi generated by valac 0.40.0.135-5d895, do not modify. */

[CCode (gir_namespace = "FolksEds", gir_version = "0.6")]
namespace Edsf {
	/**
	 * A persona subclass which represents a single EDS contact.
	 *
	 * Each {@link Edsf.Persona} instance represents a single EDS {@link E.Contact}.
	 * When the contact is modified (either by this folks client, or a different
	 * client), the {@link Edsf.Persona} remains the same, but is assigned a new
	 * {@link E.Contact}. It then updates its properties from this new contact.
	 */
	[CCode (cheader_filename = "folks/folks-eds.h")]
	public class Persona : Folks.Persona, Folks.AntiLinkable, Folks.AvatarDetails, Folks.BirthdayDetails, Folks.EmailDetails, Folks.ExtendedInfo, Folks.FavouriteDetails, Folks.GenderDetails, Folks.GroupDetails, Folks.ImDetails, Folks.LocalIdDetails, Folks.LocationDetails, Folks.NameDetails, Folks.NoteDetails, Folks.PhoneDetails, Folks.RoleDetails, Folks.UrlDetails, Folks.PostalAddressDetails, Folks.WebServiceDetails {
		/**
		 * vCard field names for postal addresses.
		 *
		 * @since 0.6.0
		 */
		public const string[] address_fields;
		/**
		 * vCard field names for e-mail addresses.
		 *
		 * @since 0.6.0
		 */
		public const string[] email_fields;
		/**
		 * Name of folks’ custom parameter indicating automatic fields
		 *
		 * Folks can create extra fields to improve linking between personas.
		 * These fields have a boolean-typed parameter added with this name,
		 * and the value ‘TRUE’. This allows clients to detect such fields
		 * and (for example) ignore them in the UI.
		 *
		 * @since 0.9.7
		 */
		public const string folks_field_attribute_name;
		/**
		 * The vCard attribute used to specify a Contact's gender
		 *
		 * Based on:
		 * [[http://tools.ietf.org/html/draft-ietf-vcarddav-vcardrev-22]]
		 *
		 * Note that the above document is a draft and the gender property
		 * is still considered experimental, hence the "X-" prefix in the
		 * attribute name. So this might change.
		 *
		 * @since 0.6.0
		 */
		public const string gender_attribute_name;
		/**
		 * The value used to define the female gender for the
		 * X-GENDER vCard property.
		 *
		 * Based on:
		 * [[http://tools.ietf.org/html/draft-ietf-vcarddav-vcardrev-22]]
		 *
		 * @since 0.6.0
		 */
		public const string gender_female;
		/**
		 * The value used to define the male gender for the
		 * X-GENDER vCard property.
		 *
		 * Based on:
		 * [[http://tools.ietf.org/html/draft-ietf-vcarddav-vcardrev-22]]
		 *
		 * @since 0.6.0
		 */
		public const string gender_male;
		/**
		 * vCard field names for telephone numbers.
		 *
		 * @since 0.6.0
		 */
		public const string[] phone_fields;
		/**
		 * vCard field names for miscellaneous URIs.
		 *
		 * @since 0.6.0
		 */
		[Version (deprecated = true, deprecated_since = "0.6.3", replacement = "Folks.UrlFieldDetails.PARAM_TYPE_BLOG")]
		public const string[] url_properties;
		/**
		 * Create a new persona.
		 *
		 * Create a new persona for the {@link PersonaStore} ``store``, representing
		 * the EDS contact given by ``contact``.
		 *
		 * @param store the store which will contain the persona
		 * @param contact the EDS contact being represented by the persona
		 *
		 * @since 0.6.0
		 */
		public Persona (Edsf.PersonaStore store, E.Contact contact);
		/**
		 * Change whether this contact belongs to the personal group or not.
		 *
		 * The personal contact group is a concept that exists only in Google
		 * address books. Other backends will throw a PropertyError.
		 *
		 * It's preferred to call this rather than setting {@link Persona.in_google_personal_group}
		 * directly, as this method gives error notification and will only return once
		 * the membership has been written to the relevant backing store (or the
		 * operation's failed).
		 *
		 * @param in_personal Whether to add or remove the personal group membership
		 * @throws PropertyError if the address book is not Google, or if setting the property failed
		 * @since 0.9.0
		 */
		public async void change_in_google_personal_group (bool in_personal) throws Folks.PropertyError;
		/**
		 * Change the contact's system groups.
		 *
		 * The system groups are a property exposed by Google Contacts address books,
		 * and can include any combination of the following identifier:
		 * - "Contacts"
		 * - "Family"
		 * - "Friends"
		 * - "Coworkers"
		 *
		 * Setting the system groups will also change the group membership to include
		 * the localized version of those groups, and may change the value of
		 * {@link Edsf.Persona.in_google_personal_group}.
		 *
		 * Attempting to call this method on a persona beloging to a PersonaStore which
		 * is not Google will throw a PropertyError.
		 *
		 * It's preferred to call this rather than setting {@link Persona.system_groups}
		 * directly, as this method gives error notification and will only return once
		 * the groups have been written to the relevant backing store (or the
		 * operation's failed).
		 *
		 * @param system_groups the complete set of system group ids the contact should be a member of
		 * @throws PropertyError if setting the groups failed
		 * @since 0.9.0
		 */
		public async void change_system_groups (Gee.Set<string> system_groups) throws Folks.PropertyError;
		/**
		 * {@inheritDoc}
		 *
		 * @since 0.6.0
		 */
		public override void linkable_property_to_links (string prop_name, Folks.Persona.LinkablePropertyCallback callback);
		/**
		 * The e-d-s contact represented by this Persona
		 */
		public E.Contact contact { get; construct; }
		/**
		 * The e-d-s contact uid
		 *
		 * This is guaranteed to be a non-empty string, unique within the persona
		 * store.
		 *
		 * @since 0.6.0
		 */
		public string contact_id { get; construct; }
		/**
		 * Whether this contact is in the “My Contacts” section of the user’s address
		 * book, rather than the “Other” section.
		 *
		 * @since 0.7.3
		 */
		[CCode (notify = false)]
		public bool in_google_personal_group { get; set; }
		/**
		 * {@inheritDoc}
		 *
		 * @since 0.6.0
		 */
		public override string[] linkable_properties { get; }
		/**
		 * The complete set of system group identifiers the contact belongs to.
		 * See {@link Persona.change_system_groups} for details.
		 *
		 * This is stored in the X-GOOGLE-SYSTEM-GROUP-IDS vCard field in EDS.
		 *
		 * @since 0.9.0
		 */
		[CCode (notify = false)]
		public Gee.Set<string>? system_groups { get; set; }
		/**
		 * {@inheritDoc}
		 *
		 * @since 0.6.0
		 */
		public override string[] writeable_properties { get; }
	}
	/**
	 * A persona store representing a single EDS address book.
	 *
	 * The persona store will contain {@link Edsf.Persona}s for each contact in the
	 * address book it represents.
	 */
	[CCode (cheader_filename = "folks/folks-eds.h")]
	public class PersonaStore : Folks.PersonaStore {
		/**
		 * Create a new PersonaStore.
		 *
		 * Create a new persona store to store the {@link Persona}s for the contacts
		 *
		 * @param s the e-d-s source being represented by the persona store
		 *
		 * @since 0.6.0
		 */
		[Version (deprecated = true, deprecated_since = "0.7.2", replacement = "Edsf.PersonaStore.with_source_registry")]
		public PersonaStore (E.Source s);
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
		 * - PersonaStore.detail_key (PersonaDetail.NICKNAME)
		 * - PersonaStore.detail_key (PersonaDetail.PHONE_NUMBERS)
		 * - PersonaStore.detail_key (PersonaDetail.POSTAL_ADDRESSES)
		 * - PersonaStore.detail_key (PersonaDetail.ROLES)
		 * - PersonaStore.detail_key (PersonaDetail.STRUCTURED_NAME)
		 * - PersonaStore.detail_key (PersonaDetail.LOCAL_IDS)
		 * - PersonaStore.detail_key (PersonaDetail.LOCATION)
		 * - PersonaStore.detail_key (PersonaDetail.WEB_SERVICE_ADDRESSES)
		 * - PersonaStore.detail_key (PersonaDetail.NOTES)
		 * - PersonaStore.detail_key (PersonaDetail.URLS)
		 * - PersonaStore.detail_key (PersonaDetail.GROUPS)
		 *
		 * See {@link Folks.PersonaStore.add_persona_from_details}.
		 *
		 * @throws Folks.PersonaStoreError.STORE_OFFLINE if the store hasn’t been
		 * prepared
		 * @throws Folks.PersonaStoreError.CREATE_FAILED if creating the persona in
		 * the EDS store failed
		 *
		 * @since 0.6.0
		 */
		public override async Folks.Persona? add_persona_from_details (GLib.HashTable<string,GLib.Value?> details) throws Folks.PersonaStoreError;
		/**
		 * Create a new address book with the given ID.
		 *
		 * A new Address Book will be created with the given ID and the EDS
		 * SourceRegistry will notice the new Address Book source and will emit
		 * source_added with the new {@link E.Source} object which
		 * {@link Folks.Backends.Eds.Backend} will then create a new
		 * {@link Edsf.PersonaStore} from.
		 *
		 * @param id the name and id for the new address book
		 * @throws GLib.Error if an error occurred while creating or committing to
		 * the {@link E.SourceRegistry}
		 *
		 * @since 0.9.0
		 */
		public static async void create_address_book (string id) throws GLib.Error;
		/**
		 * Prepare the PersonaStore for use.
		 *
		 * See {@link Folks.PersonaStore.prepare}.
		 *
		 * @throws Folks.PersonaStoreError.STORE_OFFLINE if the EDS store is offline
		 * @throws Folks.PersonaStoreError.PERMISSION_DENIED if permission was denied
		 * to open the EDS store
		 * @throws Folks.PersonaStoreError.INVALID_ARGUMENT if any other error
		 * occurred in the EDS store
		 *
		 * @since 0.6.0
		 */
		public override async void prepare () throws Folks.PersonaStoreError;
		/**
		 * Remove a persona store's address book permamently.
		 *
		 * This is a utility function to remove an {@link Edsf.PersonaStore}'s address
		 * book from the disk permanently.  This simply wraps the EDS API to do
		 * the same.
		 *
		 * @param store the PersonaStore to delete the address book for.
		 * @throws GLib.Error if an error occurred in {@link E.Source.remove}
		 *
		 * @since 0.9.0
		 */
		public static async void remove_address_book (Edsf.PersonaStore store) throws GLib.Error;
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
		 * @since 0.6.0
		 */
		public override async void remove_persona (Folks.Persona persona) throws Folks.PersonaStoreError;
		/**
		 * Create a new PersonaStore.
		 *
		 * Create a new persona store to store the {@link Persona}s for the contacts
		 * in ``s``. Passing a re-used source registry to the constructor (compared to
		 * the old {@link Edsf.PersonaStore} constructor) saves a lot of time and
		 * D-Bus round trips.
		 *
		 * @param r the EDS source registry giving access to all EDS sources
		 * @param s the EDS source being represented by the persona store
		 *
		 * @since 0.7.2
		 */
		public PersonaStore.with_source_registry (E.SourceRegistry r, E.Source s);
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
		 * @since 0.6.0
		 */
		public override Folks.MaybeBool can_add_personas { get; }
		/**
		 * Whether this PersonaStore can set the alias of {@link Folks.Persona}s.
		 *
		 * See {@link Folks.PersonaStore.can_alias_personas}.
		 *
		 * @since 0.6.0
		 */
		public override Folks.MaybeBool can_alias_personas { get; }
		/**
		 * Whether this PersonaStore can set the groups of {@link Folks.Persona}s.
		 *
		 * See {@link Folks.PersonaStore.can_group_personas}.
		 *
		 * @since 0.6.0
		 */
		public override Folks.MaybeBool can_group_personas { get; }
		/**
		 * Whether this PersonaStore can remove {@link Folks.Persona}s.
		 *
		 * See {@link Folks.PersonaStore.can_remove_personas}.
		 *
		 * @since 0.6.0
		 */
		public override Folks.MaybeBool can_remove_personas { get; }
		/**
		 * Whether this PersonaStore has been prepared.
		 *
		 * See {@link Folks.PersonaStore.is_prepared}.
		 *
		 * @since 0.6.0
		 */
		public override bool is_prepared { get; }
		public override bool is_quiescent { get; }
		/**
		 * The {@link Persona}s exposed by this PersonaStore.
		 *
		 * See {@link Folks.PersonaStore.personas}.
		 *
		 * @since 0.6.0
		 */
		public override Gee.Map<string,Folks.Persona> personas { get; }
		/**
		 * The EDS {@link E.Source} associated with this persona store.
		 *
		 * @since 0.6.6
		 */
		public E.Source source { get; construct; }
		/**
		 * The type of persona store this is.
		 *
		 * See {@link Folks.PersonaStore.type_id}.
		 *
		 * @since 0.6.0
		 */
		public override string type_id { get; }
	}
}
