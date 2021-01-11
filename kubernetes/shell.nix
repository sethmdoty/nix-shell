
with import <nixpkgs> { };

stdenv.mkDerivation {
  name = "k8s";
  buildInputs = [
    kubectl
    kubernetes-helm
    minikube
    kubectx
  ];
  shellHook = ''
    kubectl proxy &
    alias dashboard="xdg-open http://localhost:8001/api/v1/namespaces/kube-system/services/https:kubernetes-dashboard:/proxy/"
  '';
}
