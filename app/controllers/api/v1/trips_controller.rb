module Api
	module V1
		class TripsController < ApplicationController
			
			before_action :find_trip


			def create
				@drivers = Driver.where('latitude >= ? AND latitude <= ? AND longitude >= ? AND longitude <= ?',latitude-10,latitude+10,longitude-10,longitude+10)
				if @driver.nill?
					redirect_to trips_path
				end
			end
			
			#def find_my_ride
				#@driver = @rider.driver.where('latitude >= ? AND latitude <= ? AND longitude >= ? AND longitude <= ?',latitude-10,latitude+10,longitude-10,longitude+10)
			#end

			private
				def find_trip
					@rider = Rider.find_by_access_token(params[:access_token])
					#if !Rider.find_by_access_token(params[:access_token])
						#redirect_to a path where we can show that he is a invalid rider
						

				end

		end
		
	end
end
