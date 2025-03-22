# reuse "kubectl" completions on "kubecolor"
function kubecolor --wraps kubectl
    command kubecolor $argv
end
