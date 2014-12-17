class StringItem extends BaseItem
  
  @defaultConfig:
    text: '<p>Hello World</p>'
    disableReturn: true
    disableToolbar: true

  init: () ->
    @component.directives = 
      editable:
        bind: ->
          new MediumEditor @el
          $(@el).html @vm.text
          $(@el).on 'input', (e) =>
              @vm.text = $(e.target).html()
    
    Vue.component(@componentName, @component)