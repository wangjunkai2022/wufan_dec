package androidx.emoji2.text;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.ProviderInfo;
import android.content.pm.ResolveInfo;
import android.content.pm.Signature;
import android.os.Build;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.core.provider.FontRequest;
import androidx.core.util.Preconditions;
import androidx.emoji2.text.EmojiCompat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes.dex */
public final class DefaultEmojiCompatConfig {

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    /* loaded from: classes.dex */
    public static class DefaultEmojiCompatConfigFactory {
        @NonNull

        /* renamed from: b  reason: collision with root package name */
        private static final String f5490b = "emoji2.text.DefaultEmojiConfig";
        @NonNull

        /* renamed from: c  reason: collision with root package name */
        private static final String f5491c = "androidx.content.action.LOAD_EMOJI_FONT";
        @NonNull

        /* renamed from: d  reason: collision with root package name */
        private static final String f5492d = "emojicompat-emoji-font";

        /* renamed from: a  reason: collision with root package name */
        private final DefaultEmojiCompatConfigHelper f5493a;

        @RestrictTo({RestrictTo.Scope.LIBRARY})
        public DefaultEmojiCompatConfigFactory(@Nullable DefaultEmojiCompatConfigHelper defaultEmojiCompatConfigHelper) {
            this.f5493a = defaultEmojiCompatConfigHelper == null ? d() : defaultEmojiCompatConfigHelper;
        }

        @Nullable
        private EmojiCompat.Config a(@NonNull Context context, @Nullable FontRequest fontRequest) {
            if (fontRequest == null) {
                return null;
            }
            return new FontRequestEmojiCompatConfig(context, fontRequest);
        }

        @NonNull
        private List<List<byte[]>> b(@NonNull Signature[] signatureArr) {
            ArrayList arrayList = new ArrayList();
            for (Signature signature : signatureArr) {
                arrayList.add(signature.toByteArray());
            }
            return Collections.singletonList(arrayList);
        }

        @NonNull
        private FontRequest c(@NonNull ProviderInfo providerInfo, @NonNull PackageManager packageManager) throws PackageManager.NameNotFoundException {
            String str = providerInfo.authority;
            String str2 = providerInfo.packageName;
            return new FontRequest(str, str2, f5492d, b(this.f5493a.getSigningSignatures(packageManager, str2)));
        }

        @NonNull
        private static DefaultEmojiCompatConfigHelper d() {
            int i2 = Build.VERSION.SDK_INT;
            if (i2 >= 28) {
                return new DefaultEmojiCompatConfigHelper_API28();
            }
            if (i2 >= 19) {
                return new DefaultEmojiCompatConfigHelper_API19();
            }
            return new DefaultEmojiCompatConfigHelper();
        }

        private boolean e(@Nullable ProviderInfo providerInfo) {
            ApplicationInfo applicationInfo;
            return (providerInfo == null || (applicationInfo = providerInfo.applicationInfo) == null || (applicationInfo.flags & 1) != 1) ? false : true;
        }

        @Nullable
        private ProviderInfo f(@NonNull PackageManager packageManager) {
            for (ResolveInfo resolveInfo : this.f5493a.queryIntentContentProviders(packageManager, new Intent(f5491c), 0)) {
                ProviderInfo providerInfo = this.f5493a.getProviderInfo(resolveInfo);
                if (e(providerInfo)) {
                    return providerInfo;
                }
            }
            return null;
        }

        @Nullable
        @RestrictTo({RestrictTo.Scope.LIBRARY})
        public EmojiCompat.Config create(@NonNull Context context) {
            return a(context, g(context));
        }

        @Nullable
        @RestrictTo({RestrictTo.Scope.LIBRARY})
        @VisibleForTesting
        FontRequest g(@NonNull Context context) {
            PackageManager packageManager = context.getPackageManager();
            Preconditions.checkNotNull(packageManager, "Package manager required to locate emoji font provider");
            ProviderInfo f4 = f(packageManager);
            if (f4 == null) {
                return null;
            }
            try {
                return c(f4, packageManager);
            } catch (PackageManager.NameNotFoundException e4) {
                Log.wtf(f5490b, e4);
                return null;
            }
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    /* loaded from: classes.dex */
    public static class DefaultEmojiCompatConfigHelper {
        @Nullable
        public ProviderInfo getProviderInfo(@NonNull ResolveInfo resolveInfo) {
            throw new IllegalStateException("Unable to get provider info prior to API 19");
        }

        @NonNull
        public Signature[] getSigningSignatures(@NonNull PackageManager packageManager, @NonNull String str) throws PackageManager.NameNotFoundException {
            return packageManager.getPackageInfo(str, 64).signatures;
        }

        @NonNull
        public List<ResolveInfo> queryIntentContentProviders(@NonNull PackageManager packageManager, @NonNull Intent intent, int i2) {
            return Collections.emptyList();
        }
    }

    @RequiresApi(19)
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    /* loaded from: classes.dex */
    public static class DefaultEmojiCompatConfigHelper_API19 extends DefaultEmojiCompatConfigHelper {
        @Override // androidx.emoji2.text.DefaultEmojiCompatConfig.DefaultEmojiCompatConfigHelper
        @Nullable
        public ProviderInfo getProviderInfo(@NonNull ResolveInfo resolveInfo) {
            return resolveInfo.providerInfo;
        }

        @Override // androidx.emoji2.text.DefaultEmojiCompatConfig.DefaultEmojiCompatConfigHelper
        @NonNull
        public List<ResolveInfo> queryIntentContentProviders(@NonNull PackageManager packageManager, @NonNull Intent intent, int i2) {
            return packageManager.queryIntentContentProviders(intent, i2);
        }
    }

    @RequiresApi(28)
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    /* loaded from: classes.dex */
    public static class DefaultEmojiCompatConfigHelper_API28 extends DefaultEmojiCompatConfigHelper_API19 {
        @Override // androidx.emoji2.text.DefaultEmojiCompatConfig.DefaultEmojiCompatConfigHelper
        @NonNull
        public Signature[] getSigningSignatures(@NonNull PackageManager packageManager, @NonNull String str) throws PackageManager.NameNotFoundException {
            return packageManager.getPackageInfo(str, 64).signatures;
        }
    }

    private DefaultEmojiCompatConfig() {
    }

    @Nullable
    public static FontRequestEmojiCompatConfig create(@NonNull Context context) {
        return (FontRequestEmojiCompatConfig) new DefaultEmojiCompatConfigFactory(null).create(context);
    }
}
