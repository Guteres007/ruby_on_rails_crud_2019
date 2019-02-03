class Tag < ApplicationRecord
    self.table_name = "tagy"
    belongs_to :nemovitost, class_name: "Nemovitost", foreign_key: "nemovitost_id"
end
