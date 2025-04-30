package com.papa91.utils;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.Handler;
import java.lang.ref.SoftReference;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
/* loaded from: classes4.dex */
public class AsyncImageLoader {
    private static LoaderImpl impl;
    private static HashSet<String> sDownloadingSet = new HashSet<>();
    private static ExecutorService sExecutorService;
    private static Map<String, SoftReference<Bitmap>> sImageCache;
    private Handler handler = new Handler();

    /* loaded from: classes4.dex */
    public interface ImageCallback {
        void onImageLoaded(Bitmap bitmap, String str);
    }

    static {
        HashMap hashMap = new HashMap();
        sImageCache = hashMap;
        impl = new LoaderImpl(hashMap);
    }

    public AsyncImageLoader(Context context) {
        startThreadPoolIfNecessary();
        setCachedDir(context.getCacheDir().getAbsolutePath());
    }

    public static void startThreadPoolIfNecessary() {
        ExecutorService executorService = sExecutorService;
        if (executorService == null || executorService.isShutdown() || sExecutorService.isTerminated()) {
            sExecutorService = Executors.newFixedThreadPool(3);
        }
    }

    public void downloadImage(String str, ImageCallback imageCallback) {
        downloadImage(str, true, imageCallback);
    }

    public void preLoadNextImage(String str) {
        downloadImage(str, null);
    }

    public void setCache2File(boolean z3) {
        impl.setCache2File(z3);
    }

    public void setCachedDir(String str) {
        impl.setCachedDir(str);
    }

    public void downloadImage(final String str, final boolean z3, final ImageCallback imageCallback) {
        if (sDownloadingSet.contains(str)) {
            return;
        }
        Bitmap bitmapFromMemory = impl.getBitmapFromMemory(str);
        if (bitmapFromMemory == null) {
            sDownloadingSet.add(str);
            sExecutorService.submit(new Runnable() { // from class: com.papa91.utils.AsyncImageLoader.1
                @Override // java.lang.Runnable
                public void run() {
                    final Bitmap bitmapFromUrl = AsyncImageLoader.impl.getBitmapFromUrl(str, z3);
                    AsyncImageLoader.this.handler.post(new Runnable() { // from class: com.papa91.utils.AsyncImageLoader.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                            ImageCallback imageCallback2 = imageCallback;
                            if (imageCallback2 != null) {
                                imageCallback2.onImageLoaded(bitmapFromUrl, str);
                            }
                            AsyncImageLoader.sDownloadingSet.remove(str);
                        }
                    });
                }
            });
        } else if (imageCallback != null) {
            imageCallback.onImageLoaded(bitmapFromMemory, str);
        }
    }
}
