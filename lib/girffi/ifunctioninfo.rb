module GirFFI
  class IFunctionInfo < ICallableInfo
    def symbol; Lib.g_function_info_get_symbol @gobj; end
    def flags; Lib.g_function_info_get_flags @gobj; end
  end
end