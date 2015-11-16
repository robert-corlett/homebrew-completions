class CargoCompletion < Formula
  desc "Bash and Zsh completion for Cargo"
  homepage "https://github.com/roshan/rust-bash-completion"
  url "https://github.com/rust-lang/cargo/archive/0.4.0.tar.gz"
  version "20150818.0.4.0"
  sha256 "cabc2a42fa1962769a9834d0be78d401cc3684565c7d7b700e4671b8e423a044"

  head "https://github.com/rust-lang/cargo.git"

  bottle :unneeded

  def install
    bash_completion.install "src/etc/cargo.bashcomp.sh" => "cargo"
    zsh_completion.install "src/etc/_cargo"
  end

  test do
    # we need to define a dummy 'cargo' command to force the script to define
    # the completion function
    assert_match "-F _cargo",
      shell_output("cargo() { true;} && source #{bash_completion}/cargo && complete -p cargo")
  end
end
