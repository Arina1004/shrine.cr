require "./base"

require "awscr-s3"

class Shrine
  module Storage
    class S3 < Storage::Base
      getter bucket : String
      getter client : Awscr::S3::Client

      def initialize(@bucket : String, @client : Awscr::S3::Client?, @prefix : String? = nil)
        @client ||= Awscr::S3::Client.new("us-east1", "key", "secret")
      end

      def upload(io, id : String, move = false, **options)
      end

      def open(id, **options)
      end

      def url(id, **options)
      end

      def exists?(id)
      end

      def delete(id)
      end

      def clean(path)
      end
    end
  end
end
