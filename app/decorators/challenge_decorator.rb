class ChallengeDecorator < Draper::Decorator
  delegate_all

  def file
    if object.challenge_file.present?
      h.content_tag :br do
        h.content_tag :p do
          h.content_tag(:b, "Challenge file: ") +
            h.link_to(object.challenge_file_file_name, object.challenge_file.url)
        end
      end
    end
  end

  def solution_area
    if h.owner_of_challenge?(object)
      if object.created?
        h.content_tag :div, :class => "pull-right" do
          h.link_to('Edit', h.edit_challenge_path(object), :class => "btn btn-primary")
        end
      end
    elsif solution = object.user_solution(h.current_user)
      h.content_tag :div, :id => "challenge_solution" do
        h.render 'solutions/show', :solution => solution
      end

    elsif object.active? and not h.owner_of_challenge?(object)
      h.content_tag :div, :id => "challenge_solution" do
        h.render 'add_solution', :challenge_id => object.id
      end
    end
  end
end
