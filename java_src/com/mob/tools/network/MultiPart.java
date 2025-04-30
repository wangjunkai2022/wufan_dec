package com.mob.tools.network;

import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes4.dex */
public class MultiPart extends HTTPPart {

    /* renamed from: a  reason: collision with root package name */
    private ArrayList<HTTPPart> f53866a = new ArrayList<>();

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.mob.tools.network.HTTPPart
    public InputStream a() throws Throwable {
        MultiPartInputStream multiPartInputStream = new MultiPartInputStream();
        Iterator<HTTPPart> it2 = this.f53866a.iterator();
        while (it2.hasNext()) {
            multiPartInputStream.addInputStream(it2.next().a());
        }
        return multiPartInputStream;
    }

    public MultiPart append(HTTPPart hTTPPart) throws Throwable {
        this.f53866a.add(hTTPPart);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.mob.tools.network.HTTPPart
    public long b() throws Throwable {
        Iterator<HTTPPart> it2 = this.f53866a.iterator();
        long j4 = 0;
        while (it2.hasNext()) {
            j4 += it2.next().b();
        }
        return j4;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        Iterator<HTTPPart> it2 = this.f53866a.iterator();
        while (it2.hasNext()) {
            sb.append(it2.next().toString());
        }
        return sb.toString();
    }
}
