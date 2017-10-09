class ButtonTestController < UIViewController

  def viewDidLoad
    button = GIDSignInButton.alloc.initWithFrame(CGRectMake(100, 100, 100, 50))
    button.style = KGIDSignInButtonStyleWide
    view.addSubview(button)
    super
  end

end