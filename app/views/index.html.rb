 
<h1>Teachers</h1>
<% @teachers.each do |teacher| %>
  <p>
    <strong>Name:</strong>
    <%= teacher.name %><br>
    <strong>Subject:</strong>
    <%= teacher.subject %>
    <%= link_to 'Show', teacher %>
    <%= link_to 'Edit', edit_teacher_path(teacher) %>
    <%= link_to 'Destroy', teacher, method: :delete, data: { confirm: 'Are you sure?' } %>
  </p>
<% end %>
<%= link_to 'New Teacher', new_teacher_path %>
