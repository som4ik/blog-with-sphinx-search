module CommentsHelper
def nested_comments(comments)
     comments.map do |comment, sub_comments|
       content_tag(:div, render(comment), :class => "col-md-offset-1")
     end.join.html_safe
   end
end
