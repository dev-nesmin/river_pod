// ignore_for_file: unused_local_variable, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'codegen.g.dart';

/* SNIPPET START */
// {@template provider}
// An eagerly initialized provider.
// {@endtemplate}
@riverpod
Future<String> example(Ref ref) async => 'Hello world';

class MyConsumer extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final result = ref.watch(exampleProvider);

    // {@template note}
    /// If the provider was correctly eagerly initialized, then we can
    /// directly read the data with "requireValue".
    // {@endtemplate}
    return Text(result.requireValue);
  }
}
/* SNIPPET END */
