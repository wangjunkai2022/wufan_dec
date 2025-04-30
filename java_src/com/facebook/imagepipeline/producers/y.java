package com.facebook.imagepipeline.producers;

import com.facebook.imagepipeline.request.ImageRequest;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.concurrent.Executor;
/* compiled from: LocalFileFetchProducer.java */
/* loaded from: classes2.dex */
public class y extends x {

    /* renamed from: c  reason: collision with root package name */
    public static final String f13286c = "LocalFileFetchProducer";

    public y(Executor executor, com.facebook.common.memory.g gVar) {
        super(executor, gVar);
    }

    @Override // com.facebook.imagepipeline.producers.x
    protected com.facebook.imagepipeline.image.e d(ImageRequest imageRequest) throws IOException {
        return e(new FileInputStream(imageRequest.s().toString()), (int) imageRequest.s().length());
    }

    @Override // com.facebook.imagepipeline.producers.x
    protected String f() {
        return f13286c;
    }
}
