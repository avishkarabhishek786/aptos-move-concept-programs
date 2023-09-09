module my_addrx::DataTypesInMove {
    
    use std::debug::print;

    fun primitive_types() {

        // Integers
        let a:u8 = 8;
        let b:u32 = 100;
        let c:u128 = 1000000;

        print(&a);
        print(&b);
        print(&c);

        // Booleans
        let d:bool = true;
        let e:bool = false;

        print(&d); 
        print(&e); 

        // Addresses
        let f:address = @0x123;
        let g:address = @std;

        print(&f);
        print(&g);

    }

    #[test]
    fun test_data_types() {
        primitive_types();
    }

}