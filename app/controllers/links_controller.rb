class LinksController < ResourceController::Base
  belongs_to :user
  create.wants.html do
    redirect_to user_links_path(@user)
  end
private
  def build_object
    link = params[:link]
    @object ||= link_user_to(link[:person_2_id], link[:comment])
  end
  def link_user_to(this_person, comment)
    end_of_association_chain.build(:comment => comment, :person_2 => User.find_by_email(this_person))
  end
end
