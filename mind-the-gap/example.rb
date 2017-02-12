require 'find'

pdf_file_paths = []
Find.find('.') do |path|
    if File.file?(path) and path =~ /.*\.pdf$/
      if File.mtime(path) > (Time.now - (60*120))
          pdf_file_paths << path if path =~ /.*\.pdf$/
      end
    end
end

puts pdf_file_paths
