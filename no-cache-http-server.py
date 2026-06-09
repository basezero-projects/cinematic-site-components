from http.server import SimpleHTTPRequestHandler, ThreadingHTTPServer
import os
import sys


class NoCacheHandler(SimpleHTTPRequestHandler):
    def end_headers(self):
        self.send_header("Cache-Control", "no-store, no-cache, must-revalidate, max-age=0")
        self.send_header("Pragma", "no-cache")
        self.send_header("Expires", "0")
        super().end_headers()


def main():
    if len(sys.argv) != 4:
        print("Usage: no-cache-http-server.py <port> <bind-address> <root>", file=sys.stderr)
        sys.exit(2)

    port = int(sys.argv[1])
    bind_address = sys.argv[2]
    root = sys.argv[3]
    os.chdir(root)

    server = ThreadingHTTPServer((bind_address, port), NoCacheHandler)
    print(f"Serving {root} at http://{bind_address}:{port}/ with no-cache headers")
    server.serve_forever()


if __name__ == "__main__":
    main()
