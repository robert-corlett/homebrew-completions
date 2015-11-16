class BrewCaskCompletion < Formula
  desc "Bash & Fish completion for brew-cask"
  homepage "https://github.com/xyb/homebrew-cask-completion"
  url "https://github.com/xyb/homebrew-cask-completion/archive/v2.0.tar.gz"
  sha256 "858d8b8ad5574a21220ac85025c7b36699dbb7188beca04be52596e73f34a68f"
  head "https://github.com/xyb/homebrew-cask-completion.git"

  bottle :unneeded

  def install
    bash_completion.install "homebrew-cask-completion.bash" => "brew-cask"
    fish_completion.install "brew-cask.fish"
  end

  test do
    assert_match "-F _brew_cask",
      shell_output("source #{bash_completion}/brew-cask && complete -p brew-cask")
  end
end
