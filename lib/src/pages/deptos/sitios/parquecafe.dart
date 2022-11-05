import 'package:flutter/material.dart';

void main() => runApp(const ParqueCafe());

class ParqueCafe extends StatelessWidget {
  const ParqueCafe();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverToBoxAdapter(
            child: Transform.translate(
              offset: Offset(0, 180),
              child: Container(
                height: 200.0,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 200.0,
                      height: 200,
                      child: Card(
                        child: Text('datisima'),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.all(16.0),
            sliver: SliverList(
              delegate: SliverChildListDelegate(
                [
                  Card(
                    child: Text('data'),
                  ),
                  Card(
                    child: Text('data'),
                  ),
                  Card(
                    child: Text('data'),
                  ),
                  Card(
                    child: Text('data'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
