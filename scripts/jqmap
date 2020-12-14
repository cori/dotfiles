jq 'select(objects)|=[.] | map( paths(scalars) ) | map( map(select(numbers)="[]") | join(".")) | unique'
