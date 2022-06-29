import 'package:flutter/material.dart';
import 'package:flutter_codigo5_museumapp/ui/general/colors.dart';
import 'package:flutter_codigo5_museumapp/ui/general/general_widget.dart';
import 'package:flutter_codigo5_museumapp/ui/responsive/responsive.dart';
import 'package:flutter_codigo5_museumapp/ui/widgets/my_app_bar_widget.dart';

class ArtistDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBrandPrimaryColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: ResponsiveUI.pHeight(context, 0.45),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                        "https://www.salirconarte.com/wp-content/uploads/2017/08/vincent-van-gogh-9515695-3-402.jpg",
                      ),
                    ),
                  ),
                ),
                PreferredSize(
                  preferredSize: const Size(double.infinity, 64.0),
                  child: MyAppBar(),
                ),
              ],
            ),
            divider40,
            Text(
              "Vincent van Gogh",
              style: TextStyle(
                color: Colors.white,
                fontSize: 28.0,
              ),
            ),
            divider12,
            Text(
              "Mar 30 1853 - Jul 29 1890",
              style: TextStyle(
                color: Colors.white70,
                fontSize: 14.0,
              ),
            ),
            divider30,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.favorite_border_outlined,
                    color: Colors.white,
                  ),
                ),
                dividerWidth12,
                dividerWidth6,
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.share,
                    color: Colors.white,
                  ),
                )
              ],
            ),
            divider30,
            Text(
              '''Nació el 30 de marzo de 1853. Hijo de un austero y humilde pastor protestante neerlandés llamado Theodorus y de su mujer Anna Cornelia, Vincent recibió el mismo nombre que le habían puesto a un hermano que nació muerto exactamente un año antes. El 1 de mayo de 1857 nació su hermano Theo y ambos tuvieron cuatro hermanos más: Cornelius Vincent, Elisabetha Huberta, Anna Cornelia y Wilhelmina Jacoba.
Durante la infancia acudió a la escuela de manera discontinua e irregular, pues sus padres le enviaron a diferentes internados. El primero de ellos en Zevenbergen en 1864, donde estudió francés y alemán. Dos años después se matriculó en la escuela secundaria HBS Koning Willem II (Tilburg) viviendo con la familia Hannik en la calle Sint Annaplein 18-19 y permaneció allí hasta que dejó los estudios de manera definitiva a los quince años. Por entonces comenzó su afición por la pintura.
                ''',
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                height: 1.4,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
