class TextItem extends BaseItem
  
  @defaultConfig:
    model:
      text: 'aaa'
      size: '24px'
      color: '#ff0000'
      align: 'center'
    editable:
      disableReturn: false
      disableToolbar: false

  init: () ->
    Vue.component(@componentName, @component)