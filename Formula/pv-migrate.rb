# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class PvMigrate < Formula
  desc "Persistent volume migration plugin for Kubernetes"
  homepage "https://github.com/utkuozdemir/pv-migrate"
  version "0.5.4"
  license "Apache-2.0"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/utkuozdemir/pv-migrate/releases/download/v0.5.4/pv-migrate_0.5.4_darwin_x86_64.tar.gz"
    sha256 "57b390d43afe86a12663e753e83ea31fe67d86b7876b889a8c43d8fe703c0941"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/utkuozdemir/pv-migrate/releases/download/v0.5.4/pv-migrate_0.5.4_linux_x86_64.tar.gz"
    sha256 "33b749c3514cfd7e93279856d20e19f7101d8bcd16a5c44083bf48a80b3f75ef"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/utkuozdemir/pv-migrate/releases/download/v0.5.4/pv-migrate_0.5.4_linux_arm64.tar.gz"
    sha256 "bd6d19856e4677f93536f9d93df4984dbc3f6a59cf34ab406b57a824775afbc0"
  end

  def install
    bin.install "pv-migrate"
  end

  test do
    system "#{bin}/pv-migrate -v"
  end
end
