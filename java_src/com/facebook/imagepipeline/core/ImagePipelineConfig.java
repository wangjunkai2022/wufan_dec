package com.facebook.imagepipeline.core;

import android.app.ActivityManager;
import android.content.Context;
import android.graphics.Bitmap;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.facebook.common.internal.VisibleForTesting;
import com.facebook.common.webp.b;
import com.facebook.imagepipeline.cache.h;
import com.facebook.imagepipeline.cache.n;
import com.facebook.imagepipeline.cache.q;
import com.facebook.imagepipeline.cache.t;
import com.facebook.imagepipeline.core.h;
import com.facebook.imagepipeline.memory.c0;
import com.facebook.imagepipeline.producers.d0;
import com.facebook.imagepipeline.producers.s;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import javax.annotation.Nullable;
/* loaded from: classes.dex */
public class ImagePipelineConfig {
    private static DefaultImageRequestConfig sDefaultImageRequestConfig = new DefaultImageRequestConfig();
    private final Bitmap.Config mBitmapConfig;
    private final com.facebook.common.internal.k<q> mBitmapMemoryCacheParamsSupplier;
    private final h.c mBitmapMemoryCacheTrimStrategy;
    private final com.facebook.imagepipeline.cache.f mCacheKeyFactory;
    private final Context mContext;
    private final boolean mDiskCacheEnabled;
    private final boolean mDownsampleEnabled;
    private final com.facebook.common.internal.k<q> mEncodedMemoryCacheParamsSupplier;
    private final e mExecutorSupplier;
    private final f mFileCacheFactory;
    private final int mHttpNetworkTimeout;
    private final n mImageCacheStatsTracker;
    @Nullable
    private final com.facebook.imagepipeline.decoder.b mImageDecoder;
    @Nullable
    private final com.facebook.imagepipeline.decoder.c mImageDecoderConfig;
    private final h mImagePipelineExperiments;
    @Nullable
    private final com.facebook.imagepipeline.transcoder.d mImageTranscoderFactory;
    @Nullable
    private final Integer mImageTranscoderType;
    private final com.facebook.common.internal.k<Boolean> mIsPrefetchEnabledSupplier;
    private final com.facebook.cache.disk.b mMainDiskCacheConfig;
    private final int mMemoryChunkType;
    private final com.facebook.common.memory.c mMemoryTrimmableRegistry;
    private final d0 mNetworkFetcher;
    @Nullable
    private final com.facebook.imagepipeline.bitmaps.f mPlatformBitmapFactory;
    private final com.facebook.imagepipeline.memory.d0 mPoolFactory;
    private final com.facebook.imagepipeline.decoder.d mProgressiveJpegConfig;
    private final Set<r0.c> mRequestListeners;
    private final boolean mResizeAndRotateEnabledForNetwork;
    private final com.facebook.cache.disk.b mSmallImageDiskCacheConfig;

    /* loaded from: classes.dex */
    public static class Builder {
        private Bitmap.Config mBitmapConfig;
        private com.facebook.common.internal.k<q> mBitmapMemoryCacheParamsSupplier;
        private h.c mBitmapMemoryCacheTrimStrategy;
        private com.facebook.imagepipeline.cache.f mCacheKeyFactory;
        private final Context mContext;
        private boolean mDiskCacheEnabled;
        private boolean mDownsampleEnabled;
        private com.facebook.common.internal.k<q> mEncodedMemoryCacheParamsSupplier;
        private e mExecutorSupplier;
        private final h.b mExperimentsBuilder;
        private f mFileCacheFactory;
        private int mHttpConnectionTimeout;
        private n mImageCacheStatsTracker;
        private com.facebook.imagepipeline.decoder.b mImageDecoder;
        private com.facebook.imagepipeline.decoder.c mImageDecoderConfig;
        private com.facebook.imagepipeline.transcoder.d mImageTranscoderFactory;
        @Nullable
        private Integer mImageTranscoderType;
        private com.facebook.common.internal.k<Boolean> mIsPrefetchEnabledSupplier;
        private com.facebook.cache.disk.b mMainDiskCacheConfig;
        @Nullable
        private Integer mMemoryChunkType;
        private com.facebook.common.memory.c mMemoryTrimmableRegistry;
        private d0 mNetworkFetcher;
        private com.facebook.imagepipeline.bitmaps.f mPlatformBitmapFactory;
        private com.facebook.imagepipeline.memory.d0 mPoolFactory;
        private com.facebook.imagepipeline.decoder.d mProgressiveJpegConfig;
        private Set<r0.c> mRequestListeners;
        private boolean mResizeAndRotateEnabledForNetwork;
        private com.facebook.cache.disk.b mSmallImageDiskCacheConfig;

