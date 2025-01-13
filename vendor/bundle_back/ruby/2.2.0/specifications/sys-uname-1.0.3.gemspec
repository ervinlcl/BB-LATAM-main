# -*- encoding: utf-8 -*-
# stub: sys-uname 1.0.3 ruby lib

Gem::Specification.new do |s|
  s.name = "sys-uname"
  s.version = "1.0.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Daniel J. Berger"]
  s.cert_chain = ["-----BEGIN CERTIFICATE-----\nMIIDcDCCAligAwIBAgIBATANBgkqhkiG9w0BAQUFADA/MREwDwYDVQQDDAhkamJl\ncmc5NjEVMBMGCgmSJomT8ixkARkWBWdtYWlsMRMwEQYKCZImiZPyLGQBGRYDY29t\nMB4XDTE2MTAzMTE4NTcyNVoXDTE3MTAzMTE4NTcyNVowPzERMA8GA1UEAwwIZGpi\nZXJnOTYxFTATBgoJkiaJk/IsZAEZFgVnbWFpbDETMBEGCgmSJomT8ixkARkWA2Nv\nbTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBALwqllig3Tyc29Y3SZgK\nfFaApRB5R3l8KkOog3rwqr4Rr8bc8MfAMwHOzfqUMQRF7bPIyd5jLu24tPSC2X8D\nSKDS3069iTzTEDSPin90MVes+nd/ngys93lgmJ9DSwpGXQzZ7sWqdaJjzqLqDMhZ\n3LhTRZeMpDA8hyEiX7GmVp+VvhAXQ1pjfoFBmMNrzibUmYXcyllzqfEFcbI31/EK\nvlkEmcTKdNyd4aIOFLadZpzVvLxWsxFqi6qwteAwlNk3zxaik6O82iAXq2tcnk8p\nasWidshXCiRunncPhVogVYNCS4ISfYD6b/f85T9DsxJ6tsADNfeXnMTRxQcQv+1x\n0l0CAwEAAaN3MHUwCQYDVR0TBAIwADALBgNVHQ8EBAMCBLAwHQYDVR0OBBYEFC3D\np9cyKtYtWUAefeMpMh4kMUP4MB0GA1UdEQQWMBSBEmRqYmVyZzk2QGdtYWlsLmNv\nbTAdBgNVHRIEFjAUgRJkamJlcmc5NkBnbWFpbC5jb20wDQYJKoZIhvcNAQEFBQAD\nggEBAEYzyGzoleAO3i6mOBi/Px1yWdVuU4ejvxrj8axHRK+wHQ+bYvx9eEosuRHB\nmXjRvpN9UnOiY7wYbK36MpAALBq3swpcBpYXyfBOdv0JQvjMEGmKqXJS7AbNHNPc\nZbpPrVSdJJ+aTWEDvybl693eEUvEuiSkVIz8w4yNcJP1zOBRBKxG2viJdMKz5Ho7\n2M9INmGCv3GCv4bljYlIIg4YYAyOaBbSQeAb2/F5XAlOR2oEB8ipB+RKGZXR8rq5\nEkhPwYAx+jZ4KyPve9JKm34Du9veVFEzq3aW+opaveK167NEorK7xLpmdEcdo9bR\n9CkYV0lClarK7w1ykAePuEeXD7k=\n-----END CERTIFICATE-----\n"]
  s.date = "2016-10-31"
  s.description = "    The sys-uname library provides an interface for gathering information\n    about your current platform. The library is named after the Unix 'uname'\n    command but also works on MS Windows. Available information includes\n    OS name, OS version, system name and so on. Additional information is\n    available for certain platforms.\n"
  s.email = "djberg96@gmail.com"
  s.extra_rdoc_files = ["CHANGES", "README", "MANIFEST", "doc/uname.txt"]
  s.files = ["CHANGES", "MANIFEST", "README", "doc/uname.txt"]
  s.homepage = "http://github.com/djberg96/sys-uname"
  s.licenses = ["Artistic-2.0"]
  s.rubygems_version = "2.4.5.1"
  s.summary = "An interface for returning uname (platform) information"

  s.installed_by_version = "2.4.5.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<ffi>, [">= 1.0.0"])
    else
      s.add_dependency(%q<ffi>, [">= 1.0.0"])
    end
  else
    s.add_dependency(%q<ffi>, [">= 1.0.0"])
  end
end
