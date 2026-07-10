class Mna < Formula
  desc "Monoapp command-line application"
  homepage "https://github.com/TarasMazepa/homebrew-monoapp"
  version '0.0.0'

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/TarasMazepa/homebrew-monoapp/releases/download/cli-v#{version}/macos-arm.zip"
    sha256 '' # macos-arm
  elsif OS.linux? && Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
    url "https://github.com/TarasMazepa/homebrew-monoapp/releases/download/cli-v#{version}/linux-x64.zip"
    sha256 '' # linux-x64
  end

  def install
    bin.install "mna"
  end

  test do
    system "#{bin}/mna", "version"
  end
end
