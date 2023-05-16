randline () {
        integer z=$(wc -l <$1)
        sed -n $[RANDOM % z + 1]p $1

}
