# how to replace a word?
#  awk '{gsub("Suraj","SURAJ"); print $0}' emp.txt -> replecement kar sakte ho gsub

#how to  length of line/filed
awk '{print $0, length($0)}' emp.txt

#index/position of a word in a given line.
# awk 'BEGIN {IGNORECASE=1} /Suraj/{print NR, $0}' emp.txt
# awk 'BEGIN {IGNORECASE=1} /Suraj/{print NR, index($0 , "Suraj")}' emp.txt

#print value of uppercase or lower case
# awk '{print toupper($5)}' emp.txt