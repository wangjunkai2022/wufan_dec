package com.alipay.security.mobile.module.deviceinfo;

import java.io.File;
import java.io.FileFilter;
import java.util.regex.Pattern;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class d implements FileFilter {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ c f9904a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(c cVar) {
        this.f9904a = cVar;
    }

    @Override // java.io.FileFilter
    public final boolean accept(File file) {
        return Pattern.matches("cpu[0-9]+", file.getName());
    }
}
