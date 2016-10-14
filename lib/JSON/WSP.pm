use v6.c;

use JSON::Class;

module JSON::WSP {
    role Service does Callable {
        method CALL-ME($env) {

        }
    }

    class Method {
        class ReturnInfo {
            has Str         @.doc_lines;
            has Str         $.type;  # this doesn't quite cover "multi-type"
        }
        class Parameter {
            has Str         @.doc_lines;
            has Int         $.def_order;
            has Str         $.type;
            has Bool        $.optional;

        }
        has Str         @.doc_lines;
        has Parameter   %.params;
        has ReturnInfo  $.ret_info; 

    }

    class Description does JSON::Class {
        has Str $.type;
        has Version $.version;
        has Str $.servicename;
        has Str $.url;
        has %.types;  
        has Method %.methods;
    }

    class Request {
    }

    class Response {
    }
}
# vim: expandtab shiftwidth=4 ft=perl6
