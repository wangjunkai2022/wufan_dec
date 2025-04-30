package com.mob.tools.network;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
/* loaded from: classes4.dex */
public class FilePart extends HTTPPart {

    /* renamed from: a  reason: collision with root package name */
    private File f53861a;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.mob.tools.network.HTTPPart
    public InputStream a() throws Throwable {
        return new FileInputStream(this.f53861a);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.mob.tools.network.HTTPPart
    public long b() throws Throwable {
        return this.f53861a.length();
    }

    public void setFile(File file) {
        this.f53861a = file;
    }

    public String toString() {
        return this.f53861a.toString();
    }

    public void setFile(String str) {
        this.f53861a = new File(str);
    }
}
