# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Blaxel < Formula
  desc ""
  homepage "https://www.blaxel.ai"
  version "0.0.66"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/beamlit/toolkit/releases/download/v0.0.66/blaxel_Darwin_x86_64.tar.gz"
      sha256 "fc479e958162523ca9f4c0db3b16abe3c0e333d69b24c33cc8a1b9d4bc6d6ead"

      def install
        bin.install "blaxel"
        bin.install_symlink "blaxel" => "bl"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/beamlit/toolkit/releases/download/v0.0.66/blaxel_Darwin_arm64.tar.gz"
      sha256 "6cc37066d8e5f1aa67eb5c00fcce856c5e52410e12f8674033d940ab971e3b19"

      def install
        bin.install "blaxel"
        bin.install_symlink "blaxel" => "bl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/beamlit/toolkit/releases/download/v0.0.66/blaxel_Linux_x86_64.tar.gz"
        sha256 "3df62f48f8ff87624539898136cdd756f9eea43ee23cd8aff5f8fef2d1b231e7"

        def install
          bin.install "blaxel"
          bin.install_symlink "blaxel" => "bl"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/beamlit/toolkit/releases/download/v0.0.66/blaxel_Linux_arm64.tar.gz"
        sha256 "6d29af2235ba94194fb6a1b661ff7313b922b38319e3302c5d33b34d8af08fda"

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
