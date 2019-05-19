class HomeController < ApplicationController
  def index
    emp=Employee.all
    item=Item.all
    prev=PreviousHolder.all
  end
end
