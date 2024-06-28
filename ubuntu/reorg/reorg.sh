# useful for salvaging a virtual environment

for f in *.sh; do
  OLD=$f
  NEW=${f//install-/}
  NEW=${NEW//.sh/}
  mkdir "$NEW"
  git mv $f $NEW
done