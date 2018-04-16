//gcc 5.0.4

#import <Foundation/Foundation.h>

void dumpUrl(NSURL *url) {
    NSLog(@"%@", url);
    NSLog(@"scheme: %@", [url scheme]);
    NSLog(@"user: %@", [url user]);
    NSLog(@"password: %@", [url password]);
    NSLog(@"host: %@", [url host]);
    NSLog(@"port: %@", [url port]);
    NSLog(@"path: %@", [url path]);
    NSLog(@"pathExtension: %@", [url pathExtension]);
    NSLog(@"pathComponents: %@", [url pathComponents]);
    NSLog(@"parameterString: %@", [url parameterString]);
    NSLog(@"query: %@", [url query]);
    NSLog(@"fragment: %@", [url fragment]);
    NSLog(@"");
}

int main (int argc, const char * argv[])
{
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    
    dumpUrl([NSURL URLWithString:@"mx:@matthew:matrix.org"]);
    dumpUrl([NSURL URLWithString:@"mx:#matthew:matrix.org"]);
    dumpUrl([NSURL URLWithString:@"mx:+matthew:matrix.org"]);
    
    [pool drain];
    return 0;
}
