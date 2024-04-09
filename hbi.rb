class Hbi < Formula
  desc "hey hey hey! program!"
  homepage ""
  url "https://github.com/pd3v/hbi/archive/refs/tags/v0.0.1.tar.gz"
  sha256 "77a2425e7cc1f6a0267780b1af053f41c808b62101112db6ca544a099f0230f5"
  license ""

  depends_on "cmake" => :build

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    # Remove unrecognized options if they cause configure to fail
    # https://rubydoc.brew.sh/Formula.html#std_configure_args-instance_method
    #system "./configure", "--disable-silent-rules", *std_configure_args
    system "cmake", "-S", ".", "-B", "build/" #, *std_cmake_args
    system "cd build"
    system "make"
  end

end
