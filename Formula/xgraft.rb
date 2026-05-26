class Xgraft < Formula
    desc "MPLAB X project tool"
    homepage "https://github.com/taku-256/xgraft"

    if Hardware::CPU.arm?
        url "https://github.com/taku-256/xgraft/releases/download/v0.1.0/xgraft-v0.1.0-aarch64-apple-darwin.tar.gz"
        sha256 "0ba44cd9198992004132700feb9204e568edbb1512b673f8c2f3829e45b405a3"
    else
        url "https://github.com/taku-256/xgraft/releases/download/v0.1.0/xgraft-v0.1.0-x86_64-apple-darwin.tar.gz"
        sha256 "2014c9c5e61ad4a8e4f62c1f0244fd41cbb2acd79178b24acb542b427d6f775e"
    end

    def install
        bin.install "xgraft"
    end

    test do
        system "#{bin}/xgraft", "--version"
    end
end
