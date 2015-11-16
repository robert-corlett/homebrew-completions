class RustcCompletion < Formula
  desc "Bash completion for rustc"
  homepage "https://github.com/roshan/rust-bash-completion"
  url "https://github.com/roshan/rust-bash-completion/archive/0.12.1.tar.gz"
  sha256 "562f84ccab40f2b3e7ef47e2e6d9b6615070a0e7330d64ea5368b6ad75455012"

  head "https://github.com/roshan/rust-bash-completion.git"

  # upstream commit to fix an undefined command when sourcing the file directly
  patch do
    url "https://github.com/roshan/rust-bash-completion/commit/932e9bb4e9f28c2785de2b8db6f0e8c050f4f9be.diff"
    sha256 "0d5f4762bd93ffe09ee86c6ffffc850337ee69a8a54049c8b29a113468b39618"
  end

  bottle :unneeded

  def install
    bash_completion.install "etc/bash_completion.d/rustc"
  end

  test do
    assert_match "-F _rustc",
      shell_output("source #{bash_completion}/rustc && complete -p rustc")
  end
end
