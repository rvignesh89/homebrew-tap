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

class Havener < Formula
  hver = "v0.15.0"
  hsha = "400fe8433efe4f580211ed1e1a4d0dc97d4e868d99f1a0d00fcb1062cef59fb6"

  desc 'Havener - Convenience tool to handle tasks around Containerized CF workloads on a Kubernetes cluster'
  homepage 'https://github.com/homeport/havener'
  url "https://github.com/homeport/havener/releases/download/#{hver}/havener-kube-1.10-helm-2.10-darwin-amd64"
  sha256 "#{hsha}"
  version "#{hver}"

  def install
    FileUtils.mv('havener-kube-1.10-helm-2.10-darwin-amd64', 'havener')
    bin.install 'havener'
  end

  test do
    system "#{bin}/havener", 'version'
  end
end
