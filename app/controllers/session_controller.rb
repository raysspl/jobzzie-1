class SessionController < ApplicationController
  # POST /login -> log user in and redirect to profile
  def create
  	# if email is blank
  	if params[:user][:email].blank?
  		# rerender form with error message
  		flash.now[:error] = "You must enter an email address."
  		render controller: :site, action: :index
  	# else
	else
  		# if user exists (find by email)
  		if @user = User.find_by(email: params[:user][:email])
  			# if password is blank
  			if params[:user][:password].blank?
  				# set user code and expires_at
  				@user.code = SecureRandom.urlsafe_base64
  				@user.expires_at = Time.now + 4.hours
  				# TODO: send password reset email with a coded link

  				# redirect back to login with message
  				redirect_to root_url, notice: "An email with a reset link has been sent."
  			# else
	  		else
  				# if user is authenticated (user.authenticate(password))
  				if @user.authenticate(params[:user][:password])
  					# set the session[:user_id]
  					session[:user_id] = @user.id
  					# if user is a student
  					if @user.kind_of?(Student)
  						# redirect_to the student profile page
  						redirect_to student_profile_path
  					# else
	  				else
  						# redirect_to the employer profile page
  						redirect_to employer_profile_path
  					end
  				# else
	  			else
  					# rerender the form with error message
  					render controller: :site, action: :index, error: "Log in failed. Please check email and password and try again."
  				end
			end
  		# else
	  	else
  			# create a new registrant with email address
  			@registrant = Registrant.new(email: params[:user][:email])
  			# set code and expires_at
  			@registrant.code = SecureRandom.urlsafe_base64
			@registrant.expires_at = Time.now + 4.hours
			@registrant.save
  			# TODO: send registration email with coded link

  			# redirect back to login with message
  			redirect_to root_url, notice: "A registration email has been sent."
  		end
	end
  end

  # DELETE/GET -> log user out and redirect to login page (root)
  def destroy
  end
end
