# MIT License
#
# Copyright (c) 2018 The Homeport Team
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.

require 'FileUtils'

# Just the ytbx homebrew formula
class Ytbx < Formula
  yver = "v1.1.1"
  ysha = "2566d7e909ca07d371f9b272301eca315c122f90a77e4db3ea627530f7ba90e9"

  desc 'ytbx - YAML tool box'
  homepage 'https://github.com/homeport/ytbx'
  url "https://github.com/homeport/ytbx/releases/download/#{yver}/ytbx-darwin-amd64"
  sha256 "#{ysha}"
  version "#{yver}"

  def install
    FileUtils.mv('ytbx-darwin-amd64', 'ytbx')
    bin.install 'ytbx'
  end

  test do
    system "#{bin}/ytbx", 'version'
  end
end