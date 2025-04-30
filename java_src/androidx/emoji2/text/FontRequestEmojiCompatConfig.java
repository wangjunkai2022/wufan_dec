package androidx.emoji2.text;

import android.content.Context;
import android.content.pm.PackageManager;
import android.database.ContentObserver;
import android.graphics.Typeface;
import android.net.Uri;
import android.os.Handler;
import android.os.SystemClock;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.WorkerThread;
import androidx.core.graphics.TypefaceCompatUtil;
import androidx.core.os.TraceCompat;
import androidx.core.provider.FontRequest;
import androidx.core.provider.FontsContractCompat;
import androidx.core.util.Preconditions;
import androidx.emoji2.text.EmojiCompat;
import androidx.emoji2.text.FontRequestEmojiCompatConfig;
import java.nio.ByteBuffer;
import java.util.concurrent.Executor;
import java.util.concurrent.ThreadPoolExecutor;
/* loaded from: classes.dex */
public class FontRequestEmojiCompatConfig extends EmojiCompat.Config {

    /* renamed from: j  reason: collision with root package name */
    private static final FontProviderHelper f5568j = new FontProviderHelper();

    /* loaded from: classes.dex */
    public static class ExponentialBackoffRetryPolicy extends RetryPolicy {

        /* renamed from: a  reason: collision with root package name */
        private final long f5569a;

        /* renamed from: b  reason: collision with root package name */
        private long f5570b;

        public ExponentialBackoffRetryPolicy(long j4) {
            this.f5569a = j4;
        }

