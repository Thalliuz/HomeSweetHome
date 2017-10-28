class IssuesController < ActionController::Base
  layout "application"
  
  def index
    @issues = Issue.all
  end

  def show
    id = session[:user_id]
    @issues = User.find(id).issues
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
      redirect_to "/users/#{@user.id}"
    else
      render "new"
    end
  end
end

private

def issue_params
  params.require(:issue).permit(:name, :address, :detail, :user_id, :owner_id)
end
