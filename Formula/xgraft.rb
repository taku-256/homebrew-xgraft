class Xgraft < Formula
    desc "MPLAB X project tool"
    homepage "https://github.com/taku-256/xgraft"
    url "https://github.com/taku-256/xgraft/releases/download/v0.1.0/xgraft-v0.1.0-aarch64-apple-darwin.tar.gz"
    sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"

    def install
        bin.install "xgraft"
    end

    test do
        system "#{bin}/xgraft", "--version"
    end
end
