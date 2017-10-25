class IssuesController < ActionController::Base
  layout "application"
  
  def show
    @issues = Issue.all
  end
  
  def new
    @issue = Issue.new
  end

  def create
    @issue = Issue.new(issue_params)

      render 'new'
    end
end

private

def issue_params
  params.require(:issue).permit(:name, :address,  :number, :detail)
end
