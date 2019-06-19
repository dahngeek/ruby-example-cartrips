class Driver < ApplicationRecord
    has_many :trips

    validates :first_name, :last_name, :document, :picture_url, :presence => true

    def full_name
        self.first_name + " " + self.last_name
    end

    def kilometers
        km_recorridos = 0
        self.trips.each do |viaje|
            km_recorridos += viaje.kilometers
        end
        km_recorridos
    end
end
