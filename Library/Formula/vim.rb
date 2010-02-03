require 'formula'

class Vim < Formula
  head 'git://git.debian.org/git/pkg-vim/vim.git'
  homepage 'http://www.vim.org'
#  md5 ''

  def install
    system "./configure", "--disable-debug",
                          "--prefix=#{prefix}",
                          "--disable-dependency-tracking",
                          # don't version stuff in Homebrew, we already do that!
                          "--enable-fndir=#{share}/zsh/functions",
                          "--enable-scriptdir=#{share}/zsh/scripts",
                          "--with-features=huge",
                          "--enable-gui=no",
                          "--without-x",
                          "--enable-multibyte",
                          "--enable-pythoninterp",
                          "--enable-rubyinterp"

    system "make install"
  end

  def skip_clean? path
    true
  end

end
