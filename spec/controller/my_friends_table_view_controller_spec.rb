# -*- coding: utf-8 -*-
describe MyFriendsTableViewController do
  tests MyFriendsTableViewController, after_created: :after_created_controller
  
=begin # It won't be success
  before do
    controller.friends = ["Amuro Ray", "Char Aznable", "Matilda Ajan"]
  end
=end

  def after_created_controller controller
    controller.friends = ["Amuro Ray", "Char Aznable", "Matilda Ajan"]
  end  

  it "should have 3 rows" do
    controller.tableView(controller.tableView, numberOfRowsInSection:0).should == 3
  end

end
