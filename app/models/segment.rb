class Segment <ActiveRecord::Base
 has_many :dnt_platforms, dependent: :destroy
end
