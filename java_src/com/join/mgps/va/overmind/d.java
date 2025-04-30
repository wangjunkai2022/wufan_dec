package com.join.mgps.va.overmind;

import android.app.Activity;
import android.app.Application;
import android.content.ContentProviderClient;
import android.content.ContentResolver;
import android.content.Context;
import android.content.SharedPreferences;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.RemoteException;
import android.preference.PreferenceManager;
import android.security.NetworkSecurityPolicy;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.join.android.app.common.utils.JsonMapper;
import com.join.mgps.Util.u0;
import com.join.mgps.activity.MGMainActivity;
import com.umeng.analytics.pro.ai;
import com.xinzhu.overmind.Overmind;
import java.lang.ref.WeakReference;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: OvermindLoadCallback.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u0000 \u00072\u00020\u0001:\u0001\u001aB\u0007¢\u0006\u0004\b\u001d\u0010\u001eJ\u001a\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0012\u0010\n\u001a\u00020\t2\b\u0010\b\u001a\u0004\u0018\u00010\u0006H\u0002J\u000e\u0010\u000b\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\u0002J6\u0010\u0011\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\r\u001a\u0004\u0018\u00010\f2\b\u0010\u000e\u001a\u0004\u0018\u00010\f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u000fJ\u0006\u0010\u0012\u001a\u00020\tJ\u0010\u0010\u0013\u001a\u00020\t2\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002J \u0010\u0018\u001a\u00020\t2\u0006\u0010\u0014\u001a\u00020\f2\u0006\u0010\u0015\u001a\u00020\f2\b\u0010\u0017\u001a\u0004\u0018\u00010\u0016R\u001e\u0010\u001c\u001a\n \u0019*\u0004\u0018\u00010\f0\f8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001a\u0010\u001b¨\u0006\u001f"}, d2 = {"Lcom/join/mgps/va/overmind/d;", "", "Landroid/content/Context;", "context", "Landroid/net/Uri;", "uri", "Landroid/content/ContentProviderClient;", "e", "client", "", "j", com.sdk.a.g.f56552a, "", com.alipay.sdk.packet.d.f9798s, "arg", "Landroid/os/Bundle;", MGMainActivity.KEY_EXTRAS, "call", "f", "h", "packageName", "processName", "Landroid/app/Application;", "application", ai.aA, "kotlin.jvm.PlatformType", "a", "Ljava/lang/String;", "TAG", "<init>", "()V", "app_wufunNormalRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes.dex */
public final class d {
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private static WeakReference<Application.ActivityLifecycleCallbacks> f52342b = null;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public static final String f52344d = "com.join.android.app.mgsim.wufun.virtual.service.dbprovider";

    /* renamed from: a  reason: collision with root package name */
    private final String f52346a = com.join.mgps.va.overmind.b.class.getSimpleName();
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    public static final a f52345e = new a(null);
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private static WeakReference<Activity> f52343c = new WeakReference<>(null);

    /* compiled from: OvermindLoadCallback.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\"\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0011\u0010\u0012R*\u0010\u0004\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR,\u0010\u000b\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\n\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010\u0005\u001a\u0004\b\f\u0010\u0007\"\u0004\b\r\u0010\tR\u0016\u0010\u000f\u001a\u00020\u000e8\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010¨\u0006\u0013"}, d2 = {"com/join/mgps/va/overmind/d$a", "", "Ljava/lang/ref/WeakReference;", "Landroid/app/Activity;", "activityRef", "Ljava/lang/ref/WeakReference;", "b", "()Ljava/lang/ref/WeakReference;", com.xinzhu.overmind.utils.helpers.d.f64708a, "(Ljava/lang/ref/WeakReference;)V", "Landroid/app/Application$ActivityLifecycleCallbacks;", "activityLifecycleCallbacks", "a", ai.aD, "", "dbProviderAuthority", "Ljava/lang/String;", "<init>", "()V", "app_wufunNormalRelease"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes.dex */
    public static final class a {
        private a() {
        }

        @Nullable
        public final WeakReference<Application.ActivityLifecycleCallbacks> a() {
            return d.f52342b;
        }

        @NotNull
        public final WeakReference<Activity> b() {
            return d.f52343c;
        }

        public final void c(@Nullable WeakReference<Application.ActivityLifecycleCallbacks> weakReference) {
            d.f52342b = weakReference;
        }

