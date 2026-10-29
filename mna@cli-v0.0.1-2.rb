class MnaATcliv0012 < Formula
  desc "Monoapp command-line application"
  homepage "https://github.com/TarasMazepa/homebrew-monoapp"
  version 'cli-v0.0.1-2'

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/TarasMazepa/homebrew-monoapp/releases/download/#{version}/macos-arm.zip"
    sha256 'cd154ae4fa4d7c804bc578f2fc97dc9912adf4c25922ab853ef14aa125cbd884' # macos-arm
  elsif OS.linux? && Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
    url "https://github.com/TarasMazepa/homebrew-monoapp/releases/download/#{version}/linux-x64.zip"
    sha256 'd58a80fbf7e35c106415128cfda2b432773caca488f562d0bf848783fd733f09' # linux-x64
  end

  def install
    bin.install "mna"
  end

  test do
    system "#{bin}/mna", "version"
  end
end
