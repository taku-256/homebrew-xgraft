class Xgraft < Formula
    desc "MPLAB X project tool"
    homepage "https://github.com/taku-256/xgraft"

    if Hardware::CPU.arm?
        url "https://github.com/taku-256/xgraft/releases/download/v0.1.0/xgraft-v0.1.0-aarch64-apple-darwin.tar.gz"
        sha256 "73c934b09e390b1906b3fb6e0c1960d9d0f267ae2669ff206916c078e709011a"
    else
        url "https://github.com/taku-256/xgraft/releases/download/v0.1.0/xgraft-v0.1.0-x86_64-apple-darwin.tar.gz"
        sha256 "5ea6988900d2aeb8bcfb3ed4f3678e08c554439f2e818effd63dbb71cbe64f85"
    end

    def install
        bin.install "xgraft"
    end

    test do
        system "#{bin}/xgraft", "--version"
    end
end
