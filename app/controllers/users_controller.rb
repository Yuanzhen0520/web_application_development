class UsersController < ApplicationController
    include CurrentCart
before_action :set_cart
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

    def show
        render json: @current
    end

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_params
      params.require(:user).permit(:name, :password)
    end
end
