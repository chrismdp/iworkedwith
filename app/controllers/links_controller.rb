class LinksController < ResourceController::Base
  belongs_to :user
  create.wants.html do
    redirect_to user_links_path(@user)
  end
private
  def build_object
    p params[:link]
    new_user = User.find_by_email(params[:link][:person_2_id])
    @object ||= end_of_association_chain.build(:person_2_id => new_user.id, :comment => params[:link][:comment])
  end
end
