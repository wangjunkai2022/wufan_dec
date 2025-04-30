package androidx.emoji2.text;

import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.Editable;
import android.view.KeyEvent;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import androidx.annotation.AnyThread;
import androidx.annotation.CheckResult;
import androidx.annotation.ColorInt;
import androidx.annotation.GuardedBy;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.collection.ArraySet;
import androidx.core.util.Preconditions;
import androidx.emoji2.text.DefaultEmojiCompatConfig;
import androidx.emoji2.text.EmojiProcessor;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import java.util.Set;
import java.util.concurrent.locks.ReadWriteLock;
import java.util.concurrent.locks.ReentrantReadWriteLock;
@AnyThread
/* loaded from: classes.dex */
public class EmojiCompat {
    public static final String EDITOR_INFO_METAVERSION_KEY = "android.support.text.emoji.emojiCompat_metadataVersion";
    public static final String EDITOR_INFO_REPLACE_ALL_KEY = "android.support.text.emoji.emojiCompat_replaceAll";
    public static final int LOAD_STATE_DEFAULT = 3;
    public static final int LOAD_STATE_FAILED = 2;
    public static final int LOAD_STATE_LOADING = 0;
    public static final int LOAD_STATE_SUCCEEDED = 1;
    public static final int LOAD_STRATEGY_DEFAULT = 0;
    public static final int LOAD_STRATEGY_MANUAL = 1;
    public static final int REPLACE_STRATEGY_ALL = 1;
    public static final int REPLACE_STRATEGY_DEFAULT = 0;
    public static final int REPLACE_STRATEGY_NON_EXISTENT = 2;
    @RestrictTo({RestrictTo.Scope.LIBRARY})

    /* renamed from: n  reason: collision with root package name */
    static final int f5494n = Integer.MAX_VALUE;

    /* renamed from: o  reason: collision with root package name */
    private static final Object f5495o = new Object();

    /* renamed from: p  reason: collision with root package name */
    private static final Object f5496p = new Object();
    @Nullable
    @GuardedBy("INSTANCE_LOCK")

    /* renamed from: q  reason: collision with root package name */
    private static volatile EmojiCompat f5497q = null;
    @GuardedBy("CONFIG_LOCK")

    /* renamed from: r  reason: collision with root package name */
    private static volatile boolean f5498r = false;

    /* renamed from: s  reason: collision with root package name */
    private static final String f5499s = "EmojiCompat is not initialized.\n\nYou must initialize EmojiCompat prior to referencing the EmojiCompat instance.\n\nThe most likely cause of this error is disabling the EmojiCompatInitializer\neither explicitly in AndroidManifest.xml, or by including\nandroidx.emoji2:emoji2-bundled.\n\nAutomatic initialization is typically performed by EmojiCompatInitializer. If\nyou are not expecting to initialize EmojiCompat manually in your application,\nplease check to ensure it has not been removed from your APK's manifest. You can\ndo this in Android Studio using Build > Analyze APK.\n\nIn the APK Analyzer, ensure that the startup entry for\nEmojiCompatInitializer and InitializationProvider is present in\n AndroidManifest.xml. If it is missing or contains tools:node=\"remove\", and you\nintend to use automatic configuration, verify:\n\n  1. Your application does not include emoji2-bundled\n  2. All modules do not contain an exclusion manifest rule for\n     EmojiCompatInitializer or InitializationProvider. For more information\n     about manifest exclusions see the documentation for the androidx startup\n     library.\n\nIf you intend to use emoji2-bundled, please call EmojiCompat.init. You can\nlearn more in the documentation for BundledEmojiCompatConfig.\n\nIf you intended to perform manual configuration, it is recommended that you call\nEmojiCompat.init immediately on application startup.\n\nIf you still cannot resolve this issue, please open a bug with your specific\nconfiguration to help improve error message.";
    @NonNull
    @GuardedBy("mInitLock")

    /* renamed from: b  reason: collision with root package name */
    private final Set<InitCallback> f5501b;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    private final CompatInternal f5504e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    final MetadataRepoLoader f5505f;

    /* renamed from: g  reason: collision with root package name */
    final boolean f5506g;

