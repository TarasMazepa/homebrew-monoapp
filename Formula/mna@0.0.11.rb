class MnaAT0011 < Formula
  desc "Monoapp command-line application"
  homepage "https://github.com/TarasMazepa/homebrew-monoapp"
  version '0.0.11'

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/TarasMazepa/homebrew-monoapp/releases/download/cli-v#{version}/macos-arm.zip"
    sha256 '24687a898bbdec10e2e999747e5575b75ee85beab1822d56a51ca2a3c1f2ba82' # macos-arm
  elsif OS.linux? && Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
    url "https://github.com/TarasMazepa/homebrew-monoapp/releases/download/cli-v#{version}/linux-x64.zip"
    sha256 '9c26949d58f86ea5b229bc3776317ee4890b39b7576f67ce2d58ba24a45a5393' # linux-x64
  end

  def install
    bin.install "mna"
  end

  test do
    system "#{bin}/mna", "version"
  end
end
