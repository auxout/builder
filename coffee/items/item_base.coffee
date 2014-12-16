class ItemBaseComponent

  dashnize = (str) ->
    str.replace(/([a-z])([A-Z])/g, '$1-$2').toLowerCase()

  constructor: (@config = {}) ->

    # デフォルトコンフィグとマージ
    @config = $.extend @constructor.defaultConfig, @config

    # ダッシュナイズされたコンポーネント名
    @componentName = dashnize(@constructor.name)

    # VueComponentを初期化
    Vue.component @componentName,
      template: "##{@componentName}"
      data: () =>
        @config


    # 子クラスにエントリーポイント
    @init?()