    /* renamed from: h  reason: collision with root package name */
    final boolean f5507h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    final int[] f5508i;

    /* renamed from: j  reason: collision with root package name */
    private final boolean f5509j;

    /* renamed from: k  reason: collision with root package name */
    private final int f5510k;

    /* renamed from: l  reason: collision with root package name */
    private final int f5511l;

    /* renamed from: m  reason: collision with root package name */
    private final GlyphChecker f5512m;
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ReadWriteLock f5500a = new ReentrantReadWriteLock();
    @GuardedBy("mInitLock")

    /* renamed from: c  reason: collision with root package name */
    private volatile int f5502c = 3;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    private final Handler f5503d = new Handler(Looper.getMainLooper());

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class CompatInternal {

        /* renamed from: a  reason: collision with root package name */
        final EmojiCompat f5513a;

        CompatInternal(EmojiCompat emojiCompat) {
            this.f5513a = emojiCompat;
        }

        String a() {
            return "";
        }

        boolean b(@NonNull CharSequence charSequence) {
            return false;
        }

        boolean c(@NonNull CharSequence charSequence, int i2) {
            return false;
        }

        void d() {
            this.f5513a.e();
        }

        CharSequence e(@NonNull CharSequence charSequence, @IntRange(from = 0) int i2, @IntRange(from = 0) int i4, @IntRange(from = 0) int i5, boolean z3) {
            return charSequence;
        }

        void f(@NonNull EditorInfo editorInfo) {
        }
    }

    @RequiresApi(19)
    /* loaded from: classes.dex */
    private static final class CompatInternal19 extends CompatInternal {

        /* renamed from: b  reason: collision with root package name */
        private volatile EmojiProcessor f5514b;

        /* renamed from: c  reason: collision with root package name */
        private volatile MetadataRepo f5515c;

        CompatInternal19(EmojiCompat emojiCompat) {
            super(emojiCompat);
        }

        @Override // androidx.emoji2.text.EmojiCompat.CompatInternal
        String a() {
            String sourceSha = this.f5515c.getMetadataList().sourceSha();
            return sourceSha == null ? "" : sourceSha;
        }

        @Override // androidx.emoji2.text.EmojiCompat.CompatInternal
        boolean b(@NonNull CharSequence charSequence) {
            return this.f5514b.b(charSequence) != null;
        }

        @Override // androidx.emoji2.text.EmojiCompat.CompatInternal
        boolean c(@NonNull CharSequence charSequence, int i2) {
            EmojiMetadata b4 = this.f5514b.b(charSequence);
            return b4 != null && b4.getCompatAdded() <= i2;
        }

        @Override // androidx.emoji2.text.EmojiCompat.CompatInternal
        void d() {
            try {
                this.f5513a.f5505f.load(new MetadataRepoLoaderCallback() { // from class: androidx.emoji2.text.EmojiCompat.CompatInternal19.1
                    @Override // androidx.emoji2.text.EmojiCompat.MetadataRepoLoaderCallback
                    public void onFailed(@Nullable Throwable th) {
                        CompatInternal19.this.f5513a.d(th);
                    }

                    @Override // androidx.emoji2.text.EmojiCompat.MetadataRepoLoaderCallback
                    public void onLoaded(@NonNull MetadataRepo metadataRepo) {
                        CompatInternal19.this.g(metadataRepo);
                    }
                });
            } catch (Throwable th) {
                this.f5513a.d(th);
            }
        }

        @Override // androidx.emoji2.text.EmojiCompat.CompatInternal
        CharSequence e(@NonNull CharSequence charSequence, int i2, int i4, int i5, boolean z3) {
            return this.f5514b.h(charSequence, i2, i4, i5, z3);
        }

        @Override // androidx.emoji2.text.EmojiCompat.CompatInternal
        void f(@NonNull EditorInfo editorInfo) {
            editorInfo.extras.putInt(EmojiCompat.EDITOR_INFO_METAVERSION_KEY, this.f5515c.b());
            editorInfo.extras.putBoolean(EmojiCompat.EDITOR_INFO_REPLACE_ALL_KEY, this.f5513a.f5506g);
        }

