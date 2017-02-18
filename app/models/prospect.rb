class Prospect < ApplicationRecord
  max_paginates_per 10

  # Export data as CSV data file
  def self.to_csv(options = {})
    CSV.generate(options) do |csv|
      csv << column_names
      all.each do |prospect|
        csv << prospect.attributes.values_at(*column_names)
      end
    end
  end

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      prospect = find_by(id: row["id"]) || new
      prospect.attributes = row.to_hash.slice(*row.to_hash.keys)
      # accessible attribute don't work in rails 4
      #   prospect.attributes = row.to_hash.slice(*accessible_attributes)
      prospect.save!
    end
    # spreadsheet = open_spreadsheet(file)
    # header = spreadsheet.row(1)
    # (2..spreadsheet.last_row).each do |i|
    #   row = Hash[[header, spreadsheet.row(i)].transpose]
    #   prospect = find_by_id(row["id"]) || new
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
