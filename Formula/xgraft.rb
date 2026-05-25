class Xgraft < Formula
    desc "MPLAB X project tool"
    homepage "https://github.com/taku-256/xgraft"
    url "https://github.com/taku-256/xgraft/releases/download/v0.1.0/xgraft-v0.1.0-aarch64-apple-darwin.tar.gz"
    sha256 "224c6ddd240f1d3fe9dfcb524562d927b699e1614c6a065ac46702af78a7855c"

    def install
        bin.install "xgraft"
    end

    test do
        system "#{bin}/xgraft", "--version"
    end
end
