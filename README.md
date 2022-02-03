_form.html.erb
<div class="container">
    <% if @article.errors.any? %>
        <h3>Errors:</h3>
        <ul>
            <% @article.errors.full_messages.each do |a| %>
                <li><%= a %></li>
            <% end %>
        </ul>
    <% end %>

    <div class="row justify-content-center">
        <div class="col-10">
            <%= form_with(model: @article, class: "shadow mb-3 bg-info mt-4 rounded",  local: true) do |f| %>
                <div class="form-group row mt-4">
                        <%= f.label :title, class: "col-2 col-form-label" %>
                        <%= f.text_field :title, class: "col-8 form-control" %>
                </div>
                <div class="form-group row">
                    <%= f.label :description, class: "col-2 col-form-label" %> </br>
                    <%= f.text_area :description, rows: 5, class: "col-8 form-control" %>
                </div>
                <div class="form-group row justify-content-center">
                    <%= f.submit class: "btn btn-outline-light btn-lg"%>
                </div>
            <% end %>
        </div>
        <%= link_to '[ Cancel and return to articles listing ]', articles_path, class: "text-info" %>
    </div>
</div>

new.html.erb
<div id="page-content">
    <h1 class='text-center mt-4'>Create New Article</h1>

    <%= render 'form' %>
<div id="page-content">


edit.html.erb
<div id="page-content">
    <h1 class='text-center mt-4'>Edit Article</h1>
    <%= render 'form' %>
    
</div>