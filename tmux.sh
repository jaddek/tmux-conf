!/bin/bash
set -xe

function main() 
{
  case "$(uname -sr)" in
    Darwin*)
      if ! brew ls --versions tmuxs > /dev/null; then
	echo "Brew has no infromation about installed tmux"
        brew install tmux

	if ! test -f ~/.tmux.conf; then
           cp ./.tmux.conf ~/.tmux.conf
        else
          echo "Config file exists skip copy"
	fi

	echo "Tmux installed"
      fi 
     ;;

   Linux*)
     echo 'Add Linux support'
     ;;


   *)
     echo 'No instructions' 
     ;;
  esac
}


main
set +xe
