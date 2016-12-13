class UsercontrollerController < ApplicationController

def index

@user_details = UserDetail.all

end

   def new
      @user_detail = UserDetail.new
      @users = User.all
   end

   def user_detail_params
      params.require(:user_details).permit(:name, :user_id, :age, :sex, :mobile_number,:salary )

   end
def create
      @user_detail = UserDetail.new(user_detail_params)

      if @user_detail.save
         redirect_to :action => 'index'
      else
         @users = User.all
         render :action => 'new'
      end
   end


 def show
      @user_detail = UserDetail.find(params[:id])


def invoice   
#cccc 
   respond_to do |format|
#      format.html
      format.pdf do
        render pdf: "show.pdf",
       :dispostion => "inline",
       :template   => "usercontroller/show.pdf.erb"
      end
   format.html
    end
end


 


end
end


