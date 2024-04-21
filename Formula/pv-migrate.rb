# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class PvMigrate < Formula
  desc "Persistent volume migration plugin for Kubernetes"
  homepage "https://github.com/utkuozdemir/pv-migrate"
  version "1.8.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/utkuozdemir/pv-migrate/releases/download/v1.8.0/pv-migrate_v1.8.0_darwin_x86_64.tar.gz"
      sha256 "1c100b0765ac06489ae23588e9854b7af94b894310bc1caff44c756b2f4b89e4"

      def install
        bin.install "pv-migrate"
        bash_completion.install "completions/pv-migrate.bash" => "pv-migrate"
        zsh_completion.install "completions/pv-migrate.zsh" => "_pv-migrate"
        fish_completion.install "completions/pv-migrate.fish"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/utkuozdemir/pv-migrate/releases/download/v1.8.0/pv-migrate_v1.8.0_darwin_arm64.tar.gz"
      sha256 "9dcfce5c036f4d134d53a6c689357f2d509e0f939e6bcf639f94b7d7dda5632e"

      def install
        bin.install "pv-migrate"
        bash_completion.install "completions/pv-migrate.bash" => "pv-migrate"
        zsh_completion.install "completions/pv-migrate.zsh" => "_pv-migrate"
        fish_completion.install "completions/pv-migrate.fish"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/utkuozdemir/pv-migrate/releases/download/v1.8.0/pv-migrate_v1.8.0_linux_x86_64.tar.gz"
      sha256 "2877b6b235de9f44b1e26ec5fe6e7bdde74c4cace132b0db2f2e592eb43446b7"

      def install
        bin.install "pv-migrate"
        bash_completion.install "completions/pv-migrate.bash" => "pv-migrate"
        zsh_completion.install "completions/pv-migrate.zsh" => "_pv-migrate"
        fish_completion.install "completions/pv-migrate.fish"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/utkuozdemir/pv-migrate/releases/download/v1.8.0/pv-migrate_v1.8.0_linux_armv7.tar.gz"
      sha256 "e8026524b4ed155b911d176c2d73b2935bd4433aaad43312424ee850b1f4ad98"

      def install
        bin.install "pv-migrate"
        bash_completion.install "completions/pv-migrate.bash" => "pv-migrate"
        zsh_completion.install "completions/pv-migrate.zsh" => "_pv-migrate"
        fish_completion.install "completions/pv-migrate.fish"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/utkuozdemir/pv-migrate/releases/download/v1.8.0/pv-migrate_v1.8.0_linux_arm64.tar.gz"
      sha256 "1654ff93eab964eb5fdea4147fbf4cc6377e871512e144bf7e773b38a2b38e5b"

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
