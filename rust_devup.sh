su vagrant -c "mkdir -p ~/dev/"
su vagrant -c "cd ~/dev"
su vagrant -c "git clone https://github.com/rust-lang/rust.git ~/dev/rust || true"
su vagrant -c "cd ~/dev/rust && ~/dev/rust/configure"
su vagrant -c "sudo make -C /home/vagrant/dev/rust/ install"