        public ImagePipelineConfig build() {
            return new ImagePipelineConfig(this);
        }

        public h.b experiment() {
            return this.mExperimentsBuilder;
        }

        @Nullable
        public Integer getImageTranscoderType() {
            return this.mImageTranscoderType;
        }

        @Nullable
        public Integer getMemoryChunkType() {
            return this.mMemoryChunkType;
        }

        public boolean isDiskCacheEnabled() {
            return this.mDiskCacheEnabled;
        }

        public boolean isDownsampleEnabled() {
            return this.mDownsampleEnabled;
        }

        public Builder setBitmapMemoryCacheParamsSupplier(com.facebook.common.internal.k<q> kVar) {
            this.mBitmapMemoryCacheParamsSupplier = (com.facebook.common.internal.k) com.facebook.common.internal.h.i(kVar);
            return this;
        }

        public Builder setBitmapMemoryCacheTrimStrategy(h.c cVar) {
            this.mBitmapMemoryCacheTrimStrategy = cVar;
            return this;
        }

        public Builder setBitmapsConfig(Bitmap.Config config) {
            this.mBitmapConfig = config;
            return this;
        }

        public Builder setCacheKeyFactory(com.facebook.imagepipeline.cache.f fVar) {
            this.mCacheKeyFactory = fVar;
            return this;
        }

        public Builder setDiskCacheEnabled(boolean z3) {
            this.mDiskCacheEnabled = z3;
            return this;
        }

        public Builder setDownsampleEnabled(boolean z3) {
            this.mDownsampleEnabled = z3;
            return this;
        }

        public Builder setEncodedMemoryCacheParamsSupplier(com.facebook.common.internal.k<q> kVar) {
            this.mEncodedMemoryCacheParamsSupplier = (com.facebook.common.internal.k) com.facebook.common.internal.h.i(kVar);
            return this;
        }

        public Builder setExecutorSupplier(e eVar) {
            this.mExecutorSupplier = eVar;
            return this;
        }

        public Builder setFileCacheFactory(f fVar) {
            this.mFileCacheFactory = fVar;
            return this;
        }

        public Builder setHttpConnectionTimeout(int i2) {
            this.mHttpConnectionTimeout = i2;
            return this;
        }

        public Builder setImageCacheStatsTracker(n nVar) {
            this.mImageCacheStatsTracker = nVar;
            return this;
        }

        public Builder setImageDecoder(com.facebook.imagepipeline.decoder.b bVar) {
            this.mImageDecoder = bVar;
            return this;
        }

        public Builder setImageDecoderConfig(com.facebook.imagepipeline.decoder.c cVar) {
            this.mImageDecoderConfig = cVar;
            return this;
        }

        public Builder setImageTranscoderFactory(com.facebook.imagepipeline.transcoder.d dVar) {
            this.mImageTranscoderFactory = dVar;
            return this;
        }

        public Builder setImageTranscoderType(int i2) {
            this.mImageTranscoderType = Integer.valueOf(i2);
            return this;
        }

        public Builder setIsPrefetchEnabledSupplier(com.facebook.common.internal.k<Boolean> kVar) {
            this.mIsPrefetchEnabledSupplier = kVar;
            return this;
        }

        public Builder setMainDiskCacheConfig(com.facebook.cache.disk.b bVar) {
            this.mMainDiskCacheConfig = bVar;
            return this;
        }

        public Builder setMemoryChunkType(int i2) {
            this.mMemoryChunkType = Integer.valueOf(i2);
            return this;
        }

        public Builder setMemoryTrimmableRegistry(com.facebook.common.memory.c cVar) {
            this.mMemoryTrimmableRegistry = cVar;
            return this;
        }

