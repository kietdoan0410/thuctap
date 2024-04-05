import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({
    super.key,
    // required this.avatar,
    // required this.background,
    // required this.content,
    // this.headerNav,
    // this.btnEditBackground,
    // this.avatarOverlayIcon,
    // this.onRefresh,
    // this.onTapBackground,
    // this.onTapAvatar,
    // this.onHeaderBackdrop,
    // this.scrollController,
    // this.demo,
  });

  // final Widget content;

  // final RxString avatar;
  // final RxString background;

  // final Widget? btnEditBackground;
  // final Widget? headerNav;
  // final Widget? avatarOverlayIcon;
  // final ScrollController? scrollController;
  // final Widget? demo;

  // final Future<void> Function()? onRefresh;
  // final Future<void> Function()? onTapBackground;
  // final Future<void> Function()? onTapAvatar;
  // final Future<void> Function(bool show)? onHeaderBackdrop;

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  late ScrollController scrollController = ScrollController();

  var headerBgAdditionHeight = 0.0;
  var headerChangeBgOpacity = 1.0;
  var headerNavOpacity = 0.0;

  final topScreenToAvatar = 187.0;
  final topScreenToNav = 24.0;
  final avatarSize = 132.0;

  double get noScrollOffset => topScreenToAvatar + avatarSize / 2;
  double get changeBgOffset => noScrollOffset - topScreenToAvatar - 10 - 30;
  late double headerNavOffset;

  @override
  void initState() {
    super.initState();
    print('object');
    addListener();
  }

  @override
  void dispose() {
    super.dispose();
    removeListener();
  }

  @override
  Widget build(BuildContext context) {
    headerNavOffset =
        noScrollOffset - (topScreenToNav + context.mediaQueryPadding.top) - 30;

    return Scaffold(
      body: Stack(children: [
        profileHeaderBackground(context),
        Stack(
          children: [
            CustomScrollView(
              controller: scrollController,
              slivers: [
                ZStack(
                  [
                    GestureDetector(
                      child: Container(
                        height: noScrollOffset,
                        color: Colors.transparent,
                      ),
                      onTap: () {},
                    ),
                    Container(
                      width: double.infinity,
                      margin: EdgeInsets.only(
                        top: noScrollOffset,
                      ),
                      padding: EdgeInsets.only(
                        top: avatarSize / 2,
                      ),
                      constraints: BoxConstraints(
                        minHeight: context.mediaQuerySize.height,
                      ),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50),
                        ),
                      ),
                      child: Text('data'),
                    ),
                    Positioned(
                      top: topScreenToAvatar,
                      left: context.mediaQuerySize.width / 2 - avatarSize / 2,
                      child: circleAvatar(),
                    )
                  ],
                ).sliverBox,
                // Text('data')
              ],
            ),
            Container(
              height: context.mediaQueryPadding.top + 100,
              decoration: BoxDecoration(
                // color: Colors.blue,
                gradient: LinearGradient(
                  colors: [
                    Colors.black,
                    Colors.black.withOpacity(0.3),
                    Colors.transparent,
                  ],
                  stops: const [0, 0.7, 1],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ).opacity(value: headerNavOpacity),
            SafeArea(
              bottom: false,
              child: Column(
                children: [
                  HeightBox(topScreenToNav),
                  const SizedBox.shrink(),
                ],
              ),
            ),
          ],
        )
      ]),
    );
  }

  Widget profileHeaderBackground(BuildContext context) {
    ///
    /// 187 - top screen to top-most of avatar
    /// 132 - avatar height
    ///
    double backgroundHeight =
        topScreenToAvatar + avatarSize + headerBgAdditionHeight;
    return GestureDetector(
      onTap: () {},
      child: ZStack(
        [
          Image.asset(
            'lib/Images/earphone.jpg',
            width: double.infinity,
            height: 350,
            fit: BoxFit.cover,
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              color: Colors.black.withOpacity(0.3),
              height: backgroundHeight,
            ),
          )
        ],
      ),
    );
  }

  Widget circleAvatar() {
    return Container(
      height: avatarSize,
      width: avatarSize,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: Colors.white, width: 0),
        color: Colors.white,
      ),
      child: CachedNetworkImage(
        width: double.infinity,
        height: double.infinity,
        imageUrl:
            'https://images.unsplash.com/photo-1534528741775-53994a69daeb?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=60&raw_url=true&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8cGVvcGxlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500',
        fit: BoxFit.cover,
        placeholder: (context, url) => Container(color: Colors.grey.shade300),
        errorWidget: (context, url, error) =>
            Container(color: Colors.grey.shade300),
      ).cornerRadius(avatarSize),
    );
  }

  void addListener() {
    scrollController.addListener(onScroll);
  }

  void removeListener() {
    scrollController.removeListener(onScroll);
  }

  void onScroll() {
    int indexScroll = scrollController.positions.toList().indexWhere(
        (element) => element.userScrollDirection != ScrollDirection.idle);
    if (indexScroll == -1) {
      indexScroll = 0;
    }
    final offset = scrollController.positions.elementAt(indexScroll).pixels;
    if (mounted) {
      setState(() {
        if (offset < 0) {
          // scroll down

          headerBgAdditionHeight = -offset;

          // show button edit cover
          headerChangeBgOpacity = 1;
          // show nav
          headerNavOpacity = 0;
          //
        } else if (offset > 0) {
          // scroll up
          headerBgAdditionHeight = 0;

          headerChangeBgOpacity = offset < changeBgOffset
              ? 1 - (offset / changeBgOffset).toPrecision(2)
              : 0;
          headerNavOpacity = offset < headerNavOffset
              ? (offset / headerNavOffset).toPrecision(2)
              : 1;

          //
        } else {
          //
          headerBgAdditionHeight = 0;
          //
        }
      });
    }
  }
}
