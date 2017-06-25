class OmniauthCallbacksController < Devise::OmniauthCallbacksController 
	def facebook
	binding.pry 
		unless auth.credentials.token.blank? 
			current_user.create_facebook_access_token(
			{
				:access_token => auth.credentials.token, 
				:email => auth.info.email, 
				:political => auth.extra.raw_info.political, 
				:religion => auth.extra.raw_info.religion, 
				:uid => auth.uid
			}
			) if current_user.facebook_access_token.blank?

		else
			flash[:alert] = 'You need to permit the app to access your facebook credential'
		end
		redirect_to root_path
	end
end