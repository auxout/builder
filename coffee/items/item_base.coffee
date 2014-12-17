class ItemBaseComponent extends Component

  constructor: (@config = {}) ->
    super @config

    # VueComponentを初期化
    @component = Vue.component @componentName,
      template: "##{@componentName}"
      directives:
        editable:
          bind: ->
            new MediumEditor @el, @vm.editable
            $(@el).html @vm.model.text
            $(@el).on 'input', (e) =>
                @vm.model.text = $(e.target).html()
      methods:
        addChild: ->
          @$parent.items.splice @$index+1, 0,
            component: 'item-image-component'

      data: =>
        @config

    # 子クラスにエントリーポイント
    @init?()