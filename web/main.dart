// Copyright (c) 2017, Damir. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'dart:html';
import 'package:dragula/dragula.dart';
import 'package:mustache4dart/mustache4dart.dart' as mustache;

void main() {
	// var drakke;
        print(mustache.render("{{a}}", {'a':'a'}));
	querySelector('#output').text = 'Your Dart app is running.';

	drakke = dragula([], copy: dragulaCopy, copySortSource: false, 
			accepts: dragulaAccepts, invalid: dragulaInvalid);
	drakke.onDrop((e)=>print(e));
}

dragulaCopy(Element el, Element source) {
	return true;
}

dragulaAccepts(Element el, Element source) {
	return true;
}

dragulaInvalid(Element el, Element source) {
	return false;
}
