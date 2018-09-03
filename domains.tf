resource "digitalocean_domain" "eurodiscover-eu" {
  name       = "eurodiscover.eu"
  ip_address = "${digitalocean_droplet.eurodiscover.ipv4_address}"
}

resource "digitalocean_record" "eurodiscover-eu-ns1" {
  domain = "${digitalocean_domain.eurodiscover-eu.name}"
  type   = "NS"
  name   = "@"
  value  = "ns1.davison.io."
}

resource "digitalocean_record" "eurodiscover-eu-ns2" {
  domain = "${digitalocean_domain.eurodiscover-eu.name}"
  type   = "NS"
  name   = "@"
  value  = "ns2.davison.io."
}

resource "digitalocean_record" "eurodiscover-eu-ns3" {
  domain = "${digitalocean_domain.eurodiscover-eu.name}"
  type   = "NS"
  name   = "@"
  value  = "ns3.davison.io."
}

resource "digitalocean_record" "eurodiscover-eu-www" {
  domain = "${digitalocean_domain.eurodiscover-eu.name}"
  type   = "CNAME"
  name   = "www"
  value  = "${digitalocean_domain.eurodiscover-eu.name}."
}

resource "digitalocean_record" "eurodiscover-eu-spf" {
  domain = "${digitalocean_domain.eurodiscover-eu.name}"
  type   = "TXT"
  name   = "@"
  value  = "v=spf1 include:mailgun.org include:_spf.yandex.net ~all"
}

resource "digitalocean_record" "eurodiscover-eu-dkim-mailgun" {
  domain = "${digitalocean_domain.eurodiscover-eu.name}"
  type   = "TXT"
  name   = "mailo._domainkey"
  value  = "k=rsa; p=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDNtFfnRpDQE6gWNSfwPRRk5ewPNhDW8OIBunORfOr/ic8jlxlB6AKOR/GAJj/ajnEZKA8aPIfCPXThDspoSPPteNDAdZhHm0sN2N8cm706P0GsgPREy28CdoVInyW399+IMfDSDEkL7+qskFP/vHIZ7DW/AFet5+ZIRGRCEAb75wIDAQAB"
}

resource "digitalocean_record" "eurodiscover-eu-dkim-yandex" {
  domain = "${digitalocean_domain.eurodiscover-eu.name}"
  type   = "TXT"
  name   = "mail._domainkey"
  value  = "v=DKIM1; k=rsa; t=s; p=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDW4nXTwxJJ9fOCuzk/1oCqD35yZJJiGxTqk9MIbHSU41sFbcMoRrm+37SoMn3ZtLHt6zVM1Oc0+3gMdnSwVqY+O43uYQJ4tpBv9JfkUJz7MSbg2+UYYqn2gIMulmn74M9K7fBqPXBb98oQEu3L+ClHZPhp3OfPosIIxgUAKKuZRwIDAQAB"
}

resource "digitalocean_record" "eurodiscover-eu-dmarc" {
  domain = "${digitalocean_domain.eurodiscover-eu.name}"
  type   = "TXT"
  name   = "_dmarc"
  value  = "v=DMARC1; p=none"
}

resource "digitalocean_record" "eurodiscover-eu-mx" {
  domain = "${digitalocean_domain.eurodiscover-eu.name}"
  type   = "MX"
  name   = "@"
  value  = "mx.yandex.net."
  priority = 10
}

resource "digitalocean_record" "eurodiscover-eu-email" {
  domain = "${digitalocean_domain.eurodiscover-eu.name}"
  type   = "CNAME"
  name   = "email"
  value  = "mailgun.org."
}
