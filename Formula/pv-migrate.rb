# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class PvMigrate < Formula
  desc "Persistent volume migration plugin for Kubernetes"
  homepage "https://github.com/utkuozdemir/pv-migrate"
  version "0.13.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/utkuozdemir/pv-migrate/releases/download/v0.13.0/pv-migrate_v0.13.0_darwin_arm64.tar.gz"
      sha256 "cfca80f23f07fe4c34ac0a197c1ac0fdb3464d74362bdccffc83130e1a5f9000"

      def install
        bin.install "pv-migrate"
        bash_completion.install "completions/pv-migrate.bash" => "pv-migrate"
        zsh_completion.install "completions/pv-migrate.zsh" => "_pv-migrate"
        fish_completion.install "completions/pv-migrate.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/utkuozdemir/pv-migrate/releases/download/v0.13.0/pv-migrate_v0.13.0_darwin_x86_64.tar.gz"
      sha256 "a5a1f752a5d333af644d0d52412670b89dba79a1530d013b50b28319b715cd08"

      def install
        bin.install "pv-migrate"
        bash_completion.install "completions/pv-migrate.bash" => "pv-migrate"
        zsh_completion.install "completions/pv-migrate.zsh" => "_pv-migrate"
        fish_completion.install "completions/pv-migrate.fish"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/utkuozdemir/pv-migrate/releases/download/v0.13.0/pv-migrate_v0.13.0_linux_arm64.tar.gz"
      sha256 "f36f74c8f6aad931b035b33e15d2d87841e034b41c7812f827397ab2193e3fc3"

      def install
        bin.install "pv-migrate"
        bash_completion.install "completions/pv-migrate.bash" => "pv-migrate"
        zsh_completion.install "completions/pv-migrate.zsh" => "_pv-migrate"
        fish_completion.install "completions/pv-migrate.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/utkuozdemir/pv-migrate/releases/download/v0.13.0/pv-migrate_v0.13.0_linux_x86_64.tar.gz"
      sha256 "fc1acfa0e39146190ccd51e1f8dfcbac911486e9dc169663545423adeeb2b509"

      def install
        bin.install "pv-migrate"
        bash_completion.install "completions/pv-migrate.bash" => "pv-migrate"
        zsh_completion.install "completions/pv-migrate.zsh" => "_pv-migrate"
        fish_completion.install "completions/pv-migrate.fish"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/utkuozdemir/pv-migrate/releases/download/v0.13.0/pv-migrate_v0.13.0_linux_armv7.tar.gz"
      sha256 "a8488c54d0ff03c052c9572dcbf0194c88c1414fd4059b734d8e1ac1108d4063"

      def install
        bin.install "pv-migrate"
        bash_completion.install "completions/pv-migrate.bash" => "pv-migrate"
        zsh_completion.install "completions/pv-migrate.zsh" => "_pv-migrate"
        fish_completion.install "completions/pv-migrate.fish"
      end
    end
  end

  test do
    system "#{bin}/pv-migrate -v"
  end
end
