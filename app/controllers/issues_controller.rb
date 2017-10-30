class IssuesController < ActionController::Base
  layout "application"
  require 'twilio-ruby'
  
  def index
    @issues = Issue.all
  end

  def show
    id = params[:id]
    @issue = Issue.find(id)  
  end
  
  def new
    @user = User.find(session[:id])
    @issue = Issue.new
  end

  def create
    @user = User.find(session[:id])
    @issue = Issue.new(issue_params)
    if @issue.save
      twilio_call
      redirect_to "/users/#{@user.id}"
    else
      render "new"
    end
  end
  
  def edit 
  end 

  def update 
    id = params[:issue][:id]
    @issue = Issue.find(id)
    @issue.update_attributes issue_params
    twilio_call
    redirect_to "/owners/#{@issue.owner_id}"
  end 

  def destroy
    id = params[:id]
    @issue = Issue.find(id)
    @user = User.find(@issue.user_id)
    @issue.destroy
    redirect_to "/users/#{@user.id}"
  end
end


private

def twilio_call
  account_sid = ENV['ACCOUNT_SID']
  auth_token = ENV['AUTH_TOKEN']

  @client = Twilio::REST::Client.new account_sid, auth_token
  if session[:type] == "user"
    id = @user.owner_id
    @owner_number = Owner.find(id).phonenumber
    @client.api.account.messages.create(
      from: '+18566662318',
      to: "+1#{@owner_number}",
      body: "This is Home Sweet Home letting you know that your property #{@user.address}, has a new issue: #{@issue.detail}"
    )
  else
    id = @issue.user_id
    @user = User.find(id)
    @user_number = User.find(id).phonenumber
    @client.api.account.messages.create(
      from: '+18566662318',
      to: "+1#{@user_number}",
      body: "This is Home Sweet Home! The progress of your issue at #{@user.address} is now #{@issue.status}"
    )
  end 
end
def issue_params
  params.require(:issue).permit(:name, :address, :detail, :user_id, :owner_id, :status, :id)
end
