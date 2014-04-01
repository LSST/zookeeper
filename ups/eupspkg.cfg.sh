# EupsPkg config file. Sourced by 'eupspkg'

config()
{
    default_config

    # zookeeper c-binding
    # see http://zookeeper.apache.org/doc/r3.3.4/zookeeperProgrammers.html#Installation
    cd src/c
    ./configure --prefix=${PREFIX}/c-binding
    cd ../..
}
 
build()
{
    default_build

    # zookeeper c-binding
    cd src/c
    make
    cd ../..
}

install()
{
    default_install

    # zookeeper c-binding
    cd src/c
    make install
    cd ../..
}
