module DadsHelper
  def facebook_share(link)
    %{<a href="http://www.facebook.com/sharer.php?u=#{link}&t='Who is your daddy and what does he do?'">Facebook!</a>}
  end
  
  def twitter_share(link)
    %{<a href="http://www.twitter.com/home?status=Who+is+you+daddy+and+what+does+he+do?+#{Dad.make_bitly_from(link)}">Twitter!</a>}
  end
  
  def email_share(link)
    %{<a href="mailto:?subject=Dads!%20&body=Check%20out%20my%20dad:%20#{link}">Email This</a>}
  end
end