        public final void d(@NotNull WeakReference<Activity> weakReference) {
            Intrinsics.checkNotNullParameter(weakReference, "<set-?>");
            d.f52343c = weakReference;
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* compiled from: OvermindLoadCallback.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\"\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\n\u0018\u00002\u00020\u0001J&\u0010\b\u001a\u00020\u00072\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\b\u0010\u0004\u001a\u0004\u0018\u00010\u00022\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0016J&\u0010\u000b\u001a\u00020\u00072\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\b\u0010\u0004\u001a\u0004\u0018\u00010\u00022\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0016J\"\u0010\f\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u00022\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0016¨\u0006\r"}, d2 = {"com/join/mgps/va/overmind/d$b", "Lcom/xinzhu/overmind/client/hook/a;", "", "packageName", "processName", "Landroid/content/Context;", "context", "", ai.aD, "Landroid/app/Application;", "application", "b", "a", "app_wufunNormalRelease"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes.dex */
    public static final class b extends com.xinzhu.overmind.client.hook.a {
        b() {
        }

        @Override // com.xinzhu.overmind.client.hook.a
        public void a(@NotNull String packageName, @NotNull String processName, @Nullable Application application) {
            Intrinsics.checkNotNullParameter(packageName, "packageName");
            Intrinsics.checkNotNullParameter(processName, "processName");
            StringBuilder sb = new StringBuilder();
            sb.append("afterApplicationOnCreate: pkg ");
            sb.append(packageName);
            sb.append(", processName ");
            sb.append(processName);
            StringBuilder sb2 = new StringBuilder();
            sb2.append("DisableVirtualDevice--->包名：");
            sb2.append(packageName);
            sb2.append("---设备信息: ");
            JsonMapper jsonMapper = JsonMapper.getInstance();
            com.xinzhu.overmind.client.frameworks.b a4 = com.xinzhu.overmind.client.frameworks.b.a();
            Intrinsics.checkNotNullExpressionValue(a4, "MindDeviceManager.get()");
            sb2.append(jsonMapper.toJson(a4.b()));
            System.out.println((Object) sb2.toString());
            if (application != null) {
                try {
                    SharedPreferences.Editor edit = PreferenceManager.getDefaultSharedPreferences(application).edit();
                    edit.putString("wfMainPkg", Overmind.getMainPkg());
                    edit.putString("wfExtPkg", Overmind.getPluginPkg());
                    edit.apply();
                } catch (Exception unused) {
                }
            }
            d.this.i(packageName, processName, application);
        }

        @Override // com.xinzhu.overmind.client.hook.a
        public void b(@Nullable String str, @Nullable String str2, @Nullable Application application) {
            StringBuilder sb = new StringBuilder();
            sb.append("beforeApplicationOnCreate: pkg ");
            sb.append(str);
            sb.append(", processName ");
            sb.append(str2);
            d.this.h(application);
        }

        @Override // com.xinzhu.overmind.client.hook.a
        public void c(@Nullable String str, @Nullable String str2, @Nullable Context context) {
            StringBuilder sb = new StringBuilder();
            sb.append("beforeCreateApplication: pkg ");
            sb.append(str);
            sb.append(", processName ");
            sb.append(str2);
        }
    }

    /* compiled from: OvermindLoadCallback.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001a\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\t\b\n\u0018\u00002\u00020\u0001J\u001a\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016J\u0010\u0010\b\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\t\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\n\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0018\u0010\r\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\f\u001a\u00020\u0004H\u0016J\u0010\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¨\u0006\u000f"}, d2 = {"com/join/mgps/va/overmind/d$c", "Lcom/xinzhu/overmind/client/hook/delegate/a;", "Landroid/app/Activity;", TTDownloadField.TT_ACTIVITY, "Landroid/os/Bundle;", "savedInstanceState", "", "onActivityCreated", "onActivityStarted", "onActivityResumed", "onActivityPaused", "onActivityStopped", "outState", "onActivitySaveInstanceState", "onActivityDestroyed", "app_wufunNormalRelease"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes.dex */
    public static final class c extends com.xinzhu.overmind.client.hook.delegate.a {
        c() {
        }

        @Override // com.xinzhu.overmind.client.hook.delegate.a, android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(@NotNull Activity activity, @Nullable Bundle bundle) {
            Application.ActivityLifecycleCallbacks activityLifecycleCallbacks;
            Intrinsics.checkNotNullParameter(activity, "activity");
            a aVar = d.f52345e;
            WeakReference<Application.ActivityLifecycleCallbacks> a4 = aVar.a();
            if (a4 != null && (activityLifecycleCallbacks = a4.get()) != null) {
                activityLifecycleCallbacks.onActivityCreated(activity, null);
            }
            aVar.d(new WeakReference<>(activity));
            u0.e("onActivityCreated " + activity.getClass().getSimpleName());
        }

        @Override // com.xinzhu.overmind.client.hook.delegate.a, android.app.Application.ActivityLifecycleCallbacks
        public void onActivityDestroyed(@NotNull Activity activity) {
            Application.ActivityLifecycleCallbacks activityLifecycleCallbacks;
            Intrinsics.checkNotNullParameter(activity, "activity");
            a aVar = d.f52345e;
            WeakReference<Application.ActivityLifecycleCallbacks> a4 = aVar.a();
            if (a4 != null && (activityLifecycleCallbacks = a4.get()) != null) {
                activityLifecycleCallbacks.onActivityDestroyed(activity);
            }
            aVar.d(new WeakReference<>(activity));
            u0.e("onActivityDestroyed " + activity.getClass().getSimpleName());
        }

        @Override // com.xinzhu.overmind.client.hook.delegate.a, android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPaused(@NotNull Activity activity) {
            Application.ActivityLifecycleCallbacks activityLifecycleCallbacks;
            Intrinsics.checkNotNullParameter(activity, "activity");
            a aVar = d.f52345e;
            WeakReference<Application.ActivityLifecycleCallbacks> a4 = aVar.a();
            if (a4 != null && (activityLifecycleCallbacks = a4.get()) != null) {
                activityLifecycleCallbacks.onActivityPaused(activity);
            }
            aVar.d(new WeakReference<>(activity));
            u0.e("onActivityPaused " + activity.getClass().getSimpleName());
        }

