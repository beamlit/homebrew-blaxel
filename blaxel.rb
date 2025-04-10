# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Blaxel < Formula
  desc ""
  homepage "https://www.blaxel.ai"
  version "0.1.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/beamlit/toolkit/releases/download/v0.1.2/blaxel_Darwin_x86_64.tar.gz"
      sha256 "fa4cb035feae72924180252c702ae3232b937c43836f9e8e39431c506ea545bb"

      def install
        bin.install "blaxel"
        bin.install_symlink "blaxel" => "bl"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/beamlit/toolkit/releases/download/v0.1.2/blaxel_Darwin_arm64.tar.gz"
      sha256 "87e5d2aaf72a93f1507022b6756e2226a178e914a72d680f0efa361b0cdd4f02"

      def install
        bin.install "blaxel"
        bin.install_symlink "blaxel" => "bl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/beamlit/toolkit/releases/download/v0.1.2/blaxel_Linux_x86_64.tar.gz"
        sha256 "08d8fbd3f8bc1bd90106ce8a65800f344a4e73f007032113be0394ccaa960571"

        def install
          bin.install "blaxel"
          bin.install_symlink "blaxel" => "bl"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/beamlit/toolkit/releases/download/v0.1.2/blaxel_Linux_arm64.tar.gz"
        sha256 "4aaff0bef392a916f9a94ce795fdb434fc66de15d2c4c2ba0119690ee06848bc"

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
