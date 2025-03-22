# adds alias for "kubectl" to "kubecolor" with completions
function kubectl --wraps kubectl
    command kubecolor $argv
end