        void g(@NonNull MetadataRepo metadataRepo) {
            if (metadataRepo == null) {
                this.f5513a.d(new IllegalArgumentException("metadataRepo cannot be null"));
                return;
            }
            this.f5515c = metadataRepo;
            MetadataRepo metadataRepo2 = this.f5515c;
            SpanFactory spanFactory = new SpanFactory();
            GlyphChecker glyphChecker = this.f5513a.f5512m;
            EmojiCompat emojiCompat = this.f5513a;
            this.f5514b = new EmojiProcessor(metadataRepo2, spanFactory, glyphChecker, emojiCompat.f5507h, emojiCompat.f5508i);
            this.f5513a.e();
        }
    }

    /* loaded from: classes.dex */
    public static abstract class Config {
        @NonNull

        /* renamed from: a  reason: collision with root package name */
        final MetadataRepoLoader f5517a;

        /* renamed from: b  reason: collision with root package name */
        boolean f5518b;

        /* renamed from: c  reason: collision with root package name */
        boolean f5519c;
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        int[] f5520d;
        @Nullable

        /* renamed from: e  reason: collision with root package name */
        Set<InitCallback> f5521e;

        /* renamed from: f  reason: collision with root package name */
        boolean f5522f;

        /* renamed from: g  reason: collision with root package name */
        int f5523g = -16711936;

        /* renamed from: h  reason: collision with root package name */
        int f5524h = 0;
        @NonNull

        /* renamed from: i  reason: collision with root package name */
        GlyphChecker f5525i = new EmojiProcessor.DefaultGlyphChecker();

        /* JADX INFO: Access modifiers changed from: protected */
        public Config(@NonNull MetadataRepoLoader metadataRepoLoader) {
            Preconditions.checkNotNull(metadataRepoLoader, "metadataLoader cannot be null.");
            this.f5517a = metadataRepoLoader;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @NonNull
        public final MetadataRepoLoader a() {
            return this.f5517a;
        }

        @NonNull
        public Config registerInitCallback(@NonNull InitCallback initCallback) {
            Preconditions.checkNotNull(initCallback, "initCallback cannot be null");
            if (this.f5521e == null) {
                this.f5521e = new ArraySet();
            }
            this.f5521e.add(initCallback);
            return this;
        }

        @NonNull
        public Config setEmojiSpanIndicatorColor(@ColorInt int i2) {
            this.f5523g = i2;
            return this;
        }

        @NonNull
        public Config setEmojiSpanIndicatorEnabled(boolean z3) {
            this.f5522f = z3;
            return this;
        }

        @NonNull
        public Config setGlyphChecker(@NonNull GlyphChecker glyphChecker) {
            Preconditions.checkNotNull(glyphChecker, "GlyphChecker cannot be null");
            this.f5525i = glyphChecker;
            return this;
        }

        @NonNull
        public Config setMetadataLoadStrategy(int i2) {
            this.f5524h = i2;
            return this;
        }

        @NonNull
        public Config setReplaceAll(boolean z3) {
            this.f5518b = z3;
            return this;
        }

        @NonNull
        public Config setUseEmojiAsDefaultStyle(boolean z3) {
            return setUseEmojiAsDefaultStyle(z3, null);
        }

        @NonNull
        public Config unregisterInitCallback(@NonNull InitCallback initCallback) {
            Preconditions.checkNotNull(initCallback, "initCallback cannot be null");
            Set<InitCallback> set = this.f5521e;
            if (set != null) {
                set.remove(initCallback);
            }
            return this;
        }

        @NonNull
        public Config setUseEmojiAsDefaultStyle(boolean z3, @Nullable List<Integer> list) {
            this.f5519c = z3;
            if (z3 && list != null) {
                this.f5520d = new int[list.size()];
                int i2 = 0;
                for (Integer num : list) {
                    this.f5520d[i2] = num.intValue();
                    i2++;
                }
                Arrays.sort(this.f5520d);
            } else {
                this.f5520d = null;
            }
            return this;
        }
    }

