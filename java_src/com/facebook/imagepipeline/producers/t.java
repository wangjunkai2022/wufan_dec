package com.facebook.imagepipeline.producers;

import android.content.res.AssetFileDescriptor;
import android.content.res.AssetManager;
import com.facebook.imagepipeline.request.ImageRequest;
import java.io.IOException;
import java.util.concurrent.Executor;
/* compiled from: LocalAssetFetchProducer.java */
/* loaded from: classes2.dex */
public class t extends x {

    /* renamed from: d  reason: collision with root package name */
    public static final String f13228d = "LocalAssetFetchProducer";

    /* renamed from: c  reason: collision with root package name */
    private final AssetManager f13229c;

    public t(Executor executor, com.facebook.common.memory.g gVar, AssetManager assetManager) {
        super(executor, gVar);
        this.f13229c = assetManager;
    }

    private static String g(ImageRequest imageRequest) {
        return imageRequest.t().getPath().substring(1);
    }

    private int h(ImageRequest imageRequest) {
        AssetFileDescriptor assetFileDescriptor = null;
        try {
            assetFileDescriptor = this.f13229c.openFd(g(imageRequest));
            int length = (int) assetFileDescriptor.getLength();
            try {
                assetFileDescriptor.close();
            } catch (IOException unused) {
            }
            return length;
        } catch (IOException unused2) {
            if (assetFileDescriptor != null) {
                try {
                    assetFileDescriptor.close();
                } catch (IOException unused3) {
                }
            }
            return -1;
        } catch (Throwable th) {
            if (assetFileDescriptor != null) {
                try {
                    assetFileDescriptor.close();
                } catch (IOException unused4) {
                }
            }
            throw th;
        }
    }

    @Override // com.facebook.imagepipeline.producers.x
    protected com.facebook.imagepipeline.image.e d(ImageRequest imageRequest) throws IOException {
        return e(this.f13229c.open(g(imageRequest), 2), h(imageRequest));
    }

    @Override // com.facebook.imagepipeline.producers.x
    protected String f() {
        return f13228d;
    }
}
