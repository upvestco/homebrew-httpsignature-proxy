# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class HttpsignatureProxy < Formula
  desc "Localhost HTTP Signatures proxy."
  homepage "https://github.com/upvestco/httpsignature-proxy"
  version "1.3.8"
  license "Apache 2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/upvestco/httpsignature-proxy/releases/download/v1.3.8/httpsignature-proxy_v1.3.8_macOS_arm64.tar.gz"
      sha256 "fc3d3f80162e7a305af758ad7379e572b1b4d3829a5e6e972513afea77ffa0f3"

      def install
        bin.install "httpsignature-proxy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/upvestco/httpsignature-proxy/releases/download/v1.3.8/httpsignature-proxy_v1.3.8_macOS_64-bit.tar.gz"
      sha256 "718d739defe7ee684ed813e619f1a76827bddb934d8f36e0d4c11e04264d3194"

      def install
        bin.install "httpsignature-proxy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/upvestco/httpsignature-proxy/releases/download/v1.3.8/httpsignature-proxy_v1.3.8_Linux_64-bit.tar.gz"
      sha256 "dfdf4e871e935610df76739dde372af9337d5466ef17dab83e68e28c79c17ab2"

      def install
        bin.install "httpsignature-proxy"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/upvestco/httpsignature-proxy/releases/download/v1.3.8/httpsignature-proxy_v1.3.8_Linux_arm64.tar.gz"
      sha256 "5efcc969b9768eb40ddbb04785e92213697e69163c81e5668195377bd4a4cf20"

      def install
        bin.install "httpsignature-proxy"
      end
    end
  end

  test do
    system "#{bin}/httpsignature-proxy version"
  end
end
