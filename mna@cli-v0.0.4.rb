class MnaATcliv004 < Formula
  desc "Monoapp command-line application"
  homepage "https://github.com/TarasMazepa/homebrew-monoapp"
  version 'cli-v0.0.4'

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/TarasMazepa/homebrew-monoapp/releases/download/#{version}/macos-arm.zip"
    sha256 'e01155a0f9d23436a98858e04766ee453ab433f219d373713d319a178100e389' # macos-arm
  elsif OS.linux? && Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
    url "https://github.com/TarasMazepa/homebrew-monoapp/releases/download/#{version}/linux-x64.zip"
    sha256 '8fccf5b9e795d7bfe672c9c9a190429fec85c2e42e9cad7232fd1d621fa1a0af' # linux-x64
  end

  def install
    bin.install "mna"
  end

  test do
    system "#{bin}/mna", "version"
  end
end
