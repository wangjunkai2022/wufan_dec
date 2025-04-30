package com.mob.tools.network;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
/* loaded from: classes4.dex */
public class StringPart extends HTTPPart {

    /* renamed from: a  reason: collision with root package name */
    private StringBuilder f53904a = new StringBuilder();

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.mob.tools.network.HTTPPart
    public InputStream a() throws Throwable {
        return new ByteArrayInputStream(this.f53904a.toString().getBytes("utf-8"));
    }

    public StringPart append(String str) {
        this.f53904a.append(str);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.mob.tools.network.HTTPPart
    public long b() throws Throwable {
        return this.f53904a.toString().getBytes("utf-8").length;
    }

    public String toString() {
        return this.f53904a.toString();
    }
}
