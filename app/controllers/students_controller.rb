StudentController <ApplicationController
  def index
    @students = Student.all.limit(10)
  end