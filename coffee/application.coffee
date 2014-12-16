# @codekit-append "items/item_base.coffee"
# @codekit-append "items/item_image.coffee"
# @codekit-append "items/item_text.coffee"

$ ->

  # Vue.component 'red',
  #   template: '#red-template'

  # Vue.component 'blue',
  #   template: '#blue-template'

  img = new ItemImageComponent
  text = new ItemTextComponent

  builder = new Vue
    el: '#wrapper'
    components:
      red:
        template: '#red-template'
      blue:
        template: '#blue-template'
    data:
      containers:[
        {
          component: 'red'
          name: 'red'
          items:[
            {
              component: 'item-image-component'
              src: 'https://fbcdn-sphotos-f-a.akamaihd.net/hphotos-ak-xap1/v/t1.0-9/1461847_620993098012076_730628183140157389_n.jpg?oh=29fc0fc7d7cf538f8bd0416004b4b13f&oe=54FAE28F&__gda__=1426473842_887ce6c8b023ab0f04828d3176338ba5'
            }
            {
              component: 'item-text-component'
            }
          ]
        }
        {
          component: 'blue'
          name: 'blue'
        }
      ]
