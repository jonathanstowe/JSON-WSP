use v6.c;

use JSON::Class;

module JSON::WSP {
    role Service does Callable {
        method CALL-ME($env) {

        }
    }

    class Specification {
        has Str $.type;
        has Version $.version;
        has Str $.servicename;
        has Str $.url;
        has %.types;  
        has %.methods;
    }

    class Request {
    }

    class Response {
    }


}
# vim: expandtab shiftwidth=4 ft=perl6
