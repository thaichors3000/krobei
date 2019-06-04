module ApplicationHelper
  def navbar_items
    [
      { title: t('entity.home'), path: root_path },
      { title: t('entity.teacher'), path: teachers_path },
      { title: t('entity.student'), path: students_path },
      { title: t('entity.course'), path: courses_path }
    ]
  end
  
  def link_to_icon(path, **options)
    data = { toggle: :tooltip, placement: :top }

    link_to path, class: "btn btn-sm btn-outline-#{options[:type]}", title: t("action.#{options[:icon]}"), data: data, **options.except(:type, :icon) do
      icon 'fas', options[:icon]
    end
  end

  def link_to_destroy(path, **options)
    data = {
      toggle: :tooltip,
      placement: :top,
      title: t("title.destroy", entity: t("entity.#{options[:entity]}")),
      confirm: t("title.confirm_destroy", entity: t("entity.#{options[:entity]}")),
      cancel: t('action.cancel'),
      commit: t('action.destroy')
    }

    link_to path, class: 'btn btn-sm btn-outline-danger', title: t('action.destroy'), method: :delete, data: data do
      icon 'fas', 'trash-alt'
    end
  end
end
