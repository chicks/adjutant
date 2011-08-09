module ApplicationHelper
  def draw_identity_map_for(user)
    html = ""
    user.flatten_identities.each_pair do |context, entry|
      html << "<h1>#{context}</h1>"
      html << "<ul>"
      entry.each_pair do |user_name,accounts|
        html << "  <li>#{user_name}</li>"
        html << "  <li>"
        html << "    <ul>"
        accounts.each do |account|
          html << "      <li>"
          html << "        <span>#{account[:provider]}</span>"
          html << "        <span>Last Sync: #{time_ago_in_words(account[:last_sync])} ago</span>"
          html << "      </li>"
        end
        html << "    </ul>"
        html << "  </li>"
      end
      html << "</ul>"
    end
    html
  end
end