        @Override // com.xinzhu.overmind.client.hook.delegate.a, android.app.Application.ActivityLifecycleCallbacks
        public void onActivityResumed(@NotNull Activity activity) {
            Application.ActivityLifecycleCallbacks activityLifecycleCallbacks;
            Intrinsics.checkNotNullParameter(activity, "activity");
            a aVar = d.f52345e;
            WeakReference<Application.ActivityLifecycleCallbacks> a4 = aVar.a();
            if (a4 != null && (activityLifecycleCallbacks = a4.get()) != null) {
                activityLifecycleCallbacks.onActivityResumed(activity);
            }
            aVar.d(new WeakReference<>(activity));
            u0.e("onActivityResumed " + activity.getClass().getSimpleName());
        }

        @Override // com.xinzhu.overmind.client.hook.delegate.a, android.app.Application.ActivityLifecycleCallbacks
        public void onActivitySaveInstanceState(@NotNull Activity activity, @NotNull Bundle outState) {
            Intrinsics.checkNotNullParameter(activity, "activity");
            Intrinsics.checkNotNullParameter(outState, "outState");
        }

        @Override // com.xinzhu.overmind.client.hook.delegate.a, android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStarted(@NotNull Activity activity) {
            Application.ActivityLifecycleCallbacks activityLifecycleCallbacks;
            Intrinsics.checkNotNullParameter(activity, "activity");
            a aVar = d.f52345e;
            WeakReference<Application.ActivityLifecycleCallbacks> a4 = aVar.a();
            if (a4 != null && (activityLifecycleCallbacks = a4.get()) != null) {
                activityLifecycleCallbacks.onActivityStarted(activity);
            }
            aVar.d(new WeakReference<>(activity));
            u0.e("onActivityStarted " + activity.getClass().getSimpleName());
        }

