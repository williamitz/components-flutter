import 'package:components_app/theme/app_theme.dart';
import 'package:flutter/material.dart';

class ListViewBuilderScreen extends StatefulWidget {
  const ListViewBuilderScreen({Key? key}) : super(key: key);

  @override
  State<ListViewBuilderScreen> createState() => _ListViewBuilderScreenState();
}

class _ListViewBuilderScreenState extends State<ListViewBuilderScreen> {
  List<int> ids = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  final ScrollController scrollCtrl = ScrollController();
  bool loading = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    scrollCtrl.addListener(() {
      final double current = scrollCtrl.position.pixels;
      final double max = scrollCtrl.position.maxScrollExtent - 250;

      if (current >= max) loadData();
    });
  }

  Future loadData() async {
    if (loading) return;

    loading = true;
    setState(() {});

    await Future.delayed(const Duration(seconds: 3));

    add5();

    loading = false;
    setState(() {});

    if ((scrollCtrl.position.pixels + 100) <=
        scrollCtrl.position.maxScrollExtent) return;

    scrollCtrl.animateTo(scrollCtrl.position.pixels + 100,
        duration: const Duration(milliseconds: 250),
        curve: Curves.fastOutSlowIn);
  }

  void add5() {
    final last = ids.last;
    ids.addAll([1, 2, 3, 4, 5].map((e) => last + e));
    setState(() {});
  }

  Future<void> onRefresh() async  {

    await Future.delayed(const Duration(seconds: 3));
    final last = ids.last;
    ids.clear();
    ids.add( last + 1 );
    add5();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [

          RefreshIndicator(
            color: AppTheme.primary,
            onRefresh: onRefresh,
            child: ListView.builder(
              controller: scrollCtrl,
              itemCount: ids.length,
              itemBuilder: (BuildContext context, int i) {
                return FadeInImage(
                  width: double.infinity,
                  height: 300,
                  fit: BoxFit.cover,
                  placeholder: const AssetImage('assets/jar-loading.gif'),
                  image: NetworkImage(
                      'https://picsum.photos/500/300?image=${ids[i]}'),
                );
              },
            ),
          ),



          if (loading)
            Positioned(
                bottom: 30,
                left: size.width * 0.5 - 25,
                child: const _LoadingIcon())
        ],
      ),
    );
  }
}

class _LoadingIcon extends StatelessWidget {
  const _LoadingIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5.0),
      width: 50,
      height: 50,
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.2), shape: BoxShape.circle),
      child: CircularProgressIndicator(
        color: AppTheme.primary,
      ),
    );
  }
}
