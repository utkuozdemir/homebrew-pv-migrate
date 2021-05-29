# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class PvMigrate < Formula
  desc "Persistent volume migration plugin for Kubernetes"
  homepage "https://github.com/utkuozdemir/pv-migrate"
  version "0.5.7"
  license "Apache-2.0"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/utkuozdemir/pv-migrate/releases/download/v0.5.7/pv-migrate_0.5.7_darwin_x86_64.tar.gz"
    sha256 "dcf83a4134dcded2e4b717ad592fff549f9932450ce6623ffa1f9f4337f5b451"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/utkuozdemir/pv-migrate/releases/download/v0.5.7/pv-migrate_0.5.7_linux_x86_64.tar.gz"
    sha256 "bb1f1a456884377462f473b5e8d4621ae259b70cc8d2085cc525fda70b083183"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/utkuozdemir/pv-migrate/releases/download/v0.5.7/pv-migrate_0.5.7_linux_arm64.tar.gz"
    sha256 "2987e9aeba89b64aa9525361cdf5cfed1a6da7eb291b50d9a1685c4b996ffb29"
  end

  def install
    bin.install "pv-migrate"
  end

  test do
    system "#{bin}/pv-migrate -v"
  end
end
