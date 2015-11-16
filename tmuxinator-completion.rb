class TmuxinatorCompletion < Formula
  desc "Shell completion for Tmuxinator"
  homepage "https://github.com/tmuxinator/tmuxinator"
  url "https://github.com/tmuxinator/tmuxinator/archive/v0.6.11.tar.gz"
  sha256 "34681e88ee8e45ba213fd473691a4ceca2609ac31c6220c253b0120a8d590fe0"

  head "https://github.com/tmuxinator/tmuxinator.git"

  bottle :unneeded

  def install
    bash_completion.install "completion/tmuxinator.bash" => "tmuxinator"
    zsh_completion.install "completion/tmuxinator.zsh" => "_tmuxinator"
    fish_completion.install Dir["completion/*.fish"]
  end

  test do
    assert_match "-F _tmuxinator",
      shell_output("source #{bash_completion}/tmuxinator && complete -p tmuxinator")
  end
end
