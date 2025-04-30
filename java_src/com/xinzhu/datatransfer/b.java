package com.xinzhu.datatransfer;

import com.xinzhu.overmind.Overmind;
import java.io.File;
/* compiled from: TransferEnvironment.java */
/* loaded from: classes.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private static File f62321a = new File(Overmind.getContext().getExternalFilesDir(""), "Android_va");

    public static File a() {
        return new File(com.xinzhu.overmind.a.S(), "data/app/system");
    }

    public static File b() {
        return new File(com.xinzhu.overmind.a.S(), "data/system");
    }

    public static File c() {
        return f62321a;
    }

    public static File d(String packageName) {
        return new File(com.xinzhu.overmind.a.d(packageName), "package.ini");
    }

    public static File e() {
        return new File(a(), "packages.ini");
    }

    public static File f(String packageName) {
        return new File(com.xinzhu.overmind.a.d(packageName), "signature.ini");
    }

    public static File g() {
        return new File(a(), "uid-list.ini");
    }
}
