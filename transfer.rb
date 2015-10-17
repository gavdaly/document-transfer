#!/usr/bin/env ruby

require 'csv'
require 'fileutils'


# Import csv file of the ID mappings
csv_text = File.read('IDMappings.csv')
csv = CSV.parse(csv_text, :headers => true)
ids = []
csv.each do |row|
  ids << row.to_hash
end

puts ids.length

Dir.chdir 'Data'

DOCUMENTS = Dir['**/']

DOCUMENTS.each do |d|
  old_pat_id = d.gsub('/', '').gsub('PN', '')

  # Gets rid of the partial directories
  if old_pat_id.length == 5

    # Gets rid of the leading zeros to compare to data
    id = old_pat_id.to_i.to_s

    ids.each do |set|
      if set['abeldent'] == id

        #Move the last directory if the ID to the base directory with the new id
        FileUtils.mv d, set['maxident']
      end
    end
  end
end
