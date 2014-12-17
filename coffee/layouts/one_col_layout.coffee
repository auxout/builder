class OneColLayout extends LayoutBaseComponent
  
  @defaultConfig:
    innerStyle:
      'background-color': '#ff0000'
    container:
      items: [
        { item: 'image-item' }
        { item: 'string-item' }
      ]
  

  init: () ->