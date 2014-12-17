class ImageItem extends BaseItem
  
  @defaultConfig:
    src: 'https://scontent-b.xx.fbcdn.net/hphotos-xap1/v/t1.0-9/10702230_864194103591492_1872941301669900458_n.jpg?oh=cab12c388dfbace6baf9dcf11ba28193&oe=5543E106'


  init: () ->
    Vue.component(@componentName, @component)