def magnetic(field, click)
  a = field[:position]
  b = click
  if (((a[0] - b[0])**2) + ((a[1] - b[1])**2)) > field[:radius] ** 2
    return click
  end

  field[:position]
end