        @Override // com.xinzhu.overmind.client.hook.delegate.a, android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStopped(@NotNull Activity activity) {
            Application.ActivityLifecycleCallbacks activityLifecycleCallbacks;
            Intrinsics.checkNotNullParameter(activity, "activity");
            a aVar = d.f52345e;
            WeakReference<Application.ActivityLifecycleCallbacks> a4 = aVar.a();
            if (a4 != null && (activityLifecycleCallbacks = a4.get()) != null) {
                activityLifecycleCallbacks.onActivityStopped(activity);
            }
            aVar.d(new WeakReference<>(activity));
            u0.e("onActivityStopped " + activity.getClass().getSimpleName());
        }
    }

    /* compiled from: OvermindLoadCallback.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0005\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0003\u001a\u00020\u0002H\u0016J\b\u0010\u0004\u001a\u00020\u0002H\u0016J\b\u0010\u0005\u001a\u00020\u0002H\u0016J\b\u0010\u0006\u001a\u00020\u0002H\u0016J\b\u0010\u0007\u001a\u00020\u0002H\u0016J\b\u0010\t\u001a\u00020\bH\u0016J\b\u0010\n\u001a\u00020\bH\u0016J\b\u0010\u000b\u001a\u00020\bH\u0016J\u001a\u0010\u000f\u001a\u00020\b2\b\u0010\f\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u000e\u001a\u00020\rH\u0016J\b\u0010\u0010\u001a\u00020\bH\u0016J\b\u0010\u0011\u001a\u00020\bH\u0016¨\u0006\u0012"}, d2 = {"com/join/mgps/va/overmind/d$d", "Lcom/xinzhu/overmind/client/a;", "", "getHostPackageName", "getMainPackageName", "getPluginPackageName", "getMainAuthorityPrefix", "getPluginAuthorityPrefix", "", "isPluginValid", "ifDisablePluginPackageAutoManage", "ifDisableDaemonService", "packageName", "", "userId", "ifDisableVirtualDeviceForPackage", "isHideRoot", "isHideXposed", "app_wufunNormalRelease"}, k = 1, mv = {1, 4, 2})
    /* renamed from: com.join.mgps.va.overmind.d$d  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0232d extends com.xinzhu.overmind.client.a {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f52348a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ boolean f52349b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ boolean f52350c;

        C0232d(Context context, boolean z3, boolean z4) {
            this.f52348a = context;
            this.f52349b = z3;
            this.f52350c = z4;
        }

        @Override // com.xinzhu.overmind.client.a
        @NotNull
        public String getHostPackageName() {
            String packageName = this.f52348a.getPackageName();
            Intrinsics.checkNotNullExpressionValue(packageName, "context.packageName");
            return packageName;
        }

        @Override // com.xinzhu.overmind.client.a
        @NotNull
        public String getMainAuthorityPrefix() {
            return "com.join.android.app.mgsim.wufun";
        }

        @Override // com.xinzhu.overmind.client.a
        @NotNull
        public String getMainPackageName() {
            return "com.join.android.app.mgsim.wufun";
        }

        @Override // com.xinzhu.overmind.client.a
        @NotNull
        public String getPluginAuthorityPrefix() {
            return "com.join.android.app.mgsim.wufun.addon";
        }

        @Override // com.xinzhu.overmind.client.a
        @NotNull
        public String getPluginPackageName() {
            return "com.join.android.app.mgsim.wufun.addon";
        }

        @Override // com.xinzhu.overmind.client.a
        public boolean ifDisableDaemonService() {
            return false;
        }

        @Override // com.xinzhu.overmind.client.a
        public boolean ifDisablePluginPackageAutoManage() {
            return true;
        }

        @Override // com.xinzhu.overmind.client.a
        public boolean ifDisableVirtualDeviceForPackage(@Nullable String str, int i2) {
            Bundle bundle = new Bundle();
            bundle.putString("packageName", str);
            bundle.putInt("userId", i2);
            Bundle bundle2 = null;
            try {
                bundle2 = i.a(d.f52344d, "miniGameInfo", null, bundle);
            } catch (Exception e4) {
                e4.printStackTrace();
            }
            if ((bundle2 == null || !bundle2.getBoolean("isMiniGame")) && VApp.f52335e.b()) {
                return bundle2 != null && bundle2.getInt("vm_device_switch") == 0;
            }
            return true;
        }

        @Override // com.xinzhu.overmind.client.a
        public boolean isHideRoot() {
            return this.f52349b;
        }

        @Override // com.xinzhu.overmind.client.a
        public boolean isHideXposed() {
            return this.f52350c;
        }

        @Override // com.xinzhu.overmind.client.a
        public boolean isPluginValid() {
            return e.f52358n.g(this.f52348a);
        }
    }

    private final ContentProviderClient e(Context context, Uri uri) {
        try {
            if (Build.VERSION.SDK_INT >= 16) {
                return context.getContentResolver().acquireUnstableContentProviderClient(uri);
            }
            return context.getContentResolver().acquireContentProviderClient(uri);
        } catch (SecurityException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    private final void j(ContentProviderClient contentProviderClient) {
        if (contentProviderClient != null) {
            try {
                if (Build.VERSION.SDK_INT >= 24) {
                    contentProviderClient.close();
                } else {
                    contentProviderClient.release();
                }
            } catch (Exception unused) {
            }
        }
    }

    @Nullable
    public final Bundle call(@NotNull Context context, @NotNull Uri uri, @Nullable String str, @Nullable String str2, @Nullable Bundle bundle) throws IllegalAccessException {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(uri, "uri");
        if (Build.VERSION.SDK_INT < 17) {
            ContentResolver contentResolver = context.getContentResolver();
            Intrinsics.checkNotNull(str);
            return contentResolver.call(uri, str, str2, bundle);
        }
        ContentProviderClient e4 = e(context, uri);
        try {
            try {
                if (e4 != null) {
                    Intrinsics.checkNotNull(str);
                    return e4.call(str, str2, bundle);
                }
                throw new IllegalAccessException();
            } catch (RemoteException e5) {
                throw new IllegalAccessException(e5.getMessage());
            }
        } finally {
            j(e4);
        }
    }

    public final void f() {
        Overmind overmind = Overmind.get();
        Intrinsics.checkNotNullExpressionValue(overmind, "Overmind.get()");
        overmind.setAppLifecycleCallback(new b());
        Overmind overmind2 = Overmind.get();
        Intrinsics.checkNotNullExpressionValue(overmind2, "Overmind.get()");
        overmind2.setActivityLifecycleCallback(new c());
    }

    public final void g(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        SharedPreferences sharedPreferences = context.getSharedPreferences(context.getPackageName() + "_preferences", 0);
        Overmind.get().doAttachBaseContext(context, new C0232d(context, sharedPreferences.getBoolean("root_hide", false), sharedPreferences.getBoolean("xp_hide", false)));
    }

    public final void h(@Nullable Context context) {
        if (context == null) {
            return;
        }
        try {
            SharedPreferences sharedPreferences = context.getSharedPreferences("com.facebook.sdk.USER_SETTINGS", 4);
            if (sharedPreferences.getInt("com.facebook.sdk.USER_SETTINGS_BITMASK", -1) == -1) {
                sharedPreferences.edit().putInt("com.facebook.sdk.USER_SETTINGS_BITMASK", 7).apply();
            }
            SharedPreferences sharedPreferences2 = context.getSharedPreferences("com.facebook.sdk.appEventPreferences", 4);
            if (sharedPreferences2.getInt("kitsBitmask", -1) == -1) {
                sharedPreferences2.edit().putInt("kitsBitmask", 551).apply();
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public final void i(@NotNull String packageName, @NotNull String processName, @Nullable Application application) {
        boolean contains$default;
        int indexOf$default;
        Application.ActivityLifecycleCallbacks activityLifecycleCallbacks;
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        Intrinsics.checkNotNullParameter(processName, "processName");
        if (application == null) {
            return;
        }
        try {
            if (Build.VERSION.SDK_INT >= 23) {
                boolean isCleartextTrafficPermitted = NetworkSecurityPolicy.getInstance().isCleartextTrafficPermitted();
                u0.e("isCleartextTrafficPermitted " + isCleartextTrafficPermitted);
            }
            if (!TextUtils.isEmpty(packageName) && !TextUtils.isEmpty(processName)) {
                String str = "";
                String str2 = null;
                if (Intrinsics.areEqual(packageName, processName)) {
                    u0.e("launchMod start:" + processName);
                    Object Y = new e().Y(packageName, processName, application);
                    if (Y != null && (Y instanceof Application.ActivityLifecycleCallbacks)) {
                        f52342b = new WeakReference<>(Y);
                    }
                    String[] strArr = new String[1];
                    StringBuilder sb = new StringBuilder();
                    sb.append("launchMod finish:");
                    sb.append(processName);
                    sb.append(", activityLifeCallback:");
                    WeakReference<Application.ActivityLifecycleCallbacks> weakReference = f52342b;
                    if (weakReference != null && (activityLifecycleCallbacks = weakReference.get()) != null) {
                        str2 = activityLifecycleCallbacks.getClass().getName();
                    }
                    sb.append(str2);
                    strArr[0] = sb.toString();
                    u0.e(strArr);
                } else {
                    contains$default = StringsKt__StringsKt.contains$default((CharSequence) processName, (CharSequence) ":", false, 2, (Object) null);
                    if (contains$default) {
                        indexOf$default = StringsKt__StringsKt.indexOf$default((CharSequence) processName, ":", 0, false, 6, (Object) null);
                        str = processName.substring(indexOf$default + 1);
                        Intrinsics.checkNotNullExpressionValue(str, "(this as java.lang.String).substring(startIndex)");
                    }
                }
                String[] strArr2 = new String[1];
                StringBuilder sb2 = new StringBuilder();
                sb2.append("process->");
                if (TextUtils.isEmpty(str)) {
                    str = "main";
                }
                sb2.append(str);
                strArr2[0] = sb2.toString();
                u0.e(strArr2);
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }
}
