# yar [![Ruby specs](https://github.com/ruby-api-client/yar/actions/workflows/ci.yml/badge.svg)](https://github.com/ruby-api-client/yar/actions/workflows/ci.yml) [![Gem Version](https://badge.fury.io/rb/yar.svg)](https://badge.fury.io/rb/yar) ![GitHub](https://img.shields.io/github/license/ruby-api-client/yar) [![Coverage Status](https://coveralls.io/repos/github/ruby-api-client/yar/badge.svg?branch=main)](https://coveralls.io/github/ruby-api-client/yar?branch=main) ![Gem](https://img.shields.io/gem/dt/yar)

Yandex.Rasp API - API Яндекс.Расписаний  
docs: <https://yandex.ru/dev/rasp/>  
gem: <https://rubygems.org/gems/yar>

## Install

```sh
gem install yar
```

## Example

```ruby

require "yar"

client = Yar::Client.new(token: ENV["YAR_ACCESS_TOKEN"])

# Копирайт Яндекс.Расписаний
client.copyright.info

# Список всех доступных станций
client.stations.list

# Список станций следования
client.stations.route(uid:)

# Список ближайших станций
client.nearest.station(lat:, long:, distance:)

# Ближайший город
client.nearest.city(lat:, long:)

# Расписание рейсов по станции
client.schedule.info(station:)

# Расписание рейсов между станциями
client.schedule.between(from:, to:)

# Информация о перевозчике
client.carrier.info(code:)

```
