class AccessController < ApplicationController
    before_action :set_cart, only: %i[ show edit update destroy ]

    include CurrentCart
  before_action :set_cart
    def login
    end

    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)

        respond_to do |format|
            if @user.save
              format.html { redirect_to user_url(@user), notice: "User was successfully created." }
              format.json { render :show, status: :created, location: @user }
            else
              format.html { render :new, status: :unprocessable_entity }
              format.json { render json: @user.errors, status: :unprocessable_entity }
            end
        end
    end

    def authenticate
        # p [params[:userid], params[:password]]
        @userid = params[:userid]
        @password = params[:password_hash]
        if params[:userid] == "remy" && params[:password_hash] == "12345"
            render(:welcome)
        else
            flash[:notice] = "login failed"
            redirect_to '/login'
        end
        
        if params[:username] = @user.name && @password == @user.password_hash
            render(:welcome)
        else
            flash[:notice] = "login failed"
            redirect_to '/login'
        end
    end

    def logout
        flash[:notice] = "logged out"
        redirect_to '/access/login'
    end

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_params
      params.require(:user).permit(:name, :password_hash)
    end
end