package com.facebook.imagepipeline.producers;

import com.facebook.imagepipeline.producers.r;
import java.io.IOException;
import java.io.InputStream;
import java.util.Map;
import javax.annotation.Nullable;
/* compiled from: NetworkFetcher.java */
/* loaded from: classes.dex */
public interface d0<FETCH_STATE extends r> {

    /* compiled from: NetworkFetcher.java */
    /* loaded from: classes2.dex */
    public interface a {
        void a();

        void b(InputStream inputStream, int i2) throws IOException;

        void onFailure(Throwable th);
    }

    void a(FETCH_STATE fetch_state, a aVar);

    void b(FETCH_STATE fetch_state, int i2);

    boolean c(FETCH_STATE fetch_state);

    @Nullable
    Map<String, String> d(FETCH_STATE fetch_state, int i2);

    FETCH_STATE e(Consumer<com.facebook.imagepipeline.image.e> consumer, k0 k0Var);
}
