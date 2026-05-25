class Xgraft < Formula
    desc "MPLAB X project tool"
    homepage "https://github.com/taku-256/xgraft"
    url "https://github.com/taku-256/xgraft/releases/download/v0.1.0/xgraft-v0.1.0-x86_64-apple-darwin.tar.gz"
    sha256 "68c964b734909c5369a6cdcb31de6982bc2e9cba929b9eecab420bf5f147f3c2"

    def install
        bin.install "xgraft"
    end

    test do
        system "#{bin}/xgraft", "--version"
    end
end
