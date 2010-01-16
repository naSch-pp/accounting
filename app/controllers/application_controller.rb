# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
	helper :all # include all helpers, all the time
	helper_method :current_user_session, :current_user
	before_filter :require_user, :load_settings
	protect_from_forgery # See ActionController::RequestForgeryProtection for details
	filter_parameter_logging :password, :password_confirmation, :api_key, :api_secret

	layout "main", :except => [ :rss, :atom ]
	
	def permission_denied 
		respond_to do |format| 
			format.html do 
				flash[:error] = "Permission denied!" 
				redirect_to root_url and return 
			end 
			format.xml { render :text => "Not Authorized", :status => :forbidden }
		end 
	end
	
	def load_settings
		@settings = Setting.first
		session[:settings] = @settings
	end
		
	private
		def current_user_session
		  return @current_user_session if defined?(@current_user_session)
		  @current_user_session = UserSession.find
		end
		
		def current_user
		  return @current_user if defined?(@current_user)
		  @current_user = current_user_session && current_user_session.record
		end
		
		def require_user
		  unless current_user
			store_location
			flash[:error] = "You must be logged in to access this page"
			redirect_to login_url
			return false
		  end
		end

		def require_no_user
		  if current_user
			store_location
			flash[:error] = "You must be logged out to access this page"
			redirect_to root_url
			return false
		  end
		end
		
		def store_location
		  session[:return_to] = request.request_uri
		end
		
		def redirect_back_or_default(default)
		  redirect_to(session[:return_to] || default)
		  session[:return_to] = nil
		end
end
