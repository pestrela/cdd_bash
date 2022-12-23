#!/bin/bash


CDD_FOLDER="$HOME/.cdd"

CDD_HOME0="$CDD_FOLDER/.cdd0"
CDD_HOME1="$CDD_FOLDER/.cdd1"
CDD_HOME2="$CDD_FOLDER/.cdd2"
CDD_HOME3="$CDD_FOLDER/.cdd3"
CDD_HOME4="$CDD_FOLDER/.cdd4"
CDD_HOME5="$CDD_FOLDER/.cdd5"
CDD_HOME6="$CDD_FOLDER/.cdd6"
CDD_HOME7="$CDD_FOLDER/.cdd7"
CDD_HOME8="$CDD_FOLDER/.cdd8"
CDD_HOME9="$CDD_FOLDER/.cdd9"

CDD_MIN=1
CDD_MAX=9


function pwdd() { pwd | tee  "${CDD_HOME0}" ;  }
function cdd(){ pushd "`cat "${CDD_HOME0}"`" > /dev/null ; }

function pwdd1() { pwd | tee  "${CDD_HOME1}" ;  }
function cdd1(){ pushd "`cat "${CDD_HOME1}"`" > /dev/null ; }

function pwdd2() { pwd | tee  "${CDD_HOME2}" ;  }
function cdd2(){ pushd "`cat "${CDD_HOME2}"`" > /dev/null ; }

function pwdd3() { pwd | tee  "${CDD_HOME3}" ;  }
function cdd3(){ pushd "`cat "${CDD_HOME3}"`" > /dev/null ; }

function pwdd4() { pwd | tee  "${CDD_HOME4}" ;  }
function cdd4(){ pushd "`cat "${CDD_HOME4}"`" > /dev/null ; }

function pwdd5() { pwd | tee  "${CDD_HOME5}" ;  }
function cdd5(){ pushd "`cat "${CDD_HOME5}"`" > /dev/null ; }

function pwdd6() { pwd | tee  "${CDD_HOME6}" ;  }
function cdd6(){ pushd "`cat "${CDD_HOME6}"`" > /dev/null ; }

function pwdd7() { pwd | tee  "${CDD_HOME7}" ;  }
function cdd7(){ pushd "`cat "${CDD_HOME7}"`" > /dev/null ; }

function pwdd8() { pwd | tee  "${CDD_HOME8}" ;  }
function cdd8(){ pushd "`cat "${CDD_HOME8}"`" > /dev/null ; }

function pwdd9() { pwd | tee  "${CDD_HOME9}" ;  }
function cdd9(){ pushd "`cat "${CDD_HOME9}"`" > /dev/null ; }



function cdd_all()
{
	local N
	local NEW_PWD
	local FILE
	
	#set -x
	
	for N in `seq $CDD_MIN $CDD_MAX` ; do
		FILE="$CDD_FOLDER/.cdd${N}"
		if [ -r "$FILE" ]; then
			NEW_PWD="`cat $FILE`"
			echo "$N   $PWD"
		fi
	done
	
	read N
	#echo "$N"
	
	if [ "$N" == "" ]; then
		return
	fi
	
	FILE="$CDD_FOLDER/.cdd${N}"
	NEW_PWD="`cat $FILE`"
	pushd "$NEW_PWD" > /dev/null ;
	cd `pwd`
}

mkdir -p "$CDD_FOLDER"

# uncommment this to display the top-3 subfolders of the path (ie, the current folder, current parent amd grand parent)
# export PS1='\[\e]0;\u@\h: \w\a\]${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]${PWD#"${PWD%/*/*/*}/"}\[\033[00m\]\$ '

