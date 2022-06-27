#!/bin/bash

function delete-history() {
	history -c
	echo "" > /home/lex-linux/.bash_history
}
