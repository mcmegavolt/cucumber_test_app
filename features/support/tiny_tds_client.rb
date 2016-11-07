# TinyTds client
module TinyTdsClient
  def client
    @client ||= TinyTds::Client.new username: 'usr',
                                    password: 'pswd',
                                    host: 'mydb.host.net'
  end
end

World(TinyTdsClient)
