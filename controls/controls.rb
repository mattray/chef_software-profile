control 'Chef Infra Version Check' do
  desc "Check the version of Chef Infra."
  impact 1.0
  tag 'chef'
  tag 'version'

  describe command("chef-client --version") do
    its('stdout') { should match input('chef_infra') }
  end

end

control 'Chef InSpec Version Check' do
  desc "Check the version of Chef InSpec."
  impact 1.0
  tag 'inspec'
  tag 'version'

  describe command("inspec --version") do
    its('stdout') { should match input('chef_inspec') }
  end

end

control 'Chef Habitat Version Check' do
  desc "Check the version of Chef Habitat."
  impact 1.0
  tag 'habitat'
  tag 'version'

  describe command("hab --version") do
    its('stdout') { should match input('chef_habitat') }
  end

end
