class Nemovitost < ApplicationRecord
    self.table_name = "nemovitosti"

    has_many :tagy, class_name: "Tag"
    accepts_nested_attributes_for :tagy
    validates_presence_of :tagy, message: "can't be blank"
end
