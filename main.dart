import 'dart:ffi' as ffi;
import 'dart:io' show Platform, Directory;

import 'package:path/path.dart' as path;

typedef PrinterFunc = ffi.Void Function();
typedef Printer = void Function();

void main() {
  var libraryPath =
      path.join(Directory.current.path, 'printer', 'libprinter.so');
  final dylib = ffi.DynamicLibrary.open(libraryPath);
  final Printer prints = dylib
  .lookup<ffi.NativeFunction<PrinterFunc>>('printer')
  .asFunction();
  prints();
}
