# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Blaxel < Formula
  desc ""
  homepage "https://www.blaxel.ai"
  version "0.0.71"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/beamlit/toolkit/releases/download/v0.0.71/blaxel_Darwin_x86_64.tar.gz"
      sha256 "ed5ae247a8bc82627b9ea1ee464554d32dcbc8f2cbcdf2ad0c752b9ec85bf224"

      def install
        bin.install "blaxel"
        bin.install_symlink "blaxel" => "bl"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/beamlit/toolkit/releases/download/v0.0.71/blaxel_Darwin_arm64.tar.gz"
      sha256 "7225a0bdf004e0b183e665ad297994ed811e6662b6ddca4e676934b3242a8bc1"

      def install
        bin.install "blaxel"
        bin.install_symlink "blaxel" => "bl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/beamlit/toolkit/releases/download/v0.0.71/blaxel_Linux_x86_64.tar.gz"
        sha256 "b6f2b7a5fd324ffcaaed7bd925c64d976c2ace5d0d584ba8b55a6569e1390346"

        def install
          bin.install "blaxel"
          bin.install_symlink "blaxel" => "bl"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/beamlit/toolkit/releases/download/v0.0.71/blaxel_Linux_arm64.tar.gz"
        sha256 "acc5736df48a594544440a4433887898a9c1f676e8358f0b2aee12a1240d97b2"

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
