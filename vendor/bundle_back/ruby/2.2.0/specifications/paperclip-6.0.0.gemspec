# -*- encoding: utf-8 -*-
# stub: paperclip 6.0.0 ruby lib

Gem::Specification.new do |s|
  s.name = "paperclip"
  s.version = "6.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Jon Yurek"]
  s.date = "2018-03-09"
  s.description = "Easy upload management for ActiveRecord"
  s.email = ["jyurek@thoughtbot.com"]
  s.homepage = "https://github.com/thoughtbot/paperclip"
  s.licenses = ["MIT"]
  s.post_install_message = "##################################################\n#  NOTE FOR UPGRADING FROM 4.3.0 OR EARLIER      #\n##################################################\n\nPaperclip is now compatible with aws-sdk >= 2.0.0.\n\nIf you are using S3 storage, aws-sdk >= 2.0.0 requires you to make a few small\nchanges:\n\n* You must set the `s3_region`\n* If you are explicitly setting permissions anywhere, such as in an initializer,\n  note that the format of the permissions changed from using an underscore to\n  using a hyphen. For example, `:public_read` needs to be changed to\n  `public-read`.\n\nFor a walkthrough of upgrading from 4 to 5 and aws-sdk >= 2.0 you can watch\nhttp://rubythursday.com/episodes/ruby-snack-27-upgrade-paperclip-and-aws-sdk-in-prep-for-rails-5\n"
  s.required_ruby_version = Gem::Requirement.new(">= 2.1.0")
  s.requirements = ["ImageMagick"]
  s.rubygems_version = "2.4.5.1"
  s.summary = "File attachments as attributes for ActiveRecord"

  s.installed_by_version = "2.4.5.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activemodel>, [">= 4.2.0"])
      s.add_runtime_dependency(%q<activesupport>, [">= 4.2.0"])
      s.add_runtime_dependency(%q<terrapin>, ["~> 0.6.0"])
      s.add_runtime_dependency(%q<mime-types>, [">= 0"])
      s.add_runtime_dependency(%q<mimemagic>, ["~> 0.3.0"])
      s.add_development_dependency(%q<activerecord>, [">= 4.2.0"])
      s.add_development_dependency(%q<shoulda>, [">= 0"])
      s.add_development_dependency(%q<rspec>, ["~> 3.0"])
      s.add_development_dependency(%q<appraisal>, [">= 0"])
      s.add_development_dependency(%q<mocha>, [">= 0"])
      s.add_development_dependency(%q<aws-sdk-s3>, [">= 0"])
      s.add_development_dependency(%q<bourne>, [">= 0"])
      s.add_development_dependency(%q<cucumber-rails>, [">= 0"])
      s.add_development_dependency(%q<cucumber-expressions>, ["= 4.0.3"])
      s.add_development_dependency(%q<aruba>, ["~> 0.9.0"])
      s.add_development_dependency(%q<nokogiri>, [">= 0"])
      s.add_development_dependency(%q<capybara>, [">= 0"])
      s.add_development_dependency(%q<bundler>, [">= 0"])
      s.add_development_dependency(%q<fog-aws>, [">= 0"])
      s.add_development_dependency(%q<fog-local>, [">= 0"])
      s.add_development_dependency(%q<launchy>, [">= 0"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<fakeweb>, [">= 0"])
      s.add_development_dependency(%q<railties>, [">= 0"])
      s.add_development_dependency(%q<generator_spec>, [">= 0"])
      s.add_development_dependency(%q<timecop>, [">= 0"])
    else
      s.add_dependency(%q<activemodel>, [">= 4.2.0"])
      s.add_dependency(%q<activesupport>, [">= 4.2.0"])
      s.add_dependency(%q<terrapin>, ["~> 0.6.0"])
      s.add_dependency(%q<mime-types>, [">= 0"])
      s.add_dependency(%q<mimemagic>, ["~> 0.3.0"])
      s.add_dependency(%q<activerecord>, [">= 4.2.0"])
      s.add_dependency(%q<shoulda>, [">= 0"])
      s.add_dependency(%q<rspec>, ["~> 3.0"])
      s.add_dependency(%q<appraisal>, [">= 0"])
      s.add_dependency(%q<mocha>, [">= 0"])
      s.add_dependency(%q<aws-sdk-s3>, [">= 0"])
      s.add_dependency(%q<bourne>, [">= 0"])
      s.add_dependency(%q<cucumber-rails>, [">= 0"])
      s.add_dependency(%q<cucumber-expressions>, ["= 4.0.3"])
      s.add_dependency(%q<aruba>, ["~> 0.9.0"])
      s.add_dependency(%q<nokogiri>, [">= 0"])
      s.add_dependency(%q<capybara>, [">= 0"])
      s.add_dependency(%q<bundler>, [">= 0"])
      s.add_dependency(%q<fog-aws>, [">= 0"])
      s.add_dependency(%q<fog-local>, [">= 0"])
      s.add_dependency(%q<launchy>, [">= 0"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<fakeweb>, [">= 0"])
      s.add_dependency(%q<railties>, [">= 0"])
      s.add_dependency(%q<generator_spec>, [">= 0"])
      s.add_dependency(%q<timecop>, [">= 0"])
    end
  else
    s.add_dependency(%q<activemodel>, [">= 4.2.0"])
    s.add_dependency(%q<activesupport>, [">= 4.2.0"])
    s.add_dependency(%q<terrapin>, ["~> 0.6.0"])
    s.add_dependency(%q<mime-types>, [">= 0"])
    s.add_dependency(%q<mimemagic>, ["~> 0.3.0"])
    s.add_dependency(%q<activerecord>, [">= 4.2.0"])
    s.add_dependency(%q<shoulda>, [">= 0"])
    s.add_dependency(%q<rspec>, ["~> 3.0"])
    s.add_dependency(%q<appraisal>, [">= 0"])
    s.add_dependency(%q<mocha>, [">= 0"])
    s.add_dependency(%q<aws-sdk-s3>, [">= 0"])
    s.add_dependency(%q<bourne>, [">= 0"])
    s.add_dependency(%q<cucumber-rails>, [">= 0"])
    s.add_dependency(%q<cucumber-expressions>, ["= 4.0.3"])
    s.add_dependency(%q<aruba>, ["~> 0.9.0"])
    s.add_dependency(%q<nokogiri>, [">= 0"])
    s.add_dependency(%q<capybara>, [">= 0"])
    s.add_dependency(%q<bundler>, [">= 0"])
    s.add_dependency(%q<fog-aws>, [">= 0"])
    s.add_dependency(%q<fog-local>, [">= 0"])
    s.add_dependency(%q<launchy>, [">= 0"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<fakeweb>, [">= 0"])
    s.add_dependency(%q<railties>, [">= 0"])
    s.add_dependency(%q<generator_spec>, [">= 0"])
    s.add_dependency(%q<timecop>, [">= 0"])
  end
end
