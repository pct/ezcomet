require "ezcomet/version"
require 'curb'
require 'json'

module Ezcomet
  @ezcomet_write_url = 'http://api.ezcomet.com/write'

  def self.push(api_key, user_name, channel, msg)
    data = {:qname => "#{user_name}-#{channel}", :api_key => api_key, :msg => msg}

    http = Curl.post @ezcomet_write_url, data
    ret = JSON.parse http.body_str

    return false if 'ok' != ret['code']
    ret['tick']

  end

  def self.flush(api_key, user_name, channel)
    data = {:qname => "#{user_name}-#{channel}", :api_key => api_key, :flush => 1}

    http = Curl.post @ezcomet_write_url, data
    ret = JSON.parse http.body_str

    return false if 'ok' != ret['code']
    ret['code']

  end

end
