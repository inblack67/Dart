import 'dart:async';
import 'dart:convert';

import 'dart:io';

void main(List<String> args) async {
  // loadString('hello').then((value) => print(value));
  // var res = await loadSting_await('hello');
  // print(res);

// subscribing to stream
  someStream(5).listen((event) {print('even emitted from stream => $event');});

  var stream = someStream(10);
  await for(var s in stream){
    print('stream yeilded => $s');
  }


  await writeToFile('test.txt', 'hello worlds');
  await writeToFile('test.txt', 'hello elixir');
  await writeToFile('test.txt' ,'hello flutter');
  await readFromFile('test.txt');
}

Future<bool> readFromFile(String path) async {
  var my_file = File(path);
  // one listner to one stream only => or use broadcast stream but then order will not be maintained
  // var fileStream = my_file.openRead().asBroadcastStream();
  var fileStream = my_file.openRead();
  fileStream.transform(utf8.decoder).transform(LineSplitter()).listen((str) => print(str), onDone: () => print('done reading'), onError: (e) => print(e.toString()));

  return true;
}

Future<bool> writeToFile(String path, String content) async {
  var my_file = File(path);

  // starting point
  var sink = my_file.openWrite(mode: FileMode.append);
  sink.add(utf8.encode('$content ${DateTime.now().toIso8601String()}\n'));

  await sink.flush(); // flush the subscription
  await sink.close();
  return true;
}

Stream<int> someStream(int x) async * {
  for (var i = 0; i <= x; i++) {
    yield i;
  }
}

Future<String> loadSting_await(String str){
  return Future.delayed(Duration(seconds: 1))
  .then((_) => 'await with $str');
}

Future<String> loadString(String str){
  return Future.delayed(Duration(seconds: 1))
  .then((_) => 'Resolves with $str');
}
