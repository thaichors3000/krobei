module ApplicationHelper
  def navbar_items
    [
      { title: 'Home', path: root_path },
      { title: 'Teachers', path: teachers_path },
      { title: 'Students', path: students_path },
      { title: 'Courses', path: courses_path }
    ]
  end
end
