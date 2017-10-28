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
    p @user
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
end


private

def twilio_call
  account_sid = ENV['ACCOUNT_SID']
  auth_token = ENV['AUTH_TOKEN']

  @client = Twilio::REST::Client.new account_sid, auth_token

  @client.api.account.messages.create(
    from: '+18566662318',
    to: '+18564724210',
    body: 'Hey there!'
  )
end 

def issue_params
  params.require(:issue).permit(:name, :address, :detail, :user_id, :owner_id)
end
