package com.xinzhu.overmind.custom;

import java.util.LinkedHashMap;
/* loaded from: classes.dex */
public abstract class CustomCallback {
    public abstract LinkedHashMap<String, String> customIORedirect(String pkgName, int userId);

    public abstract void customLoadLibgggg(String pkgName, int userId);

    public abstract void customOnSoLoaded(String name, long addr);
}
