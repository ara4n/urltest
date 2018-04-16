#!/bin/bash

perl -MURI::Split -e '($scheme, $auth, $path, $query, $frag)=URI::Split::uri_split("mx:\@matthew:arasphere.net"); print "scheme:$scheme\nauth:$auth\npath:$path\nquery:$query\nfrag:$frag\n"'
perl -MURI::Split -e '($scheme, $auth, $path, $query, $frag)=URI::Split::uri_split("mx:#matthew:arasphere.net"); print "scheme:$scheme\nauth:$auth\npath:$path\nquery:$query\nfrag:$frag\n"'
perl -MURI::Split -e '($scheme, $auth, $path, $query, $frag)=URI::Split::uri_split("mx:+matthew:arasphere.net"); print "scheme:$scheme\nauth:$auth\npath:$path\nquery:$query\nfrag:$frag\n"'