        public Builder setNetworkFetcher(d0 d0Var) {
            this.mNetworkFetcher = d0Var;
            return this;
        }

        public Builder setPlatformBitmapFactory(com.facebook.imagepipeline.bitmaps.f fVar) {
            this.mPlatformBitmapFactory = fVar;
            return this;
        }

        public Builder setPoolFactory(com.facebook.imagepipeline.memory.d0 d0Var) {
            this.mPoolFactory = d0Var;
            return this;
        }

        public Builder setProgressiveJpegConfig(com.facebook.imagepipeline.decoder.d dVar) {
            this.mProgressiveJpegConfig = dVar;
            return this;
        }

        public Builder setRequestListeners(Set<r0.c> set) {
            this.mRequestListeners = set;
            return this;
        }

        public Builder setResizeAndRotateEnabledForNetwork(boolean z3) {
            this.mResizeAndRotateEnabledForNetwork = z3;
            return this;
        }

        public Builder setSmallImageDiskCacheConfig(com.facebook.cache.disk.b bVar) {
            this.mSmallImageDiskCacheConfig = bVar;
            return this;
        }

        private Builder(Context context) {
            this.mDownsampleEnabled = false;
            this.mImageTranscoderType = null;
            this.mMemoryChunkType = null;
            this.mResizeAndRotateEnabledForNetwork = true;
            this.mHttpConnectionTimeout = -1;
            this.mExperimentsBuilder = new h.b(this);
            this.mDiskCacheEnabled = true;
            this.mContext = (Context) com.facebook.common.internal.h.i(context);
        }
    }

    /* loaded from: classes2.dex */
    public static class DefaultImageRequestConfig {
        private boolean mProgressiveRenderingEnabled;

        public boolean isProgressiveRenderingEnabled() {
            return this.mProgressiveRenderingEnabled;
        }

        public void setProgressiveRenderingEnabled(boolean z3) {
            this.mProgressiveRenderingEnabled = z3;
        }

        private DefaultImageRequestConfig() {
            this.mProgressiveRenderingEnabled = false;
        }
    }

    public static DefaultImageRequestConfig getDefaultImageRequestConfig() {
        return sDefaultImageRequestConfig;
    }

