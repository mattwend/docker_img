username=$(id -un)

docker run --rm -ti -h pylabs -p 8888:8888 \
    -v $HOME:$HOME \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    --env="DISPLAY" \
    --env="WAYLAND_DISPLAY" \
pylabs jupyter notebook --ip=0.0.0.0 --port=8888

    # -v $PWD:/project \
    # -v $HOME/.ssh:/home/$username/.ssh \
    # -v $HOME/.gitconfig:/home/$username/.gitconfig \
