# @codekit-append "component.coffee"

# @codekit-append "layouts/layout_base.coffee"
# @codekit-append "layouts/one_col_layout.coffee"
# @codekit-append "layouts/two_col_layout.coffee"
# @codekit-append "layouts/three_col_layout.coffee"
# @codekit-append "layouts/left_leaning_layout.coffee"
# @codekit-append "layouts/right_leaning_layout.coffee"
# @codekit-append "layouts/small_grid_layout.coffee"

# @codekit-append "containers/base_container.coffee"
# @codekit-append "containers/vertical_container.coffee"
# @codekit-append "containers/small_grid_container.coffee"

# @codekit-append "items/base_item.coffee"
# @codekit-append "items/image_item.coffee"
# @codekit-append "items/string_item.coffee"
# @codekit-append "items/text_item.coffee"

$ ->

  new OneColLayout
  new TwoColLayout
  new ThreeColLayout
  new LeftLeaningLayout
  new RightLeaningLayout
  new SmallGridLayout

  new VerticalContainer
  new SmallGridContainer

  new ImageItem
  new StringItem
  new TextItem

  builder = new Vue
    el: '#wrapper'
    data:
      layouts:[
        {layout: 'one-col-layout'}
        {layout: 'two-col-layout'}
        {layout: 'three-col-layout'}
        {layout: 'left-leaning-layout'}
        {layout: 'right-leaning-layout'}
        {layout: 'small-grid-layout'}
      ]