    /* loaded from: classes.dex */
    public interface GlyphChecker {
        boolean hasGlyph(@NonNull CharSequence charSequence, @IntRange(from = 0) int i2, @IntRange(from = 0) int i4, @IntRange(from = 0) int i5);
    }

    /* loaded from: classes.dex */
    public static abstract class InitCallback {
        public void onFailed(@Nullable Throwable th) {
        }

        public void onInitialized() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class ListenerDispatcher implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private final List<InitCallback> f5526a;

        /* renamed from: b  reason: collision with root package name */
        private final Throwable f5527b;

        /* renamed from: c  reason: collision with root package name */
        private final int f5528c;

        ListenerDispatcher(@NonNull InitCallback initCallback, int i2) {
            this(Arrays.asList((InitCallback) Preconditions.checkNotNull(initCallback, "initCallback cannot be null")), i2, null);
        }

        @Override // java.lang.Runnable
        public void run() {
            int size = this.f5526a.size();
            int i2 = 0;
            if (this.f5528c != 1) {
                while (i2 < size) {
                    this.f5526a.get(i2).onFailed(this.f5527b);
                    i2++;
                }
                return;
            }
            while (i2 < size) {
                this.f5526a.get(i2).onInitialized();
                i2++;
            }
        }

        ListenerDispatcher(@NonNull Collection<InitCallback> collection, int i2) {
            this(collection, i2, null);
        }

