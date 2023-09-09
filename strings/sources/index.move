/**
    Move does not have native type for strings, therefore in order to use 
    strings we have to include string module or we can use vector<u8> for 
    storing byte string.
*/

module my_addrx::StringsMod {
    use std::debug::print;
    use std::string::{String, utf8};

    fun greeting1():String {
        let greet:String = utf8(b"Welcome my friends");
        greet
    }

    fun greeting2():vector<u8> {
        let greet:vector<u8> = b"Welcome to India";
        greet
    }

    #[test]
    fun testing() {
        let greet1 = greeting1();
        print(&greet1);

        let greet2 = greeting2();
        print(&greet2);
        print(&utf8(greet2));
    }
}
