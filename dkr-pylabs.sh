username=$(id -un)

docker run --rm -ti -h pylabs -p 8888:8888 \
    -v $HOME:$HOME \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    --env="DISPLAY" \
    --env="WAYLAND_DISPLAY" \
pylabs $@

    # -v $PWD:/project \
    # -v $HOME/.ssh:/home/$username/.ssh \
    # -v $HOME/.gitconfig:/home/$username/.gitconfig \
