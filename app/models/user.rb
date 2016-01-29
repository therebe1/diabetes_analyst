class User < ActiveRecord::Base
  
  has_secure_password
  has_many :patient_measurements
  has_many :patient_foods
  has_many :patient_medications

  validates :username, :first_name, :last_name, :email, presence: true



  def extract_blood_sugar
    PatientMeasurement.all.each do |measurement|
  dates << measurement.measurement_time.mday
  values << measurement.blood_sugar_level
end
data = []
data << dates
data << values
    
  end


  

end