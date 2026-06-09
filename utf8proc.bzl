# MSVC has no /std:c99, so /std:c11 is the lowest flag that guarantees >= C99.
UTF8PROC_COPTS = select({
    "//:msvc_like": ["/std:c11"],
    "//conditions:default": ["-std=c99"],
})
