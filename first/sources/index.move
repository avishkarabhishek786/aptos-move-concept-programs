module my_addrx::Sample {
    use std::debug;

    fun sample_function() {
        debug::print(&123);
    }

    #[test]
    fun testing() {
        sample_function();
    }
}