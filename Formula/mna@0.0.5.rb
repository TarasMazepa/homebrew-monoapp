class MnaAT005 < Formula
  desc "Monoapp command-line application"
  homepage "https://github.com/TarasMazepa/homebrew-monoapp"
  version '0.0.5'

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/TarasMazepa/homebrew-monoapp/releases/download/#{version}/macos-arm.zip"
    sha256 '359c68a6ed3bd8d3219a38653fe70f26931632b0a2c2d869c430dd7694b72b86' # macos-arm
  elsif OS.linux? && Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
    url "https://github.com/TarasMazepa/homebrew-monoapp/releases/download/#{version}/linux-x64.zip"
    sha256 '5edc41718ba551befa7dec433ba2ad65b98b7d8cdddcab5fa51c194f98c8a1ee' # linux-x64
  end

  def install
    bin.install "mna"
  end

  test do
    system "#{bin}/mna", "version"
  end
end
