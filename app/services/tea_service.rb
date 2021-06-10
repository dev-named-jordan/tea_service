# class TeaService
#   def self.conn
#     Faraday.new(url: 'https://tea-api-vic-lo.herokuapp.com/#')
#   end
#
#   def self.parse(response)
#     JSON.parse(response.body, symbolize_names: true)
#   end
#
#   def self.get_tea(teas)
#     response = conn.get('') do |f|
#       f.params['tea'] = tea
#     end
#     parse(response)
#   end
# end
