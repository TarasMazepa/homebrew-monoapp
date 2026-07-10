class MnaATcliv003 < Formula
  desc "Monoapp command-line application"
  homepage "https://github.com/TarasMazepa/homebrew-monoapp"
  version 'cli-v0.0.3'

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/TarasMazepa/homebrew-monoapp/releases/download/#{version}/macos-arm.zip"
    sha256 '70c289e9accce13f4c51492a80d619d7bcad8ce2693020819ad9d729884e6b02' # macos-arm
  elsif OS.linux? && Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
    url "https://github.com/TarasMazepa/homebrew-monoapp/releases/download/#{version}/linux-x64.zip"
    sha256 '90bf12107b65cb51e86103076bb0726a44fb69a433b323ff4d2de3bf6ee4c961' # linux-x64
  end

  def install
    bin.install "mna"
  end

  test do
    system "#{bin}/mna", "version"
  end
end
