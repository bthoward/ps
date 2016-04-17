$query = "select startname, name from win32_service"
gcim -Query $query |
Sort-Object startname, name |
fl name, startname