# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: registry/ingest/ingest.proto

require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("registry/ingest/ingest.proto", :syntax => :proto3) do
    add_message "ingest.IngestRequest" do
      optional :har, :string, 1
      optional :path_hint, :string, 2
      optional :api_id, :string, 3
      optional :version_id, :string, 4
      optional :customer_id, :string, 5
      optional :masking_metadata, :message, 6, "ingest.IngestRequest.MaskingMetadata"
    end
    add_message "ingest.IngestRequest.MaskingMetadata" do
      map :request_header_masks, :string, :string, 1
      map :request_cookie_masks, :string, :string, 2
      map :request_field_masks_string, :string, :string, 3
      map :request_field_masks_number, :string, :string, 4
      map :response_header_masks, :string, :string, 5
      map :response_cookie_masks, :string, :string, 6
      map :response_field_masks_string, :string, :string, 7
      map :response_field_masks_number, :string, :string, 8
      map :query_string_masks, :string, :string, 9
    end
    add_message "ingest.IngestResponse" do
    end
  end
end

module Ingest
  IngestRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("ingest.IngestRequest").msgclass
  IngestRequest::MaskingMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("ingest.IngestRequest.MaskingMetadata").msgclass
  IngestResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("ingest.IngestResponse").msgclass
end
