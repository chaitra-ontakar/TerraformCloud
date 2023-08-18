module "tfplan-functions" {
    source = "../../common-functions/tfplan-functions/tfplan-functions.sentinel"
}

mock "tfplan/v2" {
  module {
    source = "mock-tfplan-pass-sslpolicy-Test-Policy.sentinel"
  }
}

test {
    rules = {
        main = true
    }
}
