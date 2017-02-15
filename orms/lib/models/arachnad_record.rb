class ArachnidRecord
  def self.column_names
    column_info = DB[:conn].execute("PRAGMA table_info(#{table_name});")
    column_info.map {|column| column.fetch("name")}
  end

  def self.table_name
    "#{self.to_s.downcase}s"
  end

  def initialize(args)
    args.each do |attribute, value|
      raise "Unknown Key: #{attribute}" unless self.class.column_names.include?(attribute)
      instance_variable_set("@#{attribute}".to_sym, value)
    end
  end

  def self.all
    results = DB[:conn].execute(<<-SQL)
    SELECT *
    FROM #{table_name}
    SQL
    results.map do |row_set|
      self.new_from_row_set(row_set)
    end
  end

  def self.new_from_row_set(row_set)
    row_set = row_set.reject {|k, _| k.is_a? Integer }
    self.new(row_set)
  end

end
