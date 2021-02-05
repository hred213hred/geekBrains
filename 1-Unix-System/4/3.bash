# shellcheck disable=SC2045

createDir=$( (mkdir -p example/{2010..2017}/{01..12}))
pathToDirExample="$(pwd)/example"

for dirYear in $(cd $pathToDirExample && ls); do
  dirYearFull="$pathToDirExample/$dirYear"

  for dirMonth in $(cd $dirYearFull && ls); do
    dirMonthFull="$dirYearFull/$dirMonth"

    for fileName in {001..005}; do
      echo "Файл $fileName" > "$dirMonthFull/$fileName.txt"
    done

  done

done
