target "default" {
  context = "."
  dockerfile = "Dockerfile"
  tags = [
    "gord/hello:latest",
  ]
  attest = [
    "type=provenance,mode=max",
    "type=sbom",
  ]
  platforms = [
    "linux/amd64",
    "linux/arm64",
  ]
}