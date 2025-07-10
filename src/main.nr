use dep::aztec::macros::aztec;

#[aztec]
pub contract Main { // putting pub here just in case
    use dep::aztec::macros::functions::{initializer, public, view};
    use dep::aztec::oracle::debug_log::debug_log;

    #[public]
    #[initializer]
    fn constructor() {}

    #[public]
    fn directly_write_field_to_storage(storage_address: Field, value_to_write: Field) {
        debug_log("HELLO WORLD TEST");
        context.emit_public_log("HELLO WORLD TEST");
        context.storage_write(storage_address, value_to_write);
    }

    #[public]
    #[view]
    fn directly_get_field_from_storage(storage_address: Field) -> Field {
        context.storage_read(storage_address)
    }
}
