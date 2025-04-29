kubelogs() {
  set -euo pipefail
  IFS=$'\n\t'

  local context namespace pod out

  # 1) Select context
  context=$(kubectl config get-contexts -o name \
    | fzf --height 10 --reverse --prompt="Select K8s Context> ")
  if [[ -z $context ]]; then
    echo "Canceled selecting context." >&2
    return 1
  fi
  kubectl config use-context "$context" >/dev/null

  # 2) Select namespace
  namespace=$(kubectl get namespaces -o jsonpath='{range .items[*]}{.metadata.name}{"\n"}{end}' \
    | fzf --height 10 --reverse --prompt="Select Namespace> ")
  if [[ -z $namespace ]]; then
    echo "Canceled selecting namespace." >&2
    return 1
  fi

  # 3) Select pod
  pod=$(kubectl get pods -n "$namespace" --no-headers -o custom-columns=NAME:.metadata.name \
      | fzf --height 15 --reverse --prompt="Select Pod> ")
  if [[ -z $pod ]]; then
    echo "Canceled selecting pod" >&2
    return 1
  fi

  # 4) Enter file name (default: <pod>.log)
  read -rp "Output file name [${pod}.log]: " out
  out=${out:-"${pod}.log"}

  echo "[$(date +'%F %T')] context=$context, namespace=$namespace, pod=$pod → $out"
  kubectl logs "$pod" -n "$namespace" --context "$context" > "$out"
  echo "Saved log: $out"
}
kubelogs
