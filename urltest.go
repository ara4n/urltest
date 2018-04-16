package main

import (
	"net/url"
	"fmt"
)

func main() {
	// Yes, we're cheating by passing the error down
	dumpUri(url.Parse("mx:@travis:t2l.io"))
	dumpUri(url.Parse("mx:#travis:t2l.io")) // Go will convert this to mx://#travis:t2l.io
	dumpUri(url.Parse("mx:+travis:t2l.io"))
}

func dumpUri(uri *url.URL, err error) {
	if err != nil {
		fmt.Println(err)
	} else {
		fmt.Println(uri)
		fmt.Println("Scheme: ", uri.Scheme)
		fmt.Println("Username: ", uri.User)
		fmt.Println("Host: ", uri.Host)
		fmt.Println("Port: ", uri.Port())
		fmt.Println("Path: ", uri.Path)
		fmt.Println("Query: ", uri.RawQuery)
		fmt.Println("Fragment: ", uri.Fragment)
		fmt.Println("Opaque: ", uri.Opaque)
		fmt.Println("")
	}
}

/*
mx:@travis:t2l.io
Scheme:  mx
Username:  <nil>
Host:  
Port:  
Path:  
Query:  
Fragment:  
Opaque:  @travis:t2l.io

mx://#travis:t2l.io
Scheme:  mx
Username:  <nil>
Host:  
Port:  
Path:  
Query:  
Fragment:  travis:t2l.io
Opaque:  

mx:+travis:t2l.io
Scheme:  mx
Username:  <nil>
Host:  
Port:  
Path:  
Query:  
Fragment:  
Opaque:  +travis:t2l.io
*/