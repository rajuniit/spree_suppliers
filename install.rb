version = ARGV.pop

%w( spree_suppliers ).each do |framework|
  puts "Installing #{framework}..."
  `cd #{framework} && gem build spree_#{framework}.gemspec && gem install spree_#{framework}-#{version}.gem --no-ri --no-rdoc && rm spree_#{framework}-#{version}.gem`
end

puts "Installing Spree..."
`gem build spree.gemspec`
`gem install spree-#{version}.gem --no-ri --no-rdoc `
`rm spree-#{version}.gem`