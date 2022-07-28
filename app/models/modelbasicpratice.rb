class Modelbasicpratice < ApplicationRecord
	# include ActiveModel::AttributeMethods
 
	# attribute_method_prefix 'reset_'
	# attribute_method_suffix '_highest?'
	# define_attribute_methods 'age'
		 
	# attr_accessor :age
		 
	# private
 #    def reset_attribute(attribute)
 #      send("#{attribute}=", 0)
 #    end
 
 #    def attribute_highest?(attribute)
 #      send(attribute) > 100
 #    end
 # include ActiveModel::Conversion
 
 #  def persisted?
 #    false
 #  end
 
 #  def id
 #    nil
 #  end
 include ActiveModel::Dirty
  define_attribute_methods :first_name, :last_name
 
  def first_name
    @first_name
  end
 
  def first_name=(value)
    first_name_will_change!
    @first_name = value
  end
 
  def last_name
    @last_name
  end
 
  def last_name=(value)
    last_name_will_change!
    @last_name = value
  end
 
  def save
    # do save work...
    changes_applied
  end
end
