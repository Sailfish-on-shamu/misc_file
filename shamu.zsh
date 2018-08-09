sfossdk(){
    source ~/bin/.hadk.env
    export PLATFORM_SDK_ROOT=/srv/mer
    $PLATFORM_SDK_ROOT/sdks/sfossdk/mer-sdk-chroot 
}
hybris_build(){
    export PS1="(hybris) %B%F{red}%(?..%? )%f%b%B%F{blue}%n%f%b@%m %B%40<..<%~%<< %b%#"
    source ~/bin/.hadk.env
    cd $ANDROID_ROOT
    source build/envsetup.sh
    source venv/bin/activate
    export USE_CCACHE=1 
    export LC_ALL=C
    breakfast shamu
}

