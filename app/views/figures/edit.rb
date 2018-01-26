<h1>Edit <%= @figure.name %></h1>

<form action="/figures/<%= @figure.id %>" method="post">
  <input type="hidden" name="_method" value="patch">

  <label for="name">Name:</label>
  <input type="text" name="figure[name]" id="figure_name" value="<%= @figure.name%>">
  <br>
  <label>Title(s):</label>
  <% Title.all.each do |title| %>
    <input type="checkbox" name="figure[title_ids][]" id="title_<%=title.id%>" value="<%=title.id%>" <%='checked' if @figure.titles.include?(title) %>>
    <%=title.name%></input>
  <%end%>
  <br>
  <label>And/or create a new title:</label>
  <input type="text" name="title[name]" id="new_title">
  <br></br>
  <label>Select landmarks(s):</label>
  <% Landmark.all.each do |landmark| %>
    <input type="checkbox" name="figure[landmark_ids][]" id="landmark_<%=landmark.id%>" value="<%=landmark.id%>" <%='checked' if @figure.landmarks.include?(landmark) %>>
    <%=landmark.name%></input>
  <%end%>
  <br>
  <label>And/or create a new landmark:</label>
  <input type="text" name="landmark[name]" id="new_landmark" placeholder="Name">
  <input type="text" name="landmark[year_completed]" placeholder="Year Completed">
  <br></br>
  <input type="submit" value="Edit Figure">
</form>
