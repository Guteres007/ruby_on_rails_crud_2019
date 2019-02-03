class Nemovitost < ApplicationRecord
    self.table_name = "nemovitosti"

    has_many :tagy, class_name: "Tag"
end
