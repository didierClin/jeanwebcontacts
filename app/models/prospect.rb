class Prospect < ApplicationRecord

  def self.import(file)
    spreadsheet = open_spreadsheet(file)
    CSV.foreach(file.path, headers: true) do |row|
      Prospect.create! row.to_hash
    end
    # header = spreadsheet.row(1)
    # (2..spreadsheet.last_row).each do |i|
    #   row = Hash[[header, spreadsheet.row(i)].transpose]
    #   prospect = find_by_id(row["id"]) || new
    #   prospect.attributes = row.to_hash.slice(*accessible_attributes)
    #   prospect.save!
    # end
  end

  def self.open_spreadsheet(file)
    case File.extname(file.original_filename)
    when ".csv" then Roo::CSV.new(file.path, packed: nil, file_warning: :ignore)
    when ".xls" then Roo::Excel.new(file.path, packed: nil, file_warning: :ignore)
    when ".xlsx" then Roo::Excelx.new(file.path, packed: nil, file_warning: :ignore)
    else raise "Unknown file type: #{file.original_filename}"
    end
  end

end