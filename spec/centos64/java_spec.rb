require 'spec_helper'

describe file("/usr/java/bin/java")  do
  it { should be_file }
end

describe command("java -version") do
  it { should return_stdout /1.7.0_45/ }
end
