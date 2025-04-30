package androidx.emoji2.text;

import android.content.Context;
import android.os.Build;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.WorkerThread;
import androidx.core.os.TraceCompat;
import androidx.emoji2.text.EmojiCompat;
import androidx.emoji2.text.EmojiCompatInitializer;
import androidx.lifecycle.DefaultLifecycleObserver;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.ProcessLifecycleInitializer;
import androidx.startup.AppInitializer;
import androidx.startup.Initializer;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.ThreadPoolExecutor;
/* loaded from: classes.dex */
public class EmojiCompatInitializer implements Initializer<Boolean> {

    /* renamed from: a  reason: collision with root package name */
    private static final long f5529a = 500;

    /* renamed from: b  reason: collision with root package name */
    private static final String f5530b = "EmojiCompatInitializer";

    /* JADX INFO: Access modifiers changed from: package-private */
    @RequiresApi(19)
    /* loaded from: classes.dex */
    public static class BackgroundDefaultConfig extends EmojiCompat.Config {
        protected BackgroundDefaultConfig(Context context) {
            super(new BackgroundDefaultLoader(context));
            setMetadataLoadStrategy(1);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @RequiresApi(19)
    /* loaded from: classes.dex */
    public static class BackgroundDefaultLoader implements EmojiCompat.MetadataRepoLoader {

        /* renamed from: a  reason: collision with root package name */
        private final Context f5533a;

        BackgroundDefaultLoader(Context context) {
            this.f5533a = context.getApplicationContext();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @WorkerThread
        /* renamed from: b */
        public void c(@NonNull final EmojiCompat.MetadataRepoLoaderCallback metadataRepoLoaderCallback, @NonNull final ThreadPoolExecutor threadPoolExecutor) {
            try {
                FontRequestEmojiCompatConfig create = DefaultEmojiCompatConfig.create(this.f5533a);
                if (create != null) {
                    create.setLoadingExecutor(threadPoolExecutor);
                    create.a().load(new EmojiCompat.MetadataRepoLoaderCallback() { // from class: androidx.emoji2.text.EmojiCompatInitializer.BackgroundDefaultLoader.1
                        @Override // androidx.emoji2.text.EmojiCompat.MetadataRepoLoaderCallback
                        public void onFailed(@Nullable Throwable th) {
                            try {
                                metadataRepoLoaderCallback.onFailed(th);
                            } finally {
                                threadPoolExecutor.shutdown();
                            }
                        }

                        @Override // androidx.emoji2.text.EmojiCompat.MetadataRepoLoaderCallback
                        public void onLoaded(@NonNull MetadataRepo metadataRepo) {
                            try {
                                metadataRepoLoaderCallback.onLoaded(metadataRepo);
                            } finally {
                                threadPoolExecutor.shutdown();
                            }
                        }
                    });
                    return;
                }
                throw new RuntimeException("EmojiCompat font provider not available on this device.");
            } catch (Throwable th) {
                metadataRepoLoaderCallback.onFailed(th);
                threadPoolExecutor.shutdown();
            }
        }

        @Override // androidx.emoji2.text.EmojiCompat.MetadataRepoLoader
        public void load(@NonNull final EmojiCompat.MetadataRepoLoaderCallback metadataRepoLoaderCallback) {
            final ThreadPoolExecutor c4 = ConcurrencyHelpers.c(EmojiCompatInitializer.f5530b);
            c4.execute(new Runnable() { // from class: androidx.emoji2.text.c
                @Override // java.lang.Runnable
                public final void run() {
                    EmojiCompatInitializer.BackgroundDefaultLoader.this.c(metadataRepoLoaderCallback, c4);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class LoadEmojiCompatRunnable implements Runnable {
        LoadEmojiCompatRunnable() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                TraceCompat.beginSection("EmojiCompat.EmojiCompatInitializer.run");
                if (EmojiCompat.isConfigured()) {
                    EmojiCompat.get().load();
                }
            } finally {
                TraceCompat.endSection();
            }
        }
    }

    @RequiresApi(19)
    void a(@NonNull Context context) {
        final Lifecycle lifecycle = ((LifecycleOwner) AppInitializer.getInstance(context).initializeComponent(ProcessLifecycleInitializer.class)).getLifecycle();
        lifecycle.addObserver(new DefaultLifecycleObserver() { // from class: androidx.emoji2.text.EmojiCompatInitializer.1
            @Override // androidx.lifecycle.DefaultLifecycleObserver, androidx.lifecycle.FullLifecycleObserver
            public /* synthetic */ void onCreate(LifecycleOwner lifecycleOwner) {
                androidx.lifecycle.a.a(this, lifecycleOwner);
            }

            @Override // androidx.lifecycle.DefaultLifecycleObserver, androidx.lifecycle.FullLifecycleObserver
            public /* synthetic */ void onDestroy(LifecycleOwner lifecycleOwner) {
                androidx.lifecycle.a.b(this, lifecycleOwner);
            }

            @Override // androidx.lifecycle.DefaultLifecycleObserver, androidx.lifecycle.FullLifecycleObserver
            public /* synthetic */ void onPause(LifecycleOwner lifecycleOwner) {
                androidx.lifecycle.a.c(this, lifecycleOwner);
            }

            @Override // androidx.lifecycle.DefaultLifecycleObserver, androidx.lifecycle.FullLifecycleObserver
            public void onResume(@NonNull LifecycleOwner lifecycleOwner) {
                EmojiCompatInitializer.this.b();
                lifecycle.removeObserver(this);
            }

            @Override // androidx.lifecycle.DefaultLifecycleObserver, androidx.lifecycle.FullLifecycleObserver
            public /* synthetic */ void onStart(LifecycleOwner lifecycleOwner) {
                androidx.lifecycle.a.e(this, lifecycleOwner);
            }

            @Override // androidx.lifecycle.DefaultLifecycleObserver, androidx.lifecycle.FullLifecycleObserver
            public /* synthetic */ void onStop(LifecycleOwner lifecycleOwner) {
                androidx.lifecycle.a.f(this, lifecycleOwner);
            }
        });
    }

    @RequiresApi(19)
    void b() {
        ConcurrencyHelpers.e().postDelayed(new LoadEmojiCompatRunnable(), f5529a);
    }

    @Override // androidx.startup.Initializer
    @NonNull
    public List<Class<? extends Initializer<?>>> dependencies() {
        return Collections.singletonList(ProcessLifecycleInitializer.class);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // androidx.startup.Initializer
    @NonNull
    public Boolean create(@NonNull Context context) {
        if (Build.VERSION.SDK_INT >= 19) {
            EmojiCompat.init(new BackgroundDefaultConfig(context));
            a(context);
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }
}
