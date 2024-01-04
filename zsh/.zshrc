#PROMPT='%(?.%F{green}√.%F{red}?%?)%f %B%F{240}%1~%f%b %# '
PROMPT='%n %(?.%F{green}√.%F{red}?%?)%f %B%F{45}%~%f%b %# '

#export TERM=xterm-256color

function seecertsan () {
  nslookup $1
  (openssl s_client -showcerts -servername $1 -connect $1:443 <<< "Q" | openssl x509 -text | awk '/Validity/ {print "\nValidity";getline;gsub(/^[ \t]+/,"");print;getline;gsub(/^[ \t]+/,"");print} /Subject\ Alternative\ Name/ {print "\nSAN";getline;gsub(/^[ \t]+/,"",$0);gsub(/, /,"\n");print}')
}

n macfeh() {
    open -b "drabweb.macfeh" "$@"
}

#export PATH="$HOME/Library/Python/3.8/bin:$HOME/.gem/ruby/2.6.0/bin:$PATH"
# aliases
source ~/.aliases
export PATH="/usr/local/sbin:$PATH"
