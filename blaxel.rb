# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Blaxel < Formula
  desc ""
  homepage "https://www.blaxel.ai"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/beamlit/toolkit/releases/download/v0.1.0/blaxel_Darwin_x86_64.tar.gz"
      sha256 "bb53cb3517b63d48c9853005c8da07910943cde6edd60688e6f99c3ddf7cbd3b"

      def install
        bin.install "blaxel"
        bin.install_symlink "blaxel" => "bl"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/beamlit/toolkit/releases/download/v0.1.0/blaxel_Darwin_arm64.tar.gz"
      sha256 "48d9f1991d2782add681bbac52f90faf37f03dc19a2229f7ea862893198a930f"

      def install
        bin.install "blaxel"
        bin.install_symlink "blaxel" => "bl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/beamlit/toolkit/releases/download/v0.1.0/blaxel_Linux_x86_64.tar.gz"
        sha256 "0722f9ec59811ba0621311c9cb42dbb9cc12f8f4de98efa2c2ceee65fd0ddbc0"

        def install
          bin.install "blaxel"
          bin.install_symlink "blaxel" => "bl"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/beamlit/toolkit/releases/download/v0.1.0/blaxel_Linux_arm64.tar.gz"
        sha256 "da75539fc3d8072ace6169fd7e3cc513d4736f45d9f6f2266f687336b8d86ed9"

        def install
          bin.install "blaxel"
          bin.install_symlink "blaxel" => "bl"
        end
      end
    end
  end

  def caveats
    <<~EOS
      Blaxel is a tool to ship AI agents that never slack.
    EOS
  end
end
