# formatting
function format_branch_name() {
  ticket_name=${1//' '/'-'}
  formatted_branch=$2'/'$ticket_name:l
  echo $formatted_branch
  echo $formatted_branch | pbcopy
}
