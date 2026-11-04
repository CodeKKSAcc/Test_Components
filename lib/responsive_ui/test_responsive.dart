import 'package:flutter/material.dart';

class TestResponsive extends StatefulWidget {
  const TestResponsive({super.key});

  @override
  State<TestResponsive> createState() => _TestResponsiveState();
}

class _TestResponsiveState extends State<TestResponsive> {
  @override
  Widget build(BuildContext context) {
    final num currentWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      //appBar: AppBar(title: Text("Responsive Design"), backgroundColor: Colors.blue,foregroundColor: Colors.white, actions: [TextField(decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(21))),)],),
      body: ResponsiveLayout(
        mobileBody: MyMobileBody(),
        desktopBody: MyDesktopBody(),
      ),
    );
  }
}

const mobileWidth = 600;

List<int> numbers = [1,2,3,4,5,6,7,8,9];

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileBody;
  final Widget desktopBody;

  const ResponsiveLayout({
    required this.mobileBody,
    required this.desktopBody,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constrains) {
        if (constrains.maxWidth < mobileWidth) {
          return mobileBody;
        } else {
          return desktopBody;
        }
      },
    );
  }
}

class MyMobileBody extends StatelessWidget {
  const MyMobileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Mobile Body"),
        centerTitle: true,
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
      backgroundColor: Colors.green.shade50,
      body: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,
        child: Column(
          spacing: 12,
          children: [
            // Top YouTube Video
            AspectRatio(
              aspectRatio: 16 / 9,
              child: Container(
                margin: EdgeInsets.only(right: 12, left: 12, top: 15),
                height: 210,
                color: Colors.green.shade300,
              ),
            ),
            // Recommended Videos
            /*ListView.builder(
              itemCount: 6,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Container(
                  height: 90,
                  margin: EdgeInsets.only(right: 12, left: 12, top: 9),
                  color: Colors.green.shade200,
                );
              },
            ),*/
            ...List.generate(18, (index){
              return Container(
                height: 90,
                margin: EdgeInsets.only(right: 12, left: 12, top: 9),
                color: Colors.green.shade200,
              );
            })
          ],
        ),
      ),
    );
  }
}

class MyDesktopBody extends StatelessWidget {
  const MyDesktopBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Desktop Body"),
        centerTitle: true,
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      backgroundColor: Colors.green.shade50,
      body: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                  // Top YouTube Video
                  Expanded(
                    child: Column(
                      children: [
                        // Played Video
                        Container(
                            margin: EdgeInsets.only(right: 12, left: 12, top: 15),
                            height: (MediaQuery.of(context).size.height * 5) / 10,
                            width: (MediaQuery.of(context).size.width * 8) / 10,
                            color: Colors.green.shade300,
                          ),
                        // Comments
                        /*ListView.builder(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: 18,
                          itemBuilder: (context, index) {
                            return Container(
                              height: 90,
                              margin: EdgeInsets.only(right: 12, left: 12, top: 9),
                              color: Colors.green.shade200,
                            );
                          },
                        )*/
                        ...List.generate(
                          18,
                              (index) => Container(
                            height: 90,
                            margin: const EdgeInsets.only(
                              left: 12,
                              right: 12,
                              top: 9,
                            ),
                            color: Colors.green.shade200,
                          ),
                        ),
                      ],
                    ),
                  ),
              // Recommended Videos
              SizedBox(
                height: double.infinity,
                child: Expanded(
                  child: Container(
                    margin: EdgeInsets.only(top: 15,),
                    height: 600,
                    width: MediaQuery.of(context).size.width * 0.2,
                    color: Colors.green.shade200,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
