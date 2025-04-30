package com.facebook.imagepipeline.decoder;

import com.facebook.imageformat.c;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* compiled from: ImageDecoderConfig.java */
/* loaded from: classes2.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private final Map<com.facebook.imageformat.c, com.facebook.imagepipeline.decoder.b> f12733a;

    /* renamed from: b  reason: collision with root package name */
    private final List<c.a> f12734b;

    /* compiled from: ImageDecoderConfig.java */
    /* loaded from: classes2.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        private Map<com.facebook.imageformat.c, com.facebook.imagepipeline.decoder.b> f12735a;

        /* renamed from: b  reason: collision with root package name */
        private List<c.a> f12736b;

        public b c(com.facebook.imageformat.c cVar, c.a aVar, com.facebook.imagepipeline.decoder.b bVar) {
            if (this.f12736b == null) {
                this.f12736b = new ArrayList();
            }
            this.f12736b.add(aVar);
            e(cVar, bVar);
            return this;
        }

        public c d() {
            return new c(this);
        }

        public b e(com.facebook.imageformat.c cVar, com.facebook.imagepipeline.decoder.b bVar) {
            if (this.f12735a == null) {
                this.f12735a = new HashMap();
            }
            this.f12735a.put(cVar, bVar);
            return this;
        }
    }

    public static b c() {
        return new b();
    }

    public Map<com.facebook.imageformat.c, com.facebook.imagepipeline.decoder.b> a() {
        return this.f12733a;
    }

    public List<c.a> b() {
        return this.f12734b;
    }

    private c(b bVar) {
        this.f12733a = bVar.f12735a;
        this.f12734b = bVar.f12736b;
    }
}
