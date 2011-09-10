module Rails
  def self.root
    File.join(Dir.pwd, 'tmp')
  end

  def self.env
    @@environment ||= 'development'
  end

  def self.env=(env)
    @@environment = env
  end

  def self.application
    @@application ||= Struct.new(:paths).new(Hash.new([]))
  end
end

ActiveSupport::Inflector.inflections do |inflect|
  inflect.plural /^beta$/i, 'betas'
  inflect.singular /^betas$/i, 'beta'
end