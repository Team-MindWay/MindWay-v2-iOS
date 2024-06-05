if test -d "/opt/homebrew/bin/"; then
    PATH="/opt/homebrew/bin/:${PATH}"
fi

export PATH

if which tuist > /dev/null; then
  echo "✅ Tuist was installed"
else
  echo "❌ Tuist was not installed"
  curl -Ls https://install.tuist.io | bash
fi

git config --local include.path ../.gitconfig
chmod 777 .githooks/*