        @Override // androidx.emoji2.text.FontRequestEmojiCompatConfig.RetryPolicy
        public long getRetryDelay() {
            if (this.f5570b == 0) {
                this.f5570b = SystemClock.uptimeMillis();
                return 0L;
            }
            long uptimeMillis = SystemClock.uptimeMillis() - this.f5570b;
            if (uptimeMillis > this.f5569a) {
                return -1L;
            }
            return Math.min(Math.max(uptimeMillis, 1000L), this.f5569a - uptimeMillis);
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    /* loaded from: classes.dex */
    public static class FontProviderHelper {
        @Nullable
        public Typeface buildTypeface(@NonNull Context context, @NonNull FontsContractCompat.FontInfo fontInfo) throws PackageManager.NameNotFoundException {
            return FontsContractCompat.buildTypeface(context, null, new FontsContractCompat.FontInfo[]{fontInfo});
        }

        @NonNull
        public FontsContractCompat.FontFamilyResult fetchFonts(@NonNull Context context, @NonNull FontRequest fontRequest) throws PackageManager.NameNotFoundException {
            return FontsContractCompat.fetchFonts(context, null, fontRequest);
        }

        public void registerObserver(@NonNull Context context, @NonNull Uri uri, @NonNull ContentObserver contentObserver) {
            context.getContentResolver().registerContentObserver(uri, false, contentObserver);
        }

        public void unregisterObserver(@NonNull Context context, @NonNull ContentObserver contentObserver) {
            context.getContentResolver().unregisterContentObserver(contentObserver);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class FontRequestMetadataLoader implements EmojiCompat.MetadataRepoLoader {

        /* renamed from: l  reason: collision with root package name */
        private static final String f5571l = "EmojiCompat.FontRequestEmojiCompatConfig.buildTypeface";
        @NonNull

        /* renamed from: a  reason: collision with root package name */
        private final Context f5572a;
        @NonNull

        /* renamed from: b  reason: collision with root package name */
        private final FontRequest f5573b;
        @NonNull

        /* renamed from: c  reason: collision with root package name */
        private final FontProviderHelper f5574c;
        @NonNull

        /* renamed from: d  reason: collision with root package name */
        private final Object f5575d = new Object();
        @Nullable
        @GuardedBy("mLock")

        /* renamed from: e  reason: collision with root package name */
        private Handler f5576e;
        @Nullable
        @GuardedBy("mLock")

        /* renamed from: f  reason: collision with root package name */
        private Executor f5577f;
        @Nullable
        @GuardedBy("mLock")

        /* renamed from: g  reason: collision with root package name */
        private ThreadPoolExecutor f5578g;
        @Nullable
        @GuardedBy("mLock")

        /* renamed from: h  reason: collision with root package name */
        private RetryPolicy f5579h;
        @Nullable
        @GuardedBy("mLock")

        /* renamed from: i  reason: collision with root package name */
        EmojiCompat.MetadataRepoLoaderCallback f5580i;
        @Nullable
        @GuardedBy("mLock")

        /* renamed from: j  reason: collision with root package name */
        private ContentObserver f5581j;
        @Nullable
        @GuardedBy("mLock")

        /* renamed from: k  reason: collision with root package name */
        private Runnable f5582k;

        FontRequestMetadataLoader(@NonNull Context context, @NonNull FontRequest fontRequest, @NonNull FontProviderHelper fontProviderHelper) {
            Preconditions.checkNotNull(context, "Context cannot be null");
            Preconditions.checkNotNull(fontRequest, "FontRequest cannot be null");
            this.f5572a = context.getApplicationContext();
            this.f5573b = fontRequest;
            this.f5574c = fontProviderHelper;
        }

        private void a() {
            synchronized (this.f5575d) {
                this.f5580i = null;
                ContentObserver contentObserver = this.f5581j;
                if (contentObserver != null) {
                    this.f5574c.unregisterObserver(this.f5572a, contentObserver);
                    this.f5581j = null;
                }
                Handler handler = this.f5576e;
                if (handler != null) {
                    handler.removeCallbacks(this.f5582k);
                }
                this.f5576e = null;
                ThreadPoolExecutor threadPoolExecutor = this.f5578g;
                if (threadPoolExecutor != null) {
                    threadPoolExecutor.shutdown();
                }
                this.f5577f = null;
                this.f5578g = null;
            }
        }

        @WorkerThread
        private FontsContractCompat.FontInfo d() {
            try {
                FontsContractCompat.FontFamilyResult fetchFonts = this.f5574c.fetchFonts(this.f5572a, this.f5573b);
                if (fetchFonts.getStatusCode() == 0) {
                    FontsContractCompat.FontInfo[] fonts = fetchFonts.getFonts();
                    if (fonts != null && fonts.length != 0) {
                        return fonts[0];
                    }
                    throw new RuntimeException("fetchFonts failed (empty result)");
                }
                throw new RuntimeException("fetchFonts failed (" + fetchFonts.getStatusCode() + ")");
            } catch (PackageManager.NameNotFoundException e4) {
                throw new RuntimeException("provider not found", e4);
            }
        }

        @RequiresApi(19)
        @WorkerThread
        private void e(Uri uri, long j4) {
            synchronized (this.f5575d) {
                Handler handler = this.f5576e;
                if (handler == null) {
                    handler = ConcurrencyHelpers.e();
                    this.f5576e = handler;
                }
                if (this.f5581j == null) {
                    ContentObserver contentObserver = new ContentObserver(handler) { // from class: androidx.emoji2.text.FontRequestEmojiCompatConfig.FontRequestMetadataLoader.1
                        @Override // android.database.ContentObserver
                        public void onChange(boolean z3, Uri uri2) {
                            FontRequestMetadataLoader.this.c();
                        }
                    };
                    this.f5581j = contentObserver;
                    this.f5574c.registerObserver(this.f5572a, uri, contentObserver);
                }
                if (this.f5582k == null) {
                    this.f5582k = new Runnable() { // from class: androidx.emoji2.text.e
                        @Override // java.lang.Runnable
                        public final void run() {
                            FontRequestEmojiCompatConfig.FontRequestMetadataLoader.this.c();
                        }
                    };
                }
                handler.postDelayed(this.f5582k, j4);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @RequiresApi(19)
        @WorkerThread
        public void b() {
            synchronized (this.f5575d) {
                if (this.f5580i == null) {
                    return;
                }
                try {
                    FontsContractCompat.FontInfo d4 = d();
                    int resultCode = d4.getResultCode();
                    if (resultCode == 2) {
                        synchronized (this.f5575d) {
                            RetryPolicy retryPolicy = this.f5579h;
                            if (retryPolicy != null) {
                                long retryDelay = retryPolicy.getRetryDelay();
                                if (retryDelay >= 0) {
                                    e(d4.getUri(), retryDelay);
                                    return;
                                }
                            }
                        }
                    }
                    if (resultCode == 0) {
                        TraceCompat.beginSection(f5571l);
                        Typeface buildTypeface = this.f5574c.buildTypeface(this.f5572a, d4);
                        ByteBuffer mmap = TypefaceCompatUtil.mmap(this.f5572a, null, d4.getUri());
                        if (mmap != null && buildTypeface != null) {
                            MetadataRepo create = MetadataRepo.create(buildTypeface, mmap);
                            TraceCompat.endSection();
                            synchronized (this.f5575d) {
                                EmojiCompat.MetadataRepoLoaderCallback metadataRepoLoaderCallback = this.f5580i;
                                if (metadataRepoLoaderCallback != null) {
                                    metadataRepoLoaderCallback.onLoaded(create);
                                }
                            }
                            a();
                            return;
                        }
                        throw new RuntimeException("Unable to open file.");
                    }
                    throw new RuntimeException("fetchFonts result is not OK. (" + resultCode + ")");
                } catch (Throwable th) {
                    synchronized (this.f5575d) {
                        EmojiCompat.MetadataRepoLoaderCallback metadataRepoLoaderCallback2 = this.f5580i;
                        if (metadataRepoLoaderCallback2 != null) {
                            metadataRepoLoaderCallback2.onFailed(th);
                        }
                        a();
                    }
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @RequiresApi(19)
        public void c() {
            synchronized (this.f5575d) {
                if (this.f5580i == null) {
                    return;
                }
                if (this.f5577f == null) {
                    ThreadPoolExecutor c4 = ConcurrencyHelpers.c("emojiCompat");
                    this.f5578g = c4;
                    this.f5577f = c4;
                }
                this.f5577f.execute(new Runnable() { // from class: androidx.emoji2.text.d
                    @Override // java.lang.Runnable
                    public final void run() {
                        FontRequestEmojiCompatConfig.FontRequestMetadataLoader.this.b();
                    }
                });
            }
        }

        @Override // androidx.emoji2.text.EmojiCompat.MetadataRepoLoader
        @RequiresApi(19)
        public void load(@NonNull EmojiCompat.MetadataRepoLoaderCallback metadataRepoLoaderCallback) {
            Preconditions.checkNotNull(metadataRepoLoaderCallback, "LoaderCallback cannot be null");
            synchronized (this.f5575d) {
                this.f5580i = metadataRepoLoaderCallback;
            }
            c();
        }

        public void setExecutor(@NonNull Executor executor) {
            synchronized (this.f5575d) {
                this.f5577f = executor;
            }
        }

        public void setRetryPolicy(@Nullable RetryPolicy retryPolicy) {
            synchronized (this.f5575d) {
                this.f5579h = retryPolicy;
            }
        }
    }

    /* loaded from: classes.dex */
    public static abstract class RetryPolicy {
        public abstract long getRetryDelay();
    }

    public FontRequestEmojiCompatConfig(@NonNull Context context, @NonNull FontRequest fontRequest) {
        super(new FontRequestMetadataLoader(context, fontRequest, f5568j));
    }

    @NonNull
    @Deprecated
    public FontRequestEmojiCompatConfig setHandler(@Nullable Handler handler) {
        if (handler == null) {
            return this;
        }
        setLoadingExecutor(ConcurrencyHelpers.b(handler));
        return this;
    }

    @NonNull
    public FontRequestEmojiCompatConfig setLoadingExecutor(@NonNull Executor executor) {
        ((FontRequestMetadataLoader) a()).setExecutor(executor);
        return this;
    }

    @NonNull
    public FontRequestEmojiCompatConfig setRetryPolicy(@Nullable RetryPolicy retryPolicy) {
        ((FontRequestMetadataLoader) a()).setRetryPolicy(retryPolicy);
        return this;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public FontRequestEmojiCompatConfig(@NonNull Context context, @NonNull FontRequest fontRequest, @NonNull FontProviderHelper fontProviderHelper) {
        super(new FontRequestMetadataLoader(context, fontRequest, fontProviderHelper));
    }
}
