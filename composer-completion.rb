class ComposerCompletion < Formula
  desc "Bash completion for Composer"
  homepage "https://gist.github.com/tonglil/753d59d6d649f85600fe"
  url "https://gist.githubusercontent.com/tonglil/753d59d6d649f85600fe/raw/854fcb2f5a4cae824119d6c5c40a2bde4e541689/composer-completion.sh"
  version "1"
  sha256 "6a9e49ed748e5f7a7fbfb6ecbea2c54a5ba3832444d58f81208bb2768754e2da"

  def install
    bash_completion.install "composer-completion.sh"
  end

  test do
    assert_match "-F _composer",
      shell_output("source #{bash_completion}/composer-completion.sh && complete -p composer")
  end
end
