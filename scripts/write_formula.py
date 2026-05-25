from pathlib import Path
import os

tag = os.environ["TAG"]
sha = os.environ["SHA"]

content = f'''class Xgraft < Formula
    desc "MPLAB X project tool"
    homepage "https://github.com/taku-256/xgraft"
    url "https://github.com/taku-256/xgraft/releases/download/{tag}/xgraft-{tag}-aarch64-apple-darwin.tar.gz"
    sha256 "{sha}"

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