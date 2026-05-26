class Xgraft < Formula
    desc "MPLAB X project tool"
    homepage "https://github.com/taku-256/xgraft"

    if Hardware::CPU.arm?
        url "https://github.com/taku-256/xgraft/releases/download/v0.1.0/xgraft-v0.1.0-aarch64-apple-darwin.tar.gz"
        sha256 "92951bc547a5cbcc9cb32a7a645872030acfba88846fe9dcee4130c8460023cb"
    else
        url "https://github.com/taku-256/xgraft/releases/download/v0.1.0/xgraft-v0.1.0-x86_64-apple-darwin.tar.gz"
        sha256 "42d3983c3cffe6db26b6f177e08002770c8bcd6c1e3c362ec34061bf0b3c19a3"
    end

    def install
        bin.install "xgraft"
    end

    test do
        system "#{bin}/xgraft", "--version"
    end
end
