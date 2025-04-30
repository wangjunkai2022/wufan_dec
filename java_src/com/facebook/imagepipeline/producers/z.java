package com.facebook.imagepipeline.producers;

import android.content.res.AssetFileDescriptor;
import android.content.res.Resources;
import com.facebook.imagepipeline.request.ImageRequest;
import java.io.IOException;
import java.util.concurrent.Executor;
/* compiled from: LocalResourceFetchProducer.java */
/* loaded from: classes2.dex */
public class z extends x {

    /* renamed from: d  reason: collision with root package name */
    public static final String f13290d = "LocalResourceFetchProducer";

    /* renamed from: c  reason: collision with root package name */
    private final Resources f13291c;

    public z(Executor executor, com.facebook.common.memory.g gVar, Resources resources) {
        super(executor, gVar);
        this.f13291c = resources;
    }

    private int g(ImageRequest imageRequest) {
        AssetFileDescriptor assetFileDescriptor = null;
        try {
            assetFileDescriptor = this.f13291c.openRawResourceFd(h(imageRequest));
            int length = (int) assetFileDescriptor.getLength();
            try {
                assetFileDescriptor.close();
            } catch (IOException unused) {
            }
            return length;
        } catch (Resources.NotFoundException unused2) {
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

    private static int h(ImageRequest imageRequest) {
        return Integer.parseInt(imageRequest.t().getPath().substring(1));
    }

    @Override // com.facebook.imagepipeline.producers.x
    protected com.facebook.imagepipeline.image.e d(ImageRequest imageRequest) throws IOException {
        return e(this.f13291c.openRawResource(h(imageRequest)), g(imageRequest));
    }

    @Override // com.facebook.imagepipeline.producers.x
    protected String f() {
        return f13290d;
    }
}
