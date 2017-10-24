class IssuesController < ActionController::Base
  def show
    id = params[:id]
    issue = Issue.find(id)
    @issue_address = issue.address
    @issue_details = issue.details
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
