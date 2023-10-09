import 'package:healthoholic/const/const.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class LocationChangeScreen extends StatelessWidget {
  const LocationChangeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: whiteColor,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextFormField(
            decoration: const InputDecoration(
                isDense: true,
                fillColor: whiteColor,
                contentPadding: EdgeInsets.only(top: 15),
                prefixIcon: Icon(
                  Icons.search,
                  size: 30,
                  color: fontGrey,
                ),
                iconColor: whiteColor,
                hintText: "Search here...",
                hintStyle: TextStyle(
                  fontFamily: regular,
                  color: fontGrey,
                ),
                filled: true,
                border: InputBorder.none,
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(13)),
                    borderSide: BorderSide(color: blue)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(13)),
                    borderSide: BorderSide(color: blue))),
          ),
          const Expanded(child: GoogleMap(
            myLocationButtonEnabled: false,
            zoomControlsEnabled: false,
            initialCameraPosition: CameraPosition(target: LatLng(23.0225, 72.5714),zoom: 13)))
          ],
        ),
      ),
    );
  }
}