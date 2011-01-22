class SpreeMyNewsHooks < Spree::ThemeSupport::HookListener
  insert_after :admin_tabs do 
	%(<%=  tab(:news, { :route => "admin_newsitems" })  %>)
  end 
end
