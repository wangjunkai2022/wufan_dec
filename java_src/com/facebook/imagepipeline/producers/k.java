package com.facebook.imagepipeline.producers;

import android.net.Uri;
import android.util.Base64;
import com.facebook.common.internal.VisibleForTesting;
import com.facebook.imagepipeline.request.ImageRequest;
import io.netty.handler.codec.http.HttpHeaders;
import java.io.ByteArrayInputStream;
import java.io.IOException;
/* compiled from: DataFetchProducer.java */
/* loaded from: classes2.dex */
public class k extends x {

    /* renamed from: c  reason: collision with root package name */
    public static final String f13106c = "DataFetchProducer";

    public k(com.facebook.common.memory.g gVar) {
        super(com.facebook.common.executors.a.a(), gVar);
    }

    @VisibleForTesting
    static byte[] g(String str) {
        com.facebook.common.internal.h.d(str.substring(0, 5).equals("data:"));
        int indexOf = str.indexOf(44);
        String substring = str.substring(indexOf + 1, str.length());
        if (h(str.substring(0, indexOf))) {
            return Base64.decode(substring, 0);
        }
        return Uri.decode(substring).getBytes();
    }

    @VisibleForTesting
    static boolean h(String str) {
        if (str.contains(";")) {
            String[] split = str.split(";");
            return split[split.length - 1].equals(HttpHeaders.Values.BASE64);
        }
        return false;
    }

    @Override // com.facebook.imagepipeline.producers.x
    protected com.facebook.imagepipeline.image.e d(ImageRequest imageRequest) throws IOException {
        byte[] g4 = g(imageRequest.t().toString());
        return c(new ByteArrayInputStream(g4), g4.length);
    }

    @Override // com.facebook.imagepipeline.producers.x
    protected String f() {
        return f13106c;
    }
}
