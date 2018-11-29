FROM python:3.6-slim

RUN apt update; \
	apt install -y \
		tmux \
		neovim \
		sudo \
		zsh \
		libtk8.6

RUN pip install \
		numpy \
		pandas \
		tensorflow \
		matplotlib \
		scikit-learn \
		jupyter
		# torch
		# torchvision

ARG username
ARG userid

ENV username=$username
ENV userid=$userid

RUN	set -ex; \
	useradd -g users -u $userid -m $username; \
	echo "$username ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/$username

USER $username
WORKDIR /home/$username

CMD [ "/bin/zsh" ]
