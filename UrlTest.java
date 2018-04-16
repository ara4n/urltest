import java.net.URI;

class UrlTest {
    public static void main(String[] args) {
        UrlTest.dumpURI("mx:@matthew:arasphere.net");
        UrlTest.dumpURI("mx:#matthew:arasphere.net");
        UrlTest.dumpURI("mx:+matthew:arasphere.net");
    }

    private static void dumpURI(String s) {
        try {
            URI uri = new URI(s);
            System.out.println(s);
            System.out.println("scheme: " + uri.getScheme());
            System.out.println("scheme-specific-part: " + uri.getSchemeSpecificPart());
            System.out.println("authority: " + uri.getAuthority());
            System.out.println("user-info: " + uri.getUserInfo());
            System.out.println("host: " + uri.getHost());
            System.out.println("port: " + uri.getPort());
            System.out.println("path: " + uri.getPath());
            System.out.println("query: " + uri.getQuery());
            System.out.println("fragment: " + uri.getFragment());
        }
        catch (Exception e) {
            System.err.println(e);
        }
        System.out.println();
    }
}
