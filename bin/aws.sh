#!/usr/bin/env bash

function tail {
	aws logs tail $1 --follow
}