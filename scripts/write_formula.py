from pathlib import Path
import os

tag = os.environ["TAG"]

sha_arm = os.environ["SHA_ARM"]
sha_x86 = os.environ["SHA_X86"]

content = f'''class Xgraft < Formula
    desc "MPLAB X project tool"
    homepage "https://github.com/taku-256/xgraft"

    if Hardware::CPU.arm?
        url "https://github.com/taku-256/xgraft/releases/download/{tag}/xgraft-{tag}-aarch64-apple-darwin.tar.gz"
        sha256 "{sha_arm}"
    else
        url "https://github.com/taku-256/xgraft/releases/download/{tag}/xgraft-{tag}-x86_64-apple-darwin.tar.gz"
        sha256 "{sha_x86}"
    end

    def install
        bin.install "xgraft"
    end

    test do
        system "#{{bin}}/xgraft", "--version"
    end
end
'''

Path("Formula").mkdir(exist_ok=True)
Path("Formula/xgraft.rb").write_text(content)