    private static com.facebook.cache.disk.b getDefaultMainDiskCacheConfig(Context context) {
        try {
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.a("DiskCacheConfig.getDefaultMainDiskCacheConfig");
            }
            return com.facebook.cache.disk.b.l(context).m();
        } finally {
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.c();
            }
        }
    }

    public static Builder newBuilder(Context context) {
        return new Builder(context);
    }

    @VisibleForTesting
    static void resetDefaultRequestConfig() {
        sDefaultImageRequestConfig = new DefaultImageRequestConfig();
    }

    private static void setWebpBitmapFactory(com.facebook.common.webp.b bVar, h hVar, com.facebook.common.webp.a aVar) {
        com.facebook.common.webp.c.f11777d = bVar;
        b.a i2 = hVar.i();
        if (i2 != null) {
            bVar.c(i2);
        }
        if (aVar != null) {
            bVar.a(aVar);
        }
    }

    public Bitmap.Config getBitmapConfig() {
        return this.mBitmapConfig;
    }

    public com.facebook.common.internal.k<q> getBitmapMemoryCacheParamsSupplier() {
        return this.mBitmapMemoryCacheParamsSupplier;
    }

    public h.c getBitmapMemoryCacheTrimStrategy() {
        return this.mBitmapMemoryCacheTrimStrategy;
    }

    public com.facebook.imagepipeline.cache.f getCacheKeyFactory() {
        return this.mCacheKeyFactory;
    }

    public Context getContext() {
        return this.mContext;
    }

    public com.facebook.common.internal.k<q> getEncodedMemoryCacheParamsSupplier() {
        return this.mEncodedMemoryCacheParamsSupplier;
    }

    public e getExecutorSupplier() {
        return this.mExecutorSupplier;
    }

    public h getExperiments() {
        return this.mImagePipelineExperiments;
    }

    public f getFileCacheFactory() {
        return this.mFileCacheFactory;
    }

    public n getImageCacheStatsTracker() {
        return this.mImageCacheStatsTracker;
    }

    @Nullable
    public com.facebook.imagepipeline.decoder.b getImageDecoder() {
        return this.mImageDecoder;
    }

    @Nullable
    public com.facebook.imagepipeline.decoder.c getImageDecoderConfig() {
        return this.mImageDecoderConfig;
    }

    @Nullable
    public com.facebook.imagepipeline.transcoder.d getImageTranscoderFactory() {
        return this.mImageTranscoderFactory;
    }

    @Nullable
    public Integer getImageTranscoderType() {
        return this.mImageTranscoderType;
    }

    public com.facebook.common.internal.k<Boolean> getIsPrefetchEnabledSupplier() {
        return this.mIsPrefetchEnabledSupplier;
    }

    public com.facebook.cache.disk.b getMainDiskCacheConfig() {
        return this.mMainDiskCacheConfig;
    }

    public int getMemoryChunkType() {
        return this.mMemoryChunkType;
    }

    public com.facebook.common.memory.c getMemoryTrimmableRegistry() {
        return this.mMemoryTrimmableRegistry;
    }

    public d0 getNetworkFetcher() {
        return this.mNetworkFetcher;
    }

    @Nullable
    public com.facebook.imagepipeline.bitmaps.f getPlatformBitmapFactory() {
        return this.mPlatformBitmapFactory;
    }

    public com.facebook.imagepipeline.memory.d0 getPoolFactory() {
        return this.mPoolFactory;
    }

    public com.facebook.imagepipeline.decoder.d getProgressiveJpegConfig() {
        return this.mProgressiveJpegConfig;
    }

    public Set<r0.c> getRequestListeners() {
        return Collections.unmodifiableSet(this.mRequestListeners);
    }

    public com.facebook.cache.disk.b getSmallImageDiskCacheConfig() {
        return this.mSmallImageDiskCacheConfig;
    }

    public boolean isDiskCacheEnabled() {
        return this.mDiskCacheEnabled;
    }

    public boolean isDownsampleEnabled() {
        return this.mDownsampleEnabled;
    }

    public boolean isResizeAndRotateEnabledForNetwork() {
        return this.mResizeAndRotateEnabledForNetwork;
    }

    private ImagePipelineConfig(Builder builder) {
        com.facebook.imagepipeline.cache.f fVar;
        n nVar;
        com.facebook.common.memory.c cVar;
        com.facebook.imagepipeline.memory.d0 d0Var;
        com.facebook.common.webp.b j4;
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.a("ImagePipelineConfig()");
        }
        h m4 = builder.mExperimentsBuilder.m();
        this.mImagePipelineExperiments = m4;
        this.mBitmapMemoryCacheParamsSupplier = builder.mBitmapMemoryCacheParamsSupplier == null ? new com.facebook.imagepipeline.cache.i((ActivityManager) builder.mContext.getSystemService(TTDownloadField.TT_ACTIVITY)) : builder.mBitmapMemoryCacheParamsSupplier;
        this.mBitmapMemoryCacheTrimStrategy = builder.mBitmapMemoryCacheTrimStrategy == null ? new com.facebook.imagepipeline.cache.d() : builder.mBitmapMemoryCacheTrimStrategy;
        this.mBitmapConfig = builder.mBitmapConfig == null ? Bitmap.Config.ARGB_8888 : builder.mBitmapConfig;
        if (builder.mCacheKeyFactory != null) {
            fVar = builder.mCacheKeyFactory;
        } else {
            fVar = com.facebook.imagepipeline.cache.j.f();
        }
        this.mCacheKeyFactory = fVar;
        this.mContext = (Context) com.facebook.common.internal.h.i(builder.mContext);
        this.mFileCacheFactory = builder.mFileCacheFactory == null ? new b(new d()) : builder.mFileCacheFactory;
        this.mDownsampleEnabled = builder.mDownsampleEnabled;
        this.mEncodedMemoryCacheParamsSupplier = builder.mEncodedMemoryCacheParamsSupplier == null ? new com.facebook.imagepipeline.cache.k() : builder.mEncodedMemoryCacheParamsSupplier;
        if (builder.mImageCacheStatsTracker != null) {
            nVar = builder.mImageCacheStatsTracker;
        } else {
            nVar = t.n();
        }
        this.mImageCacheStatsTracker = nVar;
        this.mImageDecoder = builder.mImageDecoder;
        this.mImageTranscoderFactory = getImageTranscoderFactory(builder);
        this.mImageTranscoderType = builder.mImageTranscoderType;
        this.mIsPrefetchEnabledSupplier = builder.mIsPrefetchEnabledSupplier == null ? new com.facebook.common.internal.k<Boolean>() { // from class: com.facebook.imagepipeline.core.ImagePipelineConfig.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.facebook.common.internal.k
            public Boolean get() {
                return Boolean.TRUE;
            }
        } : builder.mIsPrefetchEnabledSupplier;
        com.facebook.cache.disk.b defaultMainDiskCacheConfig = builder.mMainDiskCacheConfig == null ? getDefaultMainDiskCacheConfig(builder.mContext) : builder.mMainDiskCacheConfig;
        this.mMainDiskCacheConfig = defaultMainDiskCacheConfig;
        if (builder.mMemoryTrimmableRegistry != null) {
            cVar = builder.mMemoryTrimmableRegistry;
        } else {
            cVar = com.facebook.common.memory.d.c();
        }
        this.mMemoryTrimmableRegistry = cVar;
        this.mMemoryChunkType = getMemoryChunkType(builder, m4);
        int i2 = builder.mHttpConnectionTimeout < 0 ? s.f13217g : builder.mHttpConnectionTimeout;
        this.mHttpNetworkTimeout = i2;
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.a("ImagePipelineConfig->mNetworkFetcher");
        }
        this.mNetworkFetcher = builder.mNetworkFetcher == null ? new s(i2) : builder.mNetworkFetcher;
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.c();
        }
        this.mPlatformBitmapFactory = builder.mPlatformBitmapFactory;
        if (builder.mPoolFactory != null) {
            d0Var = builder.mPoolFactory;
        } else {
            d0Var = new com.facebook.imagepipeline.memory.d0(c0.m().m());
        }
        this.mPoolFactory = d0Var;
        this.mProgressiveJpegConfig = builder.mProgressiveJpegConfig == null ? new com.facebook.imagepipeline.decoder.f() : builder.mProgressiveJpegConfig;
        this.mRequestListeners = builder.mRequestListeners == null ? new HashSet<>() : builder.mRequestListeners;
        this.mResizeAndRotateEnabledForNetwork = builder.mResizeAndRotateEnabledForNetwork;
        this.mSmallImageDiskCacheConfig = builder.mSmallImageDiskCacheConfig != null ? builder.mSmallImageDiskCacheConfig : defaultMainDiskCacheConfig;
        this.mImageDecoderConfig = builder.mImageDecoderConfig;
        this.mExecutorSupplier = builder.mExecutorSupplier == null ? new a(d0Var.d()) : builder.mExecutorSupplier;
        this.mDiskCacheEnabled = builder.mDiskCacheEnabled;
        com.facebook.common.webp.b h4 = m4.h();
        if (h4 != null) {
            setWebpBitmapFactory(h4, m4, new com.facebook.imagepipeline.bitmaps.d(getPoolFactory()));
        } else if (m4.o() && com.facebook.common.webp.c.f11774a && (j4 = com.facebook.common.webp.c.j()) != null) {
            setWebpBitmapFactory(j4, m4, new com.facebook.imagepipeline.bitmaps.d(getPoolFactory()));
        }
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.c();
        }
    }

    @Nullable
    private static com.facebook.imagepipeline.transcoder.d getImageTranscoderFactory(Builder builder) {
        if (builder.mImageTranscoderFactory == null || builder.mImageTranscoderType == null) {
            if (builder.mImageTranscoderFactory != null) {
                return builder.mImageTranscoderFactory;
            }
            return null;
        }
        throw new IllegalStateException("You can't define a custom ImageTranscoderFactory and provide an ImageTranscoderType");
    }

    private static int getMemoryChunkType(Builder builder, h hVar) {
        if (builder.mMemoryChunkType != null) {
            return builder.mMemoryChunkType.intValue();
        }
        return hVar.m() ? 1 : 0;
    }
}
