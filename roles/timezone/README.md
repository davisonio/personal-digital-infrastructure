## ANXS - timezone [![Build Status](https://travis-ci.org/ANXS/timezone.png)](https://travis-ci.org/ANXS/timezone)

Ansible role for setting/updating the timezone


#### Requirements & Dependencies
- Tested on Ansible 1.3 or higher.


#### Variables

```yaml
timezone_zone: UTC          # valid tz database string
```

For a list of valid strings, check [this](http://en.wikipedia.org/wiki/List_of_tz_database_time_zones).


#### Testing
This project comes with a VagrantFile, this is a fast and easy way to test changes to the role, fire it up with `vagrant up`

See [vagrant docs](https://docs.vagrantup.com/v2/) for getting setup with vagrant


#### License

Licensed under the MIT License. See the LICENSE file for details.


#### Feedback, bug-reports, requests, ...

Are [welcome](https://github.com/ANXS/timezone/issues)!
