class LayoutBaseComponent extends Component

  constructor: (@config = {}) ->
    super @config
    
    # VueComponentを初期化
    Vue.component @componentName,
      template: "##{@componentName}"
      methods:
        addChild: ->
          @$parent.items.splice @$index+1, 0,
            component: 'item-image-component'
      data: =>
        @config

    # 子クラスにエントリーポイント
    @init?()