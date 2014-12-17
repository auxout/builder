class BaseItem extends Component

  constructor: (@config = {}) ->
    super @config

    @template =  "##{@componentName}"

    # VueComponentを初期化
    @component =
      template: "##{@componentName}"
      methods:
        addChild: ->
          @$parent.items.splice @$index+1, 0,
            component: 'item-image-component'
      data: =>
        @config

    # 子クラスにエントリーポイント
    @init?()