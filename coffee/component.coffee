class Component

  dashnize = (str) ->
    str = str.replace /[A-Z]/g, (char, index) ->
      (if index isnt 0 then "-" else "") + char.toLowerCase()
    str = str.replace /[0-9]+/g, (char, index) ->
      (if index isnt 0 then "-" else "") + char


  constructor: (@config = {}) ->
    
    # デフォルトコンフィグとマージ
    @config = $.extend @constructor.defaultConfig, @config

    # ダッシュナイズされたコンポーネント名
    @componentName = dashnize(@constructor.name)