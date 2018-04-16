#include <iostream>
#include <boost/network/uri.hpp>
#include <boost/network/uri/uri_io.hpp>

using namespace boost::network;

void dumpUri(const char * s) {
    uri::uri u(s);

    std::cout << s << std::endl;
    std::cout << "scheme:    " << uri::scheme(u)    << std::endl;
    std::cout << "user_info: " << uri::user_info(u) << std::endl;
    std::cout << "host:      " << uri::host(u)      << std::endl;
    std::cout << "port:      " << uri::port(u)      << std::endl;
    std::cout << "path:      " << uri::path(u)      << std::endl;
    std::cout << "query:     " << uri::query(u)     << std::endl;
    std::cout << "fragment:  " << uri::fragment(u)  << std::endl;
    std::cout << std::endl;
}

int main() {
    dumpUri("mx:#matthew:arasphere.net");
    dumpUri("mx:@matthew:arasphere.net");
    dumpUri("mx:+matthew:arasphere.net");
}
