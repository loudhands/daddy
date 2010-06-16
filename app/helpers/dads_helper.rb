module DadsHelper
  def facebook_share(link)
    %{<a href="http://www.facebook.com/sharer.php?u=#{link}&t='Who is your daddy and what does he do?'">Facebook!</a>}
  end
  
  def twitter_share(link)
    %{<a href="http://www.twitter.com/home?status=Who+is+you+daddy+and+what+does+he+do?+#{Dad.make_bitly_from(link)}">Twitter!</a>}
  end
end
