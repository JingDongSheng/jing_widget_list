import 'package:flutter/material.dart';
import 'widget/Base/clip/clipOval.dart';
import 'widget/Base/clip/clipPath.dart';
import 'widget/Base/clip/clipRRect.dart';
import 'widget/Base/color/colorFiltered.dart';
import 'widget/Base/color/shaderMask.dart';
import 'widget/Base/loading/cupertinoActivityIndicator.dart';
import 'widget/list/listitem/checkboxListTile.dart';
import 'widget/Base/popup/aboutDialog.dart';
import 'widget/Base/popup/cupertinoActionSheet.dart';
import 'widget/Base/popup/dialog.dart';
import 'widget/Base/popup/snackbar.dart';
import 'widget/Base/progress/circularProgressIndicator.dart';
import 'widget/Base/progress/linearProgressIndicator.dart';
import 'widget/Base/progress/slider.dart';
import 'widget/animate/animatedWidget.dart';
import 'widget/gesture/absorbPointer.dart';
import 'widget/Base/button/floatingActionButton.dart';
import 'widget/Base/button/toggleButtons.dart';
import 'widget/Base/image/animatedIcon.dart';
import 'widget/Base/others/divider.dart';
import 'widget/Base/image/fadeInImage.dart';
import 'widget/Base/image/image.dart';
import 'widget/Base/image/imageFilter.dart';
import 'widget/Base/others/container.dart';
import 'widget/Base/others/dismissiable.dart';
import 'widget/Base/others/indexStack.dart';
import 'widget/Base/others/placeholder.dart';
import 'widget/Base/text/selectableText.dart';
import 'widget/Base/text/richtext.dart';
import 'widget/Base/others/stack.dart';
import 'widget/animate/animatedCrossFade.dart';
import 'widget/animate/animatedOpacity.dart';
import 'widget/animate/animatedpadding.dart';
import 'widget/animate/animatedpositioned.dart';
import 'widget/animate/animatedswitcher.dart';
import 'widget/animate/tweenAnimationBuilder.dart';
import 'widget/gesture/ignorePointer.dart';
import 'widget/gesture/interactiveViewer.dart';
import 'widget/layout/dataTable.dart';
import 'widget/list/gridView.dart';
import 'widget/list/listitem/listTile.dart';
import 'widget/list/listView.dart';
import 'widget/list/listWheelScrollView.dart';
import 'widget/list/listitem/radioListTile.dart';
import 'widget/list/listitem/switchListTile.dart';
import 'widget/list/reorderablelistview.dart';
import 'widget/list/sliver/sliverAppBar.dart';
import 'widget/list/sliver/sliverGrid.dart';
import 'widget/list/sliver/sliverList.dart';
import 'widget/plug_in/url_launcher.dart';
import 'widget/scroll/draggableScrollableSheet.dart';
import 'widget/scroll/drawer.dart';
import 'widget/scroll/pageView.dart';
import 'widget/scroll/tabBar.dart';
import 'widget/size/aspectratio.dart';
import 'widget/size/constrainedBox.dart';
import 'widget/size/fractionallySizedBox.dart';
import 'widget/size/limitedbox.dart';
import 'widget/size/sizebox.dart';
import 'widget/scroll/draggable.dart';
import 'widget/animate/animateContainer.dart';
import 'widget/animate/animatedBuilder.dart';
import 'widget/animate/fadeTransition.dart';
import 'widget/Base/others/hero.dart';
import 'widget/Base/others/opacity.dart';
import 'widget/animate/transform.dart';
import 'widget/layout/align.dart';
import 'widget/layout/fittedBox.dart';
import 'widget/layout/flex.dart';
import 'widget/layout/positioned.dart';
import 'widget/stream/redux.dart';
import 'widget/stream/streamBuilder.dart';
import 'widget/Base/others/customPainter.dart';
import 'widget/layout/expanded.dart';
import 'widget/Base/others/safeArea.dart';
import 'widget/size/mediaquery.dart';
import 'widget/size/spacer.dart';
import 'widget/layout/table.dart';
import 'widget/Base/others/tooltip.dart';
import 'widget/layout/wrap.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Widget集合'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<String> titles = <String>[
    'SafeArea',
    'Expanded',
    'Wrap',
    'AnimateContainer',
    'Opacity',
    'FadeTransition',
    'FloatingActionButton',
    'PageView',
    'Table',
    'SliverAppBar',
    'SliverList',
    'SliverGrid',
    'FadeInImage',
    'StreamBuilder',
    'ClipRRect',
    'Hero',
    'CustomPainter',
    'Tooltip',
    'FittedBox',
    'AbsorbPointer',
    'Transform',
    'ImageFilter',
    'Align',
    'Positioned',
    'AnimatedBuilder',
    'Redux',
    'Dismissiable',
    'SizedBox',
    'Draggable',
    'Flex',
    'MediaQuery',
    'Spacer',
    'AnimatedIcon',
    'AspectRatio',
    'LimitedBox',
    'Placeholder',
    'RichText',
    'ReorderableListView',
    'AnimatedSwitcher',
    'AnimatedPositioned',
    'AnimatedPadding',
    'IndexStack',
    'ConstrainedBox',
    'Stack',
    'AnimatedOpacity',
    'FractionallySizedBox',
    'ListView',
    'ListTile',
    'Container',
    'SelectableText',
    'DataTable',
    'Slider',
    'Dialog',
    'AnimatedCrossFade',
    'DraggablescrollableSheet',
    'ColorFiltered',
    'ToggleButtons',
    'CupertinoActionSheet',
    'TweenAnimationBuilder',
    'Image',
    'TabBar',
    'Drawer',
    'SnackBar',
    'ListWheelScrollView',
    'ShaderMask',
    'ClipPath',
    'LinearProgressIndicator',
    'CircularProgressIndicator',
    'Divider',
    'IgnorePointer',
    'CupertinoActivityIndicator',
    'ClipOval',
    'AnimatedWidget',
    'CheckboxListTile',
    'AboutDialog',
    'UrlLauncher',
    'InteractiveViewer',
    'GridView',
    'RadioListTile',
    'SwitchListTile',
  ];

  final List<Widget> widgets = <Widget>[
    SafeAreaPage(),
    ExpandedPage(),
    WrapPage(),
    AnimateContainerPage(),
    OpacityPage(),
    FadeTransitionPage(),
    FloatingActionButtonPage(),
    PageViewPage(),
    TablePage(),
    SliverAppBarPage(),
    SliverListPage(),
    SliverGridPage(),
    FadeInImagePage(),
    StreamBuilderPage(),
    ClipRRectPage(),
    HeroPage(),
    CustomPainterPage(),
    TooltipPage(),
    FittedBoxPage(),
    AbsorbPointerPage(),
    TransformPage(),
    ImageFilterPage(),
    AlignPage(),
    PositionedPage(),
    AnimatedBuilderPage(),
    ReduxWidget(),
    DismissiableWidget(),
    SizedBoxWidget(),
    DraggableWidget(),
    FlexWidget(),
    MediaQueryWidget(),
    SpacerWidget(),
    AnimatedIconPage(),
    // AspectRatioWidget(),
    LimitedBoxWidget(),
    PlaceHolderWidget(),
    RichTextWidget(),
    ReorderableListViewWidget(),
    AnimatedSwitcherWidget(),
    AnimatedPositionedWidget(),
    AnimatedPaddingWidget(),
    IndexStackWidget(),
    ConstrainedBoxWidget(),
    StackWidget(),
    AnimatedOpacityWidget(),
    FractionallySizedBoxWidget(),
    ListViewWidget(),
    ListTileWidget(),
    ContainerWidget(),
    SelectableTextWidget(),
    DataTableWidget(),
    SliderWidget(),
    DialogWidget(),
    AnimatedCrossFadeWidget(),
    DraggablescrollableSheetWidget(),
    ColorFilteredWidget(),
    ToggleButtonsWidget(),
    CupertinoActionSheetWidget(),
    TweenAnimationBuilderWidget(),
    ImageWidget(),
    TabBarWidget(),
    DrawerWidget(),
    SnackBarWidget(),
    ListWheelScrollViewWidget(),
    ShaderMaskWidget(),
    ClipPathWidget(),
    LinearProgressIndicatorWidget(),
    CircularProgressIndicatorWidget(),
    DividerWidget(),
    IgnorePointerWidget(),
    CupertinoActivityIndicatorWidget(),
    ClipOvalWidget(),
    AnimatedWidgetPage(),
    CheckboxListTileWidget(),
    AboutDialogWidget(),
    UrlLauncherWidget(),
    InteractiveViewerWidget(),
    GridViewWidget(),
    RadioListTileWidget(),
    SwitchListTileWidget(),
  ];

  @override
  Widget build(BuildContext context) {
    titles.sort((a, b) => a.compareTo(b));
    widgets.sort((a, b) => a.toString().compareTo(b.toString()));

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppBar(
          title: Text(widget.title ,style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 18),),
          centerTitle: true,

        ),
      ),
      body: ListView.separated(
        separatorBuilder: (BuildContext context, int index) => const Divider(),
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(
              '${titles[index]}',
              style: TextStyle(
                fontSize: 14,
              ),
            ),
            trailing: Icon(
              Icons.arrow_right,
              color: Colors.black,
            ),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => widgets[index]),
            ),
            dense: true,
          );
        },
        itemCount: titles.length,
      ),
    );
  }
}
