module LicenseTypesHelper
  def license_symbol(bool)
    if bool
      "<td><i class='fas fa-check' , style='color:#008000;'></i></td>".html_safe
    else
      "<td><i class='far fa-times-circle' , style='color:#FF0000;'></i></td>".html_safe
    end
  end

  def cut_down_desc(description)
    desc_arr = description.body.split(' ')
    if desc_arr < 25
      return desc_arr.slice(0, 25).push('...').join(' ')
    end
  end
end
