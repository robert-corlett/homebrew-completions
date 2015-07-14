class ComposerCompletion < Formula
  homepage "https://gist.github.com/tonglil/753d59d6d649f85600fe"
  url "https://gist.githubusercontent.com/tonglil/753d59d6d649f85600fe/raw/854fcb2f5a4cae824119d6c5c40a2bde4e541689/composer-completion.sh"
  sha1 "21bedfccf0a9cdf23b7b1a7fd5fee4188a72fadd"

  def install
    bash_completion.install "composer-completion.sh"
  end
end
