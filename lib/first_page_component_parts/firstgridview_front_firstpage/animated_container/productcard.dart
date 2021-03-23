import 'package:consistency_seventh_son/first_page_component_parts/firstgridview_front_firstpage/firstgridview_firstpage_model/first_gridview.model.dart';
import 'package:consistency_seventh_son/universal_models/size_config.dart';
import 'package:flutter/material.dart';

class ProductImages extends StatefulWidget {
  const ProductImages({
    Key key,
    @required this.racoon,
    this.press,
  }) : super(key: key);

  final Racoon racoon;
  final Function press;
  @override
  _ProductImagesState createState() => _ProductImagesState();
}

class _ProductImagesState extends State<ProductImages> {
  int selectedImage = 0;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Column(
      children: [
        SizedBox(
          width: getProportionateScreenWidth(200),
          child: Expanded(
            child: AspectRatio(
              aspectRatio: 1.10,
              child: Hero(
                tag: widget.racoon.id.toString(),
                child: Image.asset(widget.racoon.image[selectedImage]),
              ),
            ),
          ),
        ),
        SizedBox(height: getProportionateScreenWidth(20)),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...List.generate(widget.racoon.image.length,
                (index) => buildSmallProductPreview(index)),
          ],
        )
      ],
    );
  }

  GestureDetector buildSmallProductPreview(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedImage = index;
        });
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 2500),
        curve: Curves.easeInCirc,
        margin: EdgeInsets.only(right: 15),
        padding: EdgeInsets.all(5),
        height: getProportionateScreenWidth(53),
        width: getProportionateScreenWidth(63),
        decoration: BoxDecoration(
          // color: demoproducts.cardColor2,
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: widget.racoon.cardColor2,
            // color:
            //     Colors.grey[200].withOpacity(selectedImage == index ? 1 : 0)
          ),
        ),
        child: Image.asset(widget.racoon.image[index]),
      ),
    );
  }
}
