package com.join.mgps.va.overmind;

import android.content.Context;
import android.content.res.Configuration;
import android.os.Build;
import com.join.mgps.Util.d2;
import com.join.mgps.pref.PrefDef_;
import com.papa91.arc.MApplication;
import com.umeng.analytics.pro.ai;
import com.xinzhu.overmind.Overmind;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONObject;
/* compiled from: VApp.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\n\b\u0016\u0018\u0000 \u00142\u00020\u0001:\u0001\u0012B\u0007¢\u0006\u0004\b\u0019\u0010\u001aJ\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014J\b\u0010\u0006\u001a\u00020\u0004H\u0016J\b\u0010\b\u001a\u00020\u0007H\u0016J\u0014\u0010\u000b\u001a\u0004\u0018\u00010\t2\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0016J\u0010\u0010\u000e\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\fH\u0016J\u0006\u0010\u000f\u001a\u00020\u0007J\u0006\u0010\u0010\u001a\u00020\u0007R\"\u0010\u0018\u001a\u00020\u00118\u0004@\u0004X\u0084.¢\u0006\u0012\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017¨\u0006\u001b"}, d2 = {"Lcom/join/mgps/va/overmind/VApp;", "Lcom/papa91/arc/MApplication;", "Landroid/content/Context;", "base", "", "attachBaseContext", "onCreate", "", "j", "", "path", "h", "Landroid/content/res/Configuration;", "newConfig", "onConfigurationChanged", com.sdk.a.g.f56552a, "f", "Lcom/join/mgps/pref/PrefDef_;", "a", "Lcom/join/mgps/pref/PrefDef_;", "e", "()Lcom/join/mgps/pref/PrefDef_;", ai.aA, "(Lcom/join/mgps/pref/PrefDef_;)V", "prefDef", "<init>", "()V", "app_wufunNormalRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes.dex */
public class VApp extends MApplication {

    /* renamed from: b  reason: collision with root package name */
    private static Context f52332b = null;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public static final String f52333c = "VApp";

    /* renamed from: a  reason: collision with root package name */
    protected PrefDef_ f52336a;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    public static final a f52335e = new a(null);

    /* renamed from: d  reason: collision with root package name */
    private static boolean f52334d = true;

    /* compiled from: VApp.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001c\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0007\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u0006\u0010\u0003\u001a\u00020\u0002R\"\u0010\u0005\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0005\u0010\u0006\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u0016\u0010\f\u001a\u00020\u000b8\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\f\u0010\rR\u0016\u0010\u000e\u001a\u00020\u00028\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u000e\u0010\u000f¨\u0006\u0012"}, d2 = {"com/join/mgps/va/overmind/VApp$a", "", "Landroid/content/Context;", "a", "", "virtualDeviceStatus", "Z", "b", "()Z", ai.aD, "(Z)V", "", "TAG", "Ljava/lang/String;", "context", "Landroid/content/Context;", "<init>", "()V", "app_wufunNormalRelease"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes.dex */
    public static final class a {
        private a() {
        }

        @NotNull
        public final Context a() {
            Context context = VApp.f52332b;
            if (context == null) {
                Intrinsics.throwUninitializedPropertyAccessException("context");
            }
            return context;
        }

        public final boolean b() {
            return VApp.f52334d;
        }

        public final void c(boolean z3) {
            VApp.f52334d = z3;
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: VApp.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\b\n\u0002\u0010\u0002\n\u0002\b\u0003\u0010\u0003\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"", "run", "()V", "<anonymous>"}, k = 3, mv = {1, 4, 2})
    /* loaded from: classes.dex */
    public static final class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            VApp.f52335e.c(VApp.this.j());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.content.ContextWrapper
    public void attachBaseContext(@Nullable Context context) {
        super.attachBaseContext(context);
        Intrinsics.checkNotNull(context);
        f52332b = context;
        if (f()) {
            return;
        }
        try {
            d dVar = new d();
            Context context2 = f52332b;
            if (context2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("context");
            }
            dVar.g(context2);
            dVar.f();
            if (com.xinzhu.overmind.utils.e.g()) {
                Overmind overmind = Overmind.get();
                Intrinsics.checkNotNullExpressionValue(overmind, "Overmind.get()");
                overmind.setXPEnable(false);
            }
            Overmind overmind2 = Overmind.get();
            Intrinsics.checkNotNullExpressionValue(overmind2, "Overmind.get()");
            overmind2.getAppLifecycleCallback();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    @NotNull
    protected final PrefDef_ e() {
        PrefDef_ prefDef_ = this.f52336a;
        if (prefDef_ == null) {
            Intrinsics.throwUninitializedPropertyAccessException("prefDef");
        }
        return prefDef_;
    }

    public final boolean f() {
        List listOf;
        String a4 = com.join.android.app.common.utils.i.a(this);
        StringBuilder sb = new StringBuilder();
        sb.append("emulator check: [");
        sb.append(getPackageName());
        sb.append(' ');
        sb.append(a4);
        sb.append(']');
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new String[]{":fba", ":fc", ":gba", ":sfc", ":md", ":gbc", ":ps", ":wsc", ":psp", ":y"});
        Iterator it2 = listOf.iterator();
        while (it2.hasNext()) {
            if (Intrinsics.areEqual(a4, getPackageName() + ((String) it2.next()))) {
                return true;
            }
        }
        return Build.VERSION.SDK_INT < 21;
    }

    public final boolean g() {
        Overmind overmind = Overmind.get();
        Intrinsics.checkNotNullExpressionValue(overmind, "Overmind.get()");
        if (overmind.isMonitorProcess()) {
            return true;
        }
        Overmind overmind2 = Overmind.get();
        Intrinsics.checkNotNullExpressionValue(overmind2, "Overmind.get()");
        if (overmind2.isServerProcess()) {
            return true;
        }
        Overmind overmind3 = Overmind.get();
        Intrinsics.checkNotNullExpressionValue(overmind3, "Overmind.get()");
        return overmind3.isVirtualProcess();
    }

    @Nullable
    public String h(@Nullable String str) {
        String str2 = "";
        if (!new File(str).exists()) {
            return "";
        }
        BufferedReader bufferedReader = null;
        try {
            try {
                try {
                    BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(new FileInputStream(str), "UTF-8"));
                    while (true) {
                        try {
                            String readLine = bufferedReader2.readLine();
                            if (readLine == null) {
                                break;
                            }
                            str2 = Intrinsics.stringPlus(str2, readLine);
                        } catch (IOException e4) {
                            e = e4;
                            bufferedReader = bufferedReader2;
                            e.printStackTrace();
                            if (bufferedReader != null) {
                                bufferedReader.close();
                            }
                            return str2;
                        } catch (Throwable th) {
                            th = th;
                            bufferedReader = bufferedReader2;
                            if (bufferedReader != null) {
                                try {
                                    bufferedReader.close();
                                } catch (IOException e5) {
                                    e5.printStackTrace();
                                }
                            }
                            throw th;
                        }
                    }
                    bufferedReader2.close();
                    bufferedReader2.close();
                } catch (IOException e6) {
                    e6.printStackTrace();
                }
            } catch (IOException e7) {
                e = e7;
            }
            return str2;
        } catch (Throwable th2) {
            th = th2;
        }
    }

