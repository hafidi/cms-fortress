module Cms
  module Fortress

    module ApplicationHelper

      def admin_page?
        controller_name.eql?('admin') && %w{settings roles users}.include?(action_name) ||
          controller_name.eql?('sites') && %w{index}.include?(action_name) ||
          controller_name.eql?('roles')
      end

      def design_page?
        controller_name.eql?('admin') && %{design}.include?(action_name) ||
          controller_name.eql?('layouts') ||
          controller_name.eql?('snippets')
      end

      def content_page?
        controller_name.eql?('pages') ||
          controller_name.eql?('files')
      end

    end
  end
end

