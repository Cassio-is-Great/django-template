
# Setting PATH for Python 3.8
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.8/bin:${PATH}"
export PATH

export BASH_SILENCE_DEPRECATION_WARNING=1

list_of_custom_commands_with_descriptions=(
    "(l)ist of (c)ustom Commands:"
    "   -- Navagation Helpers"
    "       cig -- cd cassio-is-great, change to ~/Projects/cassio-is-great"
    "   -- Bash Helpers"
    "       ebl - Opens the ~/.bash_profile file in a new Visual Studio window"
    "       c - Runs clear"
    "       src - Refresh soruce in bash, used when edditing ~/.bash_profile"
    "   -- Internet of Things:"
    "       pi - Connect to LAN pi device at pi address: 192.168.0.15"
    "   -- OSX Helpers:"
    "       rTouchBar - Resets Mac touch bar, useful when the bar freezes"
    "   -- Github Helpers:"
    "       git - Maps hub to git, hub is a better git"
    "       gacp - Will ask user for (g)it commit message and then (a)dd and (c)ommit all files and (p)ush to the origin of the current branch"
    "   -- Dev Ops"
    "       ipar - iPhone automatic redploy, pull down git repo master for iPhone automation"
    ""
)

lc(){
    for index in "${list_of_custom_commands_with_descriptions[@]}" ; do
        echo "$index"
    done
}

c(){
    command clear
}

cig(){
    command cd ~/Projects/cassio-is-great && echo "Now in cassio-is-great:" && ls
}

pi(){ 
    command ssh -X pi@192.168.0.15 
    }


rTouchBar(){
    command sudo pkill TouchBarServer
}

git(){ 
    command hub "$@" 
    }

gacp(){
    read -p 'Commit message: ' commitMessage
    command git add .
    command git commit --all -m "$commitMessage"
    command git push origin $(git branch --show-current)
}

ebl(){ 
    command code -n ~/.bash_profile
}

src(){ 
    command source ~/.bash_profile 
    }

ipar(){
    git -C "/Users/cassiohudson/Library/Mobile Documents/iCloud~com~omz-software~Pythonista3/Documents" pull origin master
    }

echo "  Hello boss. Custom commands loaded, to see custom commands run: lc"
echo ""
