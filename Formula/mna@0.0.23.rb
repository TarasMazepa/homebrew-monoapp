class MnaAT0023 < Formula
  desc "Monoapp command-line application"
  homepage "https://github.com/TarasMazepa/homebrew-monoapp"
  version '0.0.23'

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/TarasMazepa/homebrew-monoapp/releases/download/cli-v#{version}/macos-arm.zip"
    sha256 '8216fc514cb2a3d384074c9d2f14753825da297e17df7194daec9074e1e08890' # macos-arm
  elsif OS.linux? && Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
    url "https://github.com/TarasMazepa/homebrew-monoapp/releases/download/cli-v#{version}/linux-x64.zip"
    sha256 '591564a073b79e720151e895cf74479a2a95b77b9973c7d0351906a44eef3aa8' # linux-x64
  end

  def install
    bin.install "mna"
  end

  test do
    system "#{bin}/mna", "version"
  end
end