        ListenerDispatcher(@NonNull Collection<InitCallback> collection, int i2, @Nullable Throwable th) {
            Preconditions.checkNotNull(collection, "initCallbacks cannot be null");
            this.f5526a = new ArrayList(collection);
            this.f5528c = i2;
            this.f5527b = th;
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    /* loaded from: classes.dex */
    public @interface LoadStrategy {
    }

    /* loaded from: classes.dex */
    public interface MetadataRepoLoader {
        void load(@NonNull MetadataRepoLoaderCallback metadataRepoLoaderCallback);
    }

    /* loaded from: classes.dex */
    public static abstract class MetadataRepoLoaderCallback {
        public abstract void onFailed(@Nullable Throwable th);

        public abstract void onLoaded(@NonNull MetadataRepo metadataRepo);
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    /* loaded from: classes.dex */
    public @interface ReplaceStrategy {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @RequiresApi(19)
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    /* loaded from: classes.dex */
    public static class SpanFactory {
        SpanFactory() {
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public EmojiSpan a(@NonNull EmojiMetadata emojiMetadata) {
            return new TypefaceEmojiSpan(emojiMetadata);
        }
    }

    private EmojiCompat(@NonNull Config config) {
        this.f5506g = config.f5518b;
        this.f5507h = config.f5519c;
        this.f5508i = config.f5520d;
        this.f5509j = config.f5522f;
        this.f5510k = config.f5523g;
        this.f5505f = config.f5517a;
        this.f5511l = config.f5524h;
        this.f5512m = config.f5525i;
        ArraySet arraySet = new ArraySet();
        this.f5501b = arraySet;
        Set<InitCallback> set = config.f5521e;
        if (set != null && !set.isEmpty()) {
            arraySet.addAll(config.f5521e);
        }
        this.f5504e = Build.VERSION.SDK_INT < 19 ? new CompatInternal(this) : new CompatInternal19(this);
        c();
    }

    private boolean b() {
        return getLoadState() == 1;
    }

    private void c() {
        this.f5500a.writeLock().lock();
        try {
            if (this.f5511l == 0) {
                this.f5502c = 0;
            }
            this.f5500a.writeLock().unlock();
            if (getLoadState() == 0) {
                this.f5504e.d();
            }
        } catch (Throwable th) {
            this.f5500a.writeLock().unlock();
            throw th;
        }
    }

    @NonNull
    public static EmojiCompat get() {
        EmojiCompat emojiCompat;
        synchronized (f5495o) {
            emojiCompat = f5497q;
            Preconditions.checkState(emojiCompat != null, f5499s);
        }
        return emojiCompat;
    }

    public static boolean handleDeleteSurroundingText(@NonNull InputConnection inputConnection, @NonNull Editable editable, @IntRange(from = 0) int i2, @IntRange(from = 0) int i4, boolean z3) {
        if (Build.VERSION.SDK_INT >= 19) {
            return EmojiProcessor.c(inputConnection, editable, i2, i4, z3);
        }
        return false;
    }

    public static boolean handleOnKeyDown(@NonNull Editable editable, int i2, @NonNull KeyEvent keyEvent) {
        if (Build.VERSION.SDK_INT >= 19) {
            return EmojiProcessor.d(editable, i2, keyEvent);
        }
        return false;
    }

    @Nullable
    public static EmojiCompat init(@NonNull Context context) {
        return init(context, null);
    }

    public static boolean isConfigured() {
        return f5497q != null;
    }

    @NonNull
    public static EmojiCompat reset(@NonNull Config config) {
        EmojiCompat emojiCompat;
        synchronized (f5495o) {
            emojiCompat = new EmojiCompat(config);
            f5497q = emojiCompat;
        }
        return emojiCompat;
    }

    @RestrictTo({RestrictTo.Scope.TESTS})
    public static void skipDefaultConfigurationLookup(boolean z3) {
        synchronized (f5496p) {
            f5498r = z3;
        }
    }

    void d(@Nullable Throwable th) {
        ArrayList arrayList = new ArrayList();
        this.f5500a.writeLock().lock();
        try {
            this.f5502c = 2;
            arrayList.addAll(this.f5501b);
            this.f5501b.clear();
            this.f5500a.writeLock().unlock();
            this.f5503d.post(new ListenerDispatcher(arrayList, this.f5502c, th));
        } catch (Throwable th2) {
            this.f5500a.writeLock().unlock();
            throw th2;
        }
    }

    void e() {
        ArrayList arrayList = new ArrayList();
        this.f5500a.writeLock().lock();
        try {
            this.f5502c = 1;
            arrayList.addAll(this.f5501b);
            this.f5501b.clear();
            this.f5500a.writeLock().unlock();
            this.f5503d.post(new ListenerDispatcher(arrayList, this.f5502c));
        } catch (Throwable th) {
            this.f5500a.writeLock().unlock();
            throw th;
        }
    }

    @NonNull
    public String getAssetSignature() {
        Preconditions.checkState(b(), "Not initialized yet");
        return this.f5504e.a();
    }

    @ColorInt
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public int getEmojiSpanIndicatorColor() {
        return this.f5510k;
    }

    public int getLoadState() {
        this.f5500a.readLock().lock();
        try {
            return this.f5502c;
        } finally {
            this.f5500a.readLock().unlock();
        }
    }

    public boolean hasEmojiGlyph(@NonNull CharSequence charSequence) {
        Preconditions.checkState(b(), "Not initialized yet");
        Preconditions.checkNotNull(charSequence, "sequence cannot be null");
        return this.f5504e.b(charSequence);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public boolean isEmojiSpanIndicatorEnabled() {
        return this.f5509j;
    }

    public void load() {
        Preconditions.checkState(this.f5511l == 1, "Set metadataLoadStrategy to LOAD_STRATEGY_MANUAL to execute manual loading");
        if (b()) {
            return;
        }
        this.f5500a.writeLock().lock();
        try {
            if (this.f5502c == 0) {
                return;
            }
            this.f5502c = 0;
            this.f5500a.writeLock().unlock();
            this.f5504e.d();
        } finally {
            this.f5500a.writeLock().unlock();
        }
    }

    @Nullable
    @CheckResult
    public CharSequence process(@Nullable CharSequence charSequence) {
        return process(charSequence, 0, charSequence == null ? 0 : charSequence.length());
    }

    public void registerInitCallback(@NonNull InitCallback initCallback) {
        Preconditions.checkNotNull(initCallback, "initCallback cannot be null");
        this.f5500a.writeLock().lock();
        try {
            if (this.f5502c != 1 && this.f5502c != 2) {
                this.f5501b.add(initCallback);
            }
            this.f5503d.post(new ListenerDispatcher(initCallback, this.f5502c));
        } finally {
            this.f5500a.writeLock().unlock();
        }
    }

    public void unregisterInitCallback(@NonNull InitCallback initCallback) {
        Preconditions.checkNotNull(initCallback, "initCallback cannot be null");
        this.f5500a.writeLock().lock();
        try {
            this.f5501b.remove(initCallback);
        } finally {
            this.f5500a.writeLock().unlock();
        }
    }

    public void updateEditorInfo(@NonNull EditorInfo editorInfo) {
        if (!b() || editorInfo == null) {
            return;
        }
        if (editorInfo.extras == null) {
            editorInfo.extras = new Bundle();
        }
        this.f5504e.f(editorInfo);
    }

    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public static EmojiCompat init(@NonNull Context context, @Nullable DefaultEmojiCompatConfig.DefaultEmojiCompatConfigFactory defaultEmojiCompatConfigFactory) {
        EmojiCompat emojiCompat;
        if (f5498r) {
            return f5497q;
        }
        if (defaultEmojiCompatConfigFactory == null) {
            defaultEmojiCompatConfigFactory = new DefaultEmojiCompatConfig.DefaultEmojiCompatConfigFactory(null);
        }
        Config create = defaultEmojiCompatConfigFactory.create(context);
        synchronized (f5496p) {
            if (!f5498r) {
                if (create != null) {
                    init(create);
                }
                f5498r = true;
            }
            emojiCompat = f5497q;
        }
        return emojiCompat;
    }

    @Nullable
    @CheckResult
    public CharSequence process(@Nullable CharSequence charSequence, @IntRange(from = 0) int i2, @IntRange(from = 0) int i4) {
        return process(charSequence, i2, i4, Integer.MAX_VALUE);
    }

    public boolean hasEmojiGlyph(@NonNull CharSequence charSequence, @IntRange(from = 0) int i2) {
        Preconditions.checkState(b(), "Not initialized yet");
        Preconditions.checkNotNull(charSequence, "sequence cannot be null");
        return this.f5504e.c(charSequence, i2);
    }

    @Nullable
    @CheckResult
    public CharSequence process(@Nullable CharSequence charSequence, @IntRange(from = 0) int i2, @IntRange(from = 0) int i4, @IntRange(from = 0) int i5) {
        return process(charSequence, i2, i4, i5, 0);
    }

    @Nullable
    @CheckResult
    public CharSequence process(@Nullable CharSequence charSequence, @IntRange(from = 0) int i2, @IntRange(from = 0) int i4, @IntRange(from = 0) int i5, int i6) {
        boolean z3;
        Preconditions.checkState(b(), "Not initialized yet");
        Preconditions.checkArgumentNonnegative(i2, "start cannot be negative");
        Preconditions.checkArgumentNonnegative(i4, "end cannot be negative");
        Preconditions.checkArgumentNonnegative(i5, "maxEmojiCount cannot be negative");
        Preconditions.checkArgument(i2 <= i4, "start should be <= than end");
        if (charSequence == null) {
            return null;
        }
        Preconditions.checkArgument(i2 <= charSequence.length(), "start should be < than charSequence length");
        Preconditions.checkArgument(i4 <= charSequence.length(), "end should be < than charSequence length");
        if (charSequence.length() == 0 || i2 == i4) {
            return charSequence;
        }
        if (i6 != 1) {
            z3 = i6 != 2 ? this.f5506g : false;
        } else {
            z3 = true;
        }
        return this.f5504e.e(charSequence, i2, i4, i5, z3);
    }

    @Nullable
    @RestrictTo({RestrictTo.Scope.TESTS})
    public static EmojiCompat reset(@Nullable EmojiCompat emojiCompat) {
        EmojiCompat emojiCompat2;
        synchronized (f5495o) {
            f5497q = emojiCompat;
            emojiCompat2 = f5497q;
        }
        return emojiCompat2;
    }

    @NonNull
    public static EmojiCompat init(@NonNull Config config) {
        EmojiCompat emojiCompat = f5497q;
        if (emojiCompat == null) {
            synchronized (f5495o) {
                emojiCompat = f5497q;
                if (emojiCompat == null) {
                    emojiCompat = new EmojiCompat(config);
                    f5497q = emojiCompat;
                }
            }
        }
        return emojiCompat;
    }
}
