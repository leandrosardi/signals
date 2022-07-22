# default screen
get "/signals", :agent => /(.*)/ do
    redirect2 "/signals/signup", params
end
get "/signals/", :agent => /(.*)/ do
    redirect2 "/signals/signup", params
end

# public screens (signup/landing page)
get "/signals/signup", :agent => /(.*)/ do
    erb :"/extensions/signals/views/signup"
end

# public screens (login page)
get "/signals/login", :agent => /(.*)/ do
    erb :"/extensions/signals/views/login", :layout => :"/views/layouts/public"
end

# internal app screens
get "/signals/plans", :auth => true, :agent => /(.*)/ do
    erb :"/extensions/signals/views/plans", :layout => :"/views/layouts/core"
end

get "/signals/searches", :auth => true, :agent => /(.*)/ do
    erb :"/extensions/signals/views/searches", :layout => :"/views/layouts/core"
end

get "/signals/results", :auth => true, :agent => /(.*)/ do
    erb :"/extensions/signals/views/results", :layout => :"/views/layouts/core"
end

get "/signals/results/:sid", :auth => true, :agent => /(.*)/ do
    erb :"/extensions/signals/views/results", :layout => :"/views/layouts/core"
end

get "/signals/exports", :auth => true, :agent => /(.*)/ do
    erb :"/extensions/signals/views/exports", :layout => :"/views/layouts/core"
end

get "/signals/filter_delete_search", :auth => true, :agent => /(.*)/ do
    erb :"/extensions/signals/views/filter_delete_search", :layout => :"/views/layouts/core"
end

# filters
post "/signals/filter_landing" do
    erb :"/extensions/signals/views/filter_landing"
end

post "/signals/filter_results", :auth => true do
    erb :"/extensions/signals/views/filter_results"
end

post "/signals/filter_save_search", :auth => true do
    erb :"/extensions/signals/views/filter_save_search"
end

post "/signals/filter_export_results", :auth => true do
    erb :"/extensions/signals/views/filter_export_results"
end

# AJAX 
# TODO: Code Me!

# API
# TODO: Code Me!


