require 'spec_helper'
# Check CVE-2015-0235 Ghost
# http://www.openwall.com/lists/oss-security/2015/01/27/9

describe command('/tmp/GHOST') do
  its(:exit_status) { should eq 0 }
  its(:stdout) { should eq "not vulnerable\n" }
end
