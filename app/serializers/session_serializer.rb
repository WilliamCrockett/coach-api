class SessionSerializer < ActiveModel::Serializer
  attributes :id, :program, :session_date, :session_rating, :helm, :crew, :wind_dir, :wind_strength, :chop, :objective_1, :objective_2, :objective_3, :objective_4, :objective_5, :session_report, :boat_maint, :boat_maint_info
end
