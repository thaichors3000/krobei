module ApplicationHelper
  def navbar_items
    [
      { title: t('title.home'), path: root_path },
      { title: t('title.teachers'), path: teachers_path },
      { title: t('title.students'), path: students_path },
      { title: t('title.courses'), path: courses_path }
    ]
  end
  
  def link_to_icon(path, **options)
    link_to path, class: "btn btn-sm btn-outline-#{options[:type]}", **options.except(:type, :icon) do
      icon 'fas', options[:icon]
    end
  end
end
