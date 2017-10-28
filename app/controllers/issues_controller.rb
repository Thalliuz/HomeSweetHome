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
    @issue = Issue.new
  end

  def create
    @issue = Issue.new(issue_params)

      render 'new'
    end
end

private

def issue_params
  params.require(:issue).permit(:name, :address, :number, :detail)
end
