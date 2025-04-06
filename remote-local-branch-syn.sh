for remote_branch in $(git branch -r | grep -v 'HEAD'); do
  local_branch=${remote_branch#origin/}
  if ! git show-ref --quiet refs/heads/$local_branch; then
    git branch --track $local_branch $remote_branch
  fi
done

