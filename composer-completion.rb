class ComposerCompletion < Formula
  desc "Bash completion for Composer"
  homepage "https://gist.github.com/xcorlett/6292dbf542eb72656c8a"
  url "https://gist.githubusercontent.com/xcorlett/6292dbf542eb72656c8a/raw/ab5a1e2a4a2d96ffe7efc327317d0f000a26f696/composer-completion.sh"
  version "1.1"

  def install
    bash_completion.install "composer-completion.sh"
  end

  test do
    assert_match "-F _composer",
      shell_output("source #{bash_completion}/composer-completion.sh && complete -p composer")
  end
end
