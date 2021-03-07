    <%= form_tag('/tweets/#{tweet.id}/update', method: :get ) do %>
      <div class = "upnames">
      <p>名前を入力してください</p>
      <input class = "upname" type="text" name="name">
      </div>

      <div class = "uptext">
       <p>文字をいれてください</p>
      <input class = "uptextbox" type="text" name="text">
      </div>

      <div class = "upimages">
      <p>画像のURLを入力してください</p>
      <input class = "upimage" type="src" name="image">
      <div>
   <input  class = "upsubmit" type="submit" value="更新">
<% end %>

  <div class="nickname">
    <%= f.label :nickname %><br />
    <%= f.nickname_field :nickname, autofocus: true, autocomplete: "nickname" %>
  </div>

&& current_user.id == tweet.user_id