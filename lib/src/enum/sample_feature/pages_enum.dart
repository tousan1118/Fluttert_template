import 'package:Flutter_template/src/sample_feature/sample_detail/sample_item_card_view.dart';
import 'package:Flutter_template/src/sample_feature/sample_detail/sample_item_check_box_view.dart';
import 'package:Flutter_template/src/sample_feature/sample_detail/sample_item_check_box_list_tile_view.dart';
import 'package:Flutter_template/src/sample_feature/sample_detail/sample_item_dropdown_button_view.dart';
import 'package:Flutter_template/src/sample_feature/sample_detail/sample_item_image_view.dart';
import 'package:Flutter_template/src/sample_feature/sample_detail/sample_item_radio_list_tile_view.dart';
import 'package:Flutter_template/src/sample_feature/sample_detail/sample_item_show_date_picker_view.dart';
import 'package:Flutter_template/src/sample_feature/sample_detail/sample_item_slider_view.dart';
import 'package:Flutter_template/src/sample_feature/sample_detail/sample_item_switch_list_tile_view.dart';
import 'package:Flutter_template/src/sample_feature/sample_detail/sample_item_text_form_field_view.dart';
import 'package:Flutter_template/src/sample_feature/sample_item_list_view.dart';

class Pages {
  const Pages({
    required this.type,
    required this.id,
  });

  final ViewType type;
  final int id;
}

enum ViewType {
  card,
  checkBox,
  checkBoxListTile,
  dropdownButton,
  image,
  radioListTile,
  showDatePicker,
  slider,
  switchListTile,
  textFormField,
}

extension ViewTypeNameExtention on ViewType {
  String get name {
    switch (this) {
      case ViewType.card:
        return "Card";
      case ViewType.checkBox:
        return "CheckBox";
      case ViewType.checkBoxListTile:
        return "CheckBoxListTile";
      case ViewType.dropdownButton:
        return "DropDownButton";
      case ViewType.image:
        return "Image";
      case ViewType.radioListTile:
        return "RadioListTile";
      case ViewType.showDatePicker:
        return "ShowDatePicker";
      case ViewType.slider:
        return "Slider";
      case ViewType.switchListTile:
        return "SwitchListTile";
      case ViewType.textFormField:
        return "TextFormField";
      default:
        return 'Lists';
    }
  }
}

extension ViewTypeRouteExtention on ViewType {
  String get routeName {
    switch (this) {
      case ViewType.card:
        return SampleItemCardView.routeName;
      case ViewType.checkBox:
        return SampleItemCheckBoxView.routeName;
      case ViewType.checkBoxListTile:
        return SampleItemCheckBoxListTileView.routeName;
      case ViewType.dropdownButton:
        return SampleItemDropdownButtonView.routeName;
      case ViewType.image:
        return SampleItemImageView.routeName;
      case ViewType.radioListTile:
        return SampleItemRadioListTileView.routeName;
      case ViewType.showDatePicker:
        return SampleItemShowDatePickerView.routeName;
      case ViewType.slider:
        return SampleItemSliderView.routeName;
      case ViewType.switchListTile:
        return SampleItemSwitchListTileView.routeName;
      case ViewType.textFormField:
        return SampleItemTextFormFieldView.routeName;
      default:
        return SampleItemListView.routeName;
    }
  }
}
