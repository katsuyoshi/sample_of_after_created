class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    controller = MyFriendsTableViewController.alloc.initWithStyle UITableViewStylePlain
    controller.friends = ["Amuro Ray", "Char Aznable", "Matilda Ajan"]
    @window.rootViewController = controller
    @window.makeKeyAndVisible
    true
  end
end
