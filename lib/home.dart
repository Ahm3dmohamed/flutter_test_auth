// import 'package:flutter/material.dart';
// import 'package:google_sign_in/google_sign_in.dart';
// import 'package:extension_google_sign_in_as_googleapis_auth/extension_google_sign_in_as_googleapis_auth.dart';
// import 'package:googleapis/people/v1.dart';

// class MyWidget extends StatefulWidget {
//   const MyWidget({super.key});

//   @override
//   State<MyWidget> createState() => _MyWidgetState();
// }

// class _MyWidgetState extends State<MyWidget> {
//   final GoogleSignIn _googleSignIn = GoogleSignIn(
//     scopes: [
//         PeopleServiceApi.contactsReadonlyScope,
//     ],
//   );

//   Future<void> setAuthApi() async {
//     try {
//       final GoogleSignInAccount? account = await _googleSignIn.signIn();

//       if (account == null) {
        
//         return;
//       }

//       final client = await _googleSignIn.authenticatedClient();
//       if (client == null) {
//         throw Exception('Authenticated client missing!');


//       }

//       final PeopleServiceApi peopleApi = PeopleServiceApi(client);
//       final ListConnectionsResponse response =
//           await peopleApi.people.connections.list(
//         'people/me',
//         personFields: 'names',
//       );

//       // Process the response (e.g., display in the UI)
//       for (var connection in response.connections ?? []) {
//         print('Connection: ${connection.names?.first.displayName}');
//       }

//       // Display success message
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('Fetched ${response.connections?.length ?? 0} connections!')),
//       );
//     } catch (e) {
//       // Handle Errors
//       print('Error: $e');
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('Error: $e')),
//       );
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Google Sign-In Example'),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: setAuthApi,
//           child: const Text("Sign In with Google"),
//         ),
//       ),
//     );
//   }
// }
