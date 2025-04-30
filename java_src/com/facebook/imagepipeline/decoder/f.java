package com.facebook.imagepipeline.decoder;

import com.facebook.imagepipeline.image.g;
import com.facebook.imagepipeline.image.h;
import java.util.Collections;
import java.util.List;
/* compiled from: SimpleProgressiveJpegConfig.java */
/* loaded from: classes2.dex */
public class f implements d {

    /* renamed from: a  reason: collision with root package name */
    private final c f12753a;

    /* compiled from: SimpleProgressiveJpegConfig.java */
    /* loaded from: classes2.dex */
    private static class b implements c {
        private b() {
        }

        @Override // com.facebook.imagepipeline.decoder.f.c
        public List<Integer> a() {
            return Collections.EMPTY_LIST;
        }

        @Override // com.facebook.imagepipeline.decoder.f.c
        public int b() {
            return 0;
        }
    }

    /* compiled from: SimpleProgressiveJpegConfig.java */
    /* loaded from: classes2.dex */
    public interface c {
        List<Integer> a();

        int b();
    }

    public f() {
        this(new b());
    }

    @Override // com.facebook.imagepipeline.decoder.d
    public int a(int i2) {
        List<Integer> a4 = this.f12753a.a();
        if (a4 == null || a4.isEmpty()) {
            return i2 + 1;
        }
        for (int i4 = 0; i4 < a4.size(); i4++) {
            if (a4.get(i4).intValue() > i2) {
                return a4.get(i4).intValue();
            }
        }
        return Integer.MAX_VALUE;
    }

    @Override // com.facebook.imagepipeline.decoder.d
    public h b(int i2) {
        return g.d(i2, i2 >= this.f12753a.b(), false);
    }

    public f(c cVar) {
        this.f12753a = (c) com.facebook.common.internal.h.i(cVar);
    }
}
