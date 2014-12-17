# @codekit-append "component.coffee"

# @codekit-append "layouts/layout_base.coffee"
# @codekit-append "layouts/layout_col_12.coffee"
# @codekit-append "layouts/layout_col_6.coffee"

# @codekit-append "items/item_base.coffee"
# @codekit-append "items/item_image.coffee"
# @codekit-append "items/item_string.coffee"
# @codekit-append "items/item_text.coffee"

$ ->

  # new LayoutCol12Component
  # new LayoutCol6Component

  # new ItemImageComponent
  # new ItemStringComponent
  # new ItemTextComponent

  Vue.component 'layout-col-12-component',
    template: '#layout-col-12-component'

  Vue.component 'layout-col-6-component',
    template: '#layout-col-6-component'

  Vue.component 'container-vertival-component',
    template: '#container-vertival-component'

  builder = new Vue
    el: '#wrapper'
    data:
      layouts:[
        {
          layout: 'layout-col-12-component'
          innerStyle:{ 'background-color': '#ff0000' }
          container:
            items:[
              {name:'111'}
              {name:'222'}
              {name:'333'}
            ]
        }
        {
          layout: 'layout-col-6-component'
          innerStyle:{ 'background-color': '#ff0000' }
          firstContainer:
            items:[
              {name:'111'}
              {name:'222'}
              {name:'333'}
            ]
          secondContainer:
            items:[
              {name:'111'}
              {name:'222'}
              {name:'333'}
            ]
        }
      ]
