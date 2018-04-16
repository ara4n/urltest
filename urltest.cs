using System;

namespace UrlTest
{
    class Program
    {
        static void Main(string[] args)
        {
            DumpUrl(new Uri("mx:@travis:t2l.io"));
            DumpUrl(new Uri("mx:#travis:t2l.io"));
            DumpUrl(new Uri("mx:+travis:t2l.io"));

            Console.ReadKey(true); // Wait for exit
        }

        private static void DumpUrl(Uri uri)
        {
            Console.WriteLine(uri.OriginalString);
            Console.WriteLine("Scheme: " + uri.Scheme);
            Console.WriteLine("Username: " + uri.UserInfo); // username + password
            Console.WriteLine("Host: " + uri.Host);
            Console.WriteLine("Port: " + uri.Port);
            Console.WriteLine("Abs Path: " + uri.AbsolutePath);
            Console.WriteLine("Local Path: " + uri.LocalPath);
            Console.WriteLine("Query: " + uri.Query);
            Console.WriteLine("Fragment: " + uri.Fragment);
            Console.WriteLine("Segments (csv): " + string.Join(",", uri.Segments));
            Console.WriteLine();
        }
    }
}

/*
mx:@travis:t2l.io
Scheme: mx
Username:
Host:
Port: -1
Abs Path: @travis:t2l.io
Local Path: @travis:t2l.io
Query:
Fragment:
Segments (csv): @travis:t2l.io

mx:#travis:t2l.io
Scheme: mx
Username:
Host:
Port: -1
Abs Path:
Local Path:
Query:
Fragment: #travis:t2l.io
Segments (csv):

mx:+travis:t2l.io
Scheme: mx
Username:
Host:
Port: -1
Abs Path: +travis:t2l.io
Local Path: +travis:t2l.io
Query:
Fragment:
Segments (csv): +travis:t2l.io
*/