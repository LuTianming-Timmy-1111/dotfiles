dev() {
    if [ "$PWD" = "$HOME" ]; then
        echo "dev: 当前在家目录，先 cd 到项目目录再dev"
        return 1
    fi
    local envopt=""
    if [ -f .env ]; then
        envopt="--env-file .env"
        echo "dev: 已加载 .env"
    fi
    docker run -it --rm -v "$PWD":/app -w /app \
        -e HTTPS_PROXY=http://192.168.150.1:7897 \
        $envopt python:3.12-slim bash
}