    protected final void i(@NotNull PrefDef_ prefDef_) {
        Intrinsics.checkNotNullParameter(prefDef_, "<set-?>");
        this.f52336a = prefDef_;
    }

    public boolean j() {
        List listOf;
        Integer d4;
        try {
            PrefDef_ prefDef_ = this.f52336a;
            if (prefDef_ == null) {
                Intrinsics.throwUninitializedPropertyAccessException("prefDef");
            }
            Integer d5 = prefDef_.virtualDeviceState().d();
            if (d5 != null && d5.intValue() == -1) {
                listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new String[]{"294_4.8.8.8", "284_4.8.6.6", "260_4.8.2"});
                StringBuilder sb = new StringBuilder();
                Context context = f52332b;
                if (context == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("context");
                }
                File filesDir = context.getFilesDir();
                Intrinsics.checkNotNullExpressionValue(filesDir, "context.filesDir");
                sb.append(filesDir.getPath());
                sb.append(File.separator);
                sb.append("host_app.inf");
                String h4 = h(sb.toString());
                if (d2.i(h4)) {
                    try {
                        JSONObject jSONObject = new JSONObject(h4);
                        int i2 = jSONObject.getInt("mainHostVersionCode");
                        String string = jSONObject.getString("mainHostVersionName");
                        if (listOf.contains(i2 + '_' + string)) {
                            PrefDef_ prefDef_2 = this.f52336a;
                            if (prefDef_2 == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("prefDef");
                            }
                            prefDef_2.virtualDeviceState().g(0);
                            return false;
                        }
                    } catch (Exception e4) {
                        e4.printStackTrace();
                        PrefDef_ prefDef_3 = this.f52336a;
                        if (prefDef_3 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("prefDef");
                        }
                        prefDef_3.virtualDeviceState().g(1);
                        return true;
                    }
                }
                PrefDef_ prefDef_4 = this.f52336a;
                if (prefDef_4 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("prefDef");
                }
                prefDef_4.virtualDeviceState().g(1);
                return true;
            }
            PrefDef_ prefDef_5 = this.f52336a;
            if (prefDef_5 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("prefDef");
            }
            d4 = prefDef_5.virtualDeviceState().d();
        } catch (Exception e5) {
            e5.printStackTrace();
        }
        return d4 == null || d4.intValue() != 0;
    }

    @Override // com.papa91.arc.MApplication, android.app.Application, android.content.ComponentCallbacks
    public void onConfigurationChanged(@NotNull Configuration newConfig) {
        Intrinsics.checkNotNullParameter(newConfig, "newConfig");
        if (g()) {
            return;
        }
        super.onConfigurationChanged(newConfig);
    }

    @Override // com.papa91.arc.MApplication, com.papa91.arc.BuglyApplication, android.app.Application
    public void onCreate() {
        if (f()) {
            super.onCreate();
            return;
        }
        this.f52336a = new PrefDef_(this);
        Overmind.get().doCreate();
        Overmind overmind = Overmind.get();
        Intrinsics.checkNotNullExpressionValue(overmind, "Overmind.get()");
        if (overmind.isVirtualProcess()) {
            Overmind overmind2 = Overmind.get();
            Intrinsics.checkNotNullExpressionValue(overmind2, "Overmind.get()");
            overmind2.setCustomCallback(new com.join.mgps.va.overmind.b());
        }
        new Thread(new b()).start();
        if (g()) {
            return;
        }
        super.onCreate();
    }
}
