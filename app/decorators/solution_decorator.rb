class SolutionDecorator < Draper::Decorator
  delegate_all

  def file
    if object.solution_file.present?
      h.content_tag :br do
        h.content_tag :p do
          h.content_tag(:b, "Solution file: ") +
            h.link_to(object.solution_file_file_name, object.solution_file.url)
        end
      end
    end
  end

end
