module main

import time
import scanner
import parser

fn main() {
	// text := 'a := 1*2'
	// text := 'for i,x in chars { println(a)\nx := 100\n g++\ny := @ }'

	file := './tests/fibonacci.v'
	mut p := parser.new_parser(file)

	t0 := time.ticks()
	p.scanner.scan_all()
	t1 := time.ticks()
	scan_time := t1 - t0
	println('scan time: ${scan_time}ms')

	pt0 := time.ticks()
	p.parse()
	pt1 := time.ticks()
	parse_time := pt1 - pt0
	println('parse time: ${parse_time}ms')
}
