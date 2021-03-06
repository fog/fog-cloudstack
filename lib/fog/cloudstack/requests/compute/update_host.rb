module Fog
  module Cloudstack
    class Compute

      class Real
        # Updates a host.
        #
        # {CloudStack API Reference}[http://cloudstack.apache.org/docs/api/apidocs-4.4/root_admin/updateHost.html]
        def update_host(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'updateHost') 
          else
            options.merge!('command' => 'updateHost', 
            'id' => args[0])
          end
          request(options)
        end
      end

    end
  end
end

