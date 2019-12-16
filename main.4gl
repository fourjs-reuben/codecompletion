IMPORT FGL import_fgl
MAIN

    #at this point, auto=completion offers only aa_same_module, aa_external_library and aa_imported_module
    #CALL aa

    CALL aa_same_module() -- same module
    CALL aa_internal_module() -- different module compiled with application (internal_42m.4gl)
    CALL aa_internal_library() -- different module linked as library (internal_lib/internal_lib.4gl)
    CALL aa_external_module() -- different module linked as external dependency .42m
    CALL aa_external_library() -- different module in a library linked as an external dependncy .42x
    CALL import_fgl.aa_imported_module() -- import fgl    

    #at this point, auto=completion offers all options
    #CALL aa   

END MAIN

FUNCTION aa_same_module()
    DISPLAY "aa_same_module"
END FUNCTION