# -*- coding: utf-8 -*-
class MyFriendsTableViewController < UITableViewController
  attr_accessor :friends # Array

  def tableView tableView, numberOfRowsInSection:section
    friends.size
  end

  CellIdentifier = "Cell"
  def tableView tableView, cellForRowAtIndexPath:indexPath
    cell = tableView.dequeueReusableCellWithIdentifier CellIdentifier
    cell ||= UITableViewCell.alloc.initWithStyle UITableViewCellStyleDefault, reuseIdentifier:CellIdentifier
    cell.textLabel.text = friends[indexPath.row]
    cell
  end

end
