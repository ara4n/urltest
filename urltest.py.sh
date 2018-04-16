#!/bin/bash

python -c 'from urlparse import urlparse; print urlparse("mx:@matthew:arasphere.net")'
python -c 'from urlparse import urlparse; print urlparse("mx:#matthew:arasphere.net")'
python -c 'from urlparse import urlparse; print urlparse("mx:+matthew:arasphere.net")'
