for file in ./*.json
do
  name=${file##*/}
  base=${name%.json}
  mongoimport --db tpch --collection "${base}" --file ./"${base}.json" --jsonArray
done