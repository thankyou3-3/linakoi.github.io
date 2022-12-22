import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
// This widget is the root of your application.
@override
Widget build(BuildContext context) {
	return new MaterialApp(
	title: 'Flutter Demo',
	theme: new ThemeData(
		primarySwatch: Colors.amber,
	),
	home: MyHomePage(),
	);
}
}

class MyHomePage extends StatefulWidget {
@override
_MyHomePageState createState() => new _MyHomePageState();
}

const htmlData = r"""

	<h1>顔文字タイム君</h1>
  <pre>(っ◞‸◟c)
( ´◔‸◔`)
٩(๑òωó๑)۶
(っ◟‸◞c)
(っ^ω^c)
( っ`･ω･´c)
(◞．‸．◟)</pre>

""";

class _MyHomePageState extends State<MyHomePage> {
@override
Widget build(BuildContext context) {
	return new Scaffold(
	appBar: AppBar(
		title: Text('( っ`･ω･´c)'),
		centerTitle: true,
	),
	body: SingleChildScrollView(
		child: Html(
		data: htmlData,
		tagsList: Html.tags,
		style: {
			"table": Style(
			backgroundColor: Color.fromARGB(0x50, 0xee, 0xee, 0xee),
			),
			"tr": Style(
			border: Border(bottom: BorderSide(color: Colors.grey)),
			),
			"th": Style(
			padding: EdgeInsets.all(6),
			backgroundColor: Colors.grey,
			),
			"td": Style(
			padding: EdgeInsets.all(6),
			alignment: Alignment.topLeft,
			),
			'h5': Style(maxLines: 2, textOverflow: TextOverflow.ellipsis),
		},
		),
	),
	);
}
}
