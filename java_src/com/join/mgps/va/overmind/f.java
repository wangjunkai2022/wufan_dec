package com.join.mgps.va.overmind;

import android.content.Context;
import android.os.storage.StorageManager;
import com.join.mgps.Util.u0;
import com.umeng.analytics.pro.ai;
import com.xinzhu.overmind.Overmind;
import com.xinzhu.overmind.server.pm.MindPackageSettings;
import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__MutableCollectionsKt;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: VDir.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\b\u0019\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b3\u00104J\u0010\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u001a\u0010\b\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00022\b\b\u0002\u0010\u0007\u001a\u00020\u0006H\u0007J\u001a\u0010\t\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00022\b\b\u0002\u0010\u0007\u001a\u00020\u0006H\u0007J\u000e\u0010\n\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0002J\u0016\u0010\u000b\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0006J\u000e\u0010\f\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0002J\u0016\u0010\r\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0006J\u001a\u0010\u000e\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00022\b\b\u0002\u0010\u0007\u001a\u00020\u0006H\u0007J\u001a\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00022\b\b\u0002\u0010\u0007\u001a\u00020\u0006H\u0007J$\u0010\u0012\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00022\b\b\u0002\u0010\u0007\u001a\u00020\u00062\b\b\u0002\u0010\u0011\u001a\u00020\u0010H\u0007J\u001a\u0010\u0013\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00022\b\b\u0002\u0010\u0007\u001a\u00020\u0006H\u0007J\u001a\u0010\u0014\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00022\b\b\u0002\u0010\u0007\u001a\u00020\u0006H\u0007J\u001a\u0010\u0015\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00022\b\b\u0002\u0010\u0007\u001a\u00020\u0006H\u0007J\u001c\u0010\u0016\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u00022\b\b\u0002\u0010\u0007\u001a\u00020\u0006H\u0007J\u001c\u0010\u0017\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u00022\b\b\u0002\u0010\u0007\u001a\u00020\u0006H\u0007J\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00020\u0018J\u001d\u0010\u001d\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u001c2\u0006\u0010\u001b\u001a\u00020\u001a¢\u0006\u0004\b\u001d\u0010\u001eJ\u000e\u0010\u001f\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0002J\u000e\u0010 \u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0002J\u000e\u0010!\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0002J\u0018\u0010\"\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00022\b\b\u0002\u0010\u0007\u001a\u00020\u0006J\u000e\u0010#\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0002J\u0018\u0010$\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00022\b\b\u0002\u0010\u0007\u001a\u00020\u0006J\u0018\u0010%\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00022\b\b\u0002\u0010\u0007\u001a\u00020\u0006J\u0018\u0010&\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00022\b\b\u0002\u0010\u0007\u001a\u00020\u0006R\u0019\u0010*\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b!\u0010'\u001a\u0004\b(\u0010)R\u0019\u0010,\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u001d\u0010'\u001a\u0004\b+\u0010)R\u0013\u0010.\u001a\u00020\u00028F@\u0006¢\u0006\u0006\u001a\u0004\b-\u0010)R\u0013\u00100\u001a\u00020\u00028F@\u0006¢\u0006\u0006\u001a\u0004\b/\u0010)R\u0019\u00102\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0004\u0010'\u001a\u0004\b1\u0010)¨\u00065"}, d2 = {"Lcom/join/mgps/va/overmind/f;", "", "", "path", "a", "packageName", "", "userId", "w", ai.aB, "M", "N", "O", "P", "q", ai.aF, "", "excludeExt", "k", "n", "U", "R", "J", "G", "", "L", "Landroid/content/Context;", "context", "", "b", "(Landroid/content/Context;)[Ljava/lang/String;", "Y", "Z", ai.aD, com.xinzhu.overmind.utils.helpers.d.f64708a, "f", com.sdk.a.g.f56552a, "D", "B", "Ljava/lang/String;", "a0", "()Ljava/lang/String;", "virtualAndroidDir", "c0", "virtualExternalStorageDirExt", "X", "saveDataDirExt", "W", "saveDataDir", "b0", "virtualExternalStorageDir", "<init>", "()V", "app_wufunNormalRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes.dex */
public final class f {
    @NotNull

    /* renamed from: a */
    private static final String f52366a;
    @NotNull

    /* renamed from: b */
    private static final String f52367b;
    @NotNull

    /* renamed from: c */
    private static final String f52368c;
    @NotNull

    /* renamed from: d */
    public static final f f52369d;

    static {
        Object absolutePath;
        f fVar = new f();
        f52369d = fVar;
        StringBuilder sb = new StringBuilder();
        if (Overmind.is64Bit()) {
            absolutePath = com.xinzhu.overmind.a.T();
        } else {
            File S = com.xinzhu.overmind.a.S();
            Intrinsics.checkNotNullExpressionValue(S, "MindEnvironment.getVirtualRoot()");
            absolutePath = S.getAbsolutePath();
        }
        sb.append(absolutePath);
        sb.append("/sdcard");
        String a4 = fVar.a(sb.toString());
        f52366a = a4;
        StringBuilder sb2 = new StringBuilder();
        File T = com.xinzhu.overmind.a.T();
        Intrinsics.checkNotNullExpressionValue(T, "MindEnvironment.getVirtualRoot_plugin()");
        sb2.append(T.getAbsolutePath());
        sb2.append("/sdcard");
        f52367b = fVar.a(sb2.toString());
        f52368c = fVar.a(a4 + "/Android");
    }

    private f() {
    }

    public static /* synthetic */ String A(f fVar, String str, int i2, int i4, Object obj) {
        if ((i4 & 2) != 0) {
            i2 = 0;
        }
        return fVar.z(str, i2);
    }

    public static /* synthetic */ String C(f fVar, String str, int i2, int i4, Object obj) {
        if ((i4 & 2) != 0) {
            i2 = 0;
        }
        return fVar.B(str, i2);
    }

    public static /* synthetic */ String E(f fVar, String str, int i2, int i4, Object obj) {
        if ((i4 & 2) != 0) {
            i2 = 0;
        }
        return fVar.D(str, i2);
    }

    public static /* synthetic */ String H(f fVar, String str, int i2, int i4, Object obj) {
        if ((i4 & 2) != 0) {
            i2 = 0;
        }
        return fVar.G(str, i2);
    }

    public static /* synthetic */ String K(f fVar, String str, int i2, int i4, Object obj) {
        if ((i4 & 2) != 0) {
            i2 = 0;
        }
        return fVar.J(str, i2);
    }

    public static /* synthetic */ String S(f fVar, String str, int i2, int i4, Object obj) {
        if ((i4 & 2) != 0) {
            i2 = 0;
        }
        return fVar.R(str, i2);
    }

    public static /* synthetic */ String V(f fVar, String str, int i2, int i4, Object obj) {
        if ((i4 & 2) != 0) {
            i2 = 0;
        }
        return fVar.U(str, i2);
    }

    private final String a(String str) {
        File file = new File(str);
        if (!file.exists()) {
            file.mkdirs();
        }
        return str;
    }

    public static /* synthetic */ String e(f fVar, String str, int i2, int i4, Object obj) {
        if ((i4 & 2) != 0) {
            i2 = 0;
        }
        return fVar.d(str, i2);
    }

    public static /* synthetic */ String h(f fVar, String str, int i2, int i4, Object obj) {
        if ((i4 & 2) != 0) {
            i2 = 0;
        }
        return fVar.g(str, i2);
    }

    public static /* synthetic */ String l(f fVar, String str, int i2, boolean z3, int i4, Object obj) {
        if ((i4 & 2) != 0) {
            i2 = 0;
        }
        if ((i4 & 4) != 0) {
            z3 = false;
        }
        return fVar.k(str, i2, z3);
    }

    public static /* synthetic */ String o(f fVar, String str, int i2, int i4, Object obj) {
        if ((i4 & 2) != 0) {
            i2 = 0;
        }
        return fVar.n(str, i2);
    }

    public static /* synthetic */ String r(f fVar, String str, int i2, int i4, Object obj) {
        if ((i4 & 2) != 0) {
            i2 = 0;
        }
        return fVar.q(str, i2);
    }

    public static /* synthetic */ String u(f fVar, String str, int i2, int i4, Object obj) {
        if ((i4 & 2) != 0) {
            i2 = 0;
        }
        return fVar.t(str, i2);
    }

    public static /* synthetic */ String x(f fVar, String str, int i2, int i4, Object obj) {
        if ((i4 & 2) != 0) {
            i2 = 0;
        }
        return fVar.w(str, i2);
    }

    @NotNull
    public final String B(@NotNull String packageName, int i2) {
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        String str = f52366a + "/user/" + i2 + '/' + packageName;
        a(str);
        return str;
    }

    @NotNull
    public final String D(@NotNull String packageName, int i2) {
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        String str = f52366a + "/user/" + i2 + '/' + packageName;
        a(str);
        return str;
    }

    @JvmOverloads
    @NotNull
    public final String F(@Nullable String str) {
        return H(this, str, 0, 2, null);
    }

    @JvmOverloads
    @NotNull
    public final String G(@Nullable String str, int i2) {
        File file = new File(com.xinzhu.overmind.a.r(str, i2) + "/files/mod_cfg.ini");
        if (!file.getParentFile().exists()) {
            file.getParentFile().mkdirs();
        }
        if (!file.exists()) {
            try {
                file.createNewFile();
            } catch (IOException e4) {
                e4.printStackTrace();
            }
        }
        u0.e("ModConfigPath → " + file.getAbsolutePath());
        String absolutePath = file.getAbsolutePath();
        Intrinsics.checkNotNullExpressionValue(absolutePath, "cfgFile.absolutePath");
        return absolutePath;
    }

    @JvmOverloads
    @NotNull
    public final String I(@Nullable String str) {
        return K(this, str, 0, 2, null);
    }

    @JvmOverloads
    @NotNull
    public final String J(@Nullable String str, int i2) {
        return com.xinzhu.overmind.a.s(str, i2) + "/files/mod_cfg.ini";
    }

    @NotNull
    public final List<String> L() {
        List<String> mutableListOf;
        mutableListOf = CollectionsKt__CollectionsKt.mutableListOf("/mnt/sdcard/", "/sdcard/", "/storage/emulated/" + Overmind.getHostUserId() + net.lingala.zip4j.util.e.F0, "storage/emulated/" + Overmind.getHostUserId() + net.lingala.zip4j.util.e.F0);
        Context context = Overmind.getContext();
        Intrinsics.checkNotNullExpressionValue(context, "Overmind.getContext()");
        String[] b4 = b(context);
        if (b4 != null) {
            CollectionsKt__MutableCollectionsKt.addAll(mutableListOf, b4);
        }
        return mutableListOf;
    }

    @NotNull
    public final String M(@NotNull String packageName) {
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        return a(f52366a + "/Android/obb/" + packageName);
    }

    @NotNull
    public final String N(@NotNull String packageName, int i2) {
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        return a(f52366a + "/Android/obb/user/" + i2 + '/' + packageName);
    }

    @NotNull
    public final String O(@NotNull String packageName) {
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        return com.xinzhu.overmind.a.T() + "/sdcard/Android/obb/" + packageName;
    }

    @NotNull
    public final String P(@NotNull String packageName, int i2) {
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        return com.xinzhu.overmind.a.T() + "/sdcard/Android/obb/user/" + i2 + '/' + packageName;
    }

    @JvmOverloads
    @NotNull
    public final String Q(@NotNull String str) {
        return S(this, str, 0, 2, null);
    }

    @JvmOverloads
    @NotNull
    public final String R(@NotNull String packageName, int i2) {
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        File r3 = com.xinzhu.overmind.a.r(packageName, i2);
        Intrinsics.checkNotNullExpressionValue(r3, "MindEnvironment.getDataDir(packageName, userId)");
        File file = new File(r3.getAbsolutePath(), "app_pluginLib");
        if (!file.exists()) {
            file.mkdirs();
        }
        String absolutePath = file.getAbsolutePath();
        Intrinsics.checkNotNullExpressionValue(absolutePath, "libDir.absolutePath");
        return absolutePath;
    }

    @JvmOverloads
    @NotNull
    public final String T(@NotNull String str) {
        return V(this, str, 0, 2, null);
    }

    @JvmOverloads
    @NotNull
    public final String U(@NotNull String packageName, int i2) {
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        StringBuilder sb = new StringBuilder();
        File s3 = com.xinzhu.overmind.a.s(packageName, i2);
        Intrinsics.checkNotNullExpressionValue(s3, "MindEnvironment.getDataD…ugin(packageName, userId)");
        sb.append(s3.getAbsolutePath());
        sb.append("/app_pluginLib");
        return sb.toString();
    }

    @NotNull
    public final String W() {
        return f52366a + "/save_data";
    }

    @NotNull
    public final String X() {
        return f52367b + "/save_data";
    }

    @NotNull
    public final String Y(@NotNull String packageName) {
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        String str = W() + '/' + packageName;
        a(str);
        return str;
    }

    @NotNull
    public final String Z(@NotNull String packageName) {
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        String str = X() + '/' + packageName;
        a(str);
        return str;
    }

    @NotNull
    public final String a0() {
        return f52368c;
    }

    @Nullable
    public final String[] b(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        Object systemService = context.getSystemService("storage");
        Objects.requireNonNull(systemService, "null cannot be cast to non-null type android.os.storage.StorageManager");
        StorageManager storageManager = (StorageManager) systemService;
        try {
            Object invoke = storageManager.getClass().getMethod("getVolumePaths", new Class[0]).invoke(storageManager, new Object[0]);
            if (invoke != null) {
                return (String[]) invoke;
            }
            throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<kotlin.String>");
        } catch (Exception e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @NotNull
    public final String b0() {
        return f52366a;
    }

    @NotNull
    public final String c(@NotNull String packageName) {
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        String str = f52366a + "/Android/data/" + packageName;
        a(str);
        return str;
    }

    @NotNull
    public final String c0() {
        return f52367b;
    }

    @NotNull
    public final String d(@NotNull String packageName, int i2) {
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        String str = f52366a + "/Android/data/user/" + i2 + '/' + packageName;
        a(str);
        return str;
    }

    @NotNull
    public final String f(@NotNull String packageName) {
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        String str = f52367b + "/Android/data/" + packageName;
        a(str);
        return str;
    }

    @NotNull
    public final String g(@NotNull String packageName, int i2) {
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        String str = f52367b + "/Android/data/user/" + i2 + '/' + packageName;
        a(str);
        return str;
    }

    @JvmOverloads
    @NotNull
    public final String i(@NotNull String str) {
        return l(this, str, 0, false, 6, null);
    }

    @JvmOverloads
    @NotNull
    public final String j(@NotNull String str, int i2) {
        return l(this, str, i2, false, 4, null);
    }

    @JvmOverloads
    @NotNull
    public final String k(@NotNull String packageName, int i2, boolean z3) {
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        if (e.f52358n.b().M(packageName) && !z3) {
            File g4 = com.xinzhu.overmind.a.g(packageName);
            Intrinsics.checkNotNullExpressionValue(g4, "MindEnvironment.getAppLibDir_plugin(packageName)");
            String absolutePath = g4.getAbsolutePath();
            Intrinsics.checkNotNullExpressionValue(absolutePath, "MindEnvironment.getAppLi…packageName).absolutePath");
            return absolutePath;
        }
        File f4 = com.xinzhu.overmind.a.f(packageName);
        Intrinsics.checkNotNullExpressionValue(f4, "MindEnvironment.getAppLibDir(packageName)");
        String absolutePath2 = f4.getAbsolutePath();
        Intrinsics.checkNotNullExpressionValue(absolutePath2, "MindEnvironment.getAppLi…packageName).absolutePath");
        return absolutePath2;
    }

    @JvmOverloads
    @NotNull
    public final String m(@NotNull String str) {
        return o(this, str, 0, 2, null);
    }

    @JvmOverloads
    @NotNull
    public final String n(@NotNull String packageName, int i2) {
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        File g4 = com.xinzhu.overmind.a.g(packageName);
        Intrinsics.checkNotNullExpressionValue(g4, "MindEnvironment.getAppLibDir_plugin(packageName)");
        String absolutePath = g4.getAbsolutePath();
        Intrinsics.checkNotNullExpressionValue(absolutePath, "MindEnvironment.getAppLi…packageName).absolutePath");
        return absolutePath;
    }

    @JvmOverloads
    @NotNull
    public final String p(@NotNull String str) {
        return r(this, str, 0, 2, null);
    }

    @JvmOverloads
    @NotNull
    public final String q(@NotNull String packageName, int i2) {
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        StringBuilder sb = new StringBuilder();
        File r3 = com.xinzhu.overmind.a.r(packageName, i2);
        Intrinsics.checkNotNullExpressionValue(r3, "MindEnvironment.getDataD… userId\n                )");
        sb.append(r3.getAbsolutePath());
        sb.append("/files/archive_cfg.ini");
        File file = new File(sb.toString());
        if (!file.getParentFile().exists()) {
            file.getParentFile().mkdirs();
        }
        String absolutePath = file.getAbsolutePath();
        Intrinsics.checkNotNullExpressionValue(absolutePath, "file.absolutePath");
        return absolutePath;
    }

    @JvmOverloads
    @NotNull
    public final String s(@NotNull String str) {
        return u(this, str, 0, 2, null);
    }

    @JvmOverloads
    @NotNull
    public final String t(@NotNull String packageName, int i2) {
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        StringBuilder sb = new StringBuilder();
        File r3 = com.xinzhu.overmind.a.r(packageName, i2);
        Intrinsics.checkNotNullExpressionValue(r3, "MindEnvironment.getDataD… userId\n                )");
        sb.append(r3.getAbsolutePath());
        sb.append("/files/archive_cfg.ini");
        File file = new File(sb.toString());
        MindPackageSettings k4 = Overmind.getMindPackageManager().k(packageName);
        if (k4 != null && k4.k()) {
            StringBuilder sb2 = new StringBuilder();
            File s3 = com.xinzhu.overmind.a.s(packageName, i2);
            Intrinsics.checkNotNullExpressionValue(s3, "MindEnvironment.getDataD…rId\n                    )");
            sb2.append(s3.getAbsolutePath());
            sb2.append("/files/archive_cfg.ini");
            file = new File(sb2.toString());
        }
        if ((k4 == null || !k4.k()) && !file.getParentFile().exists()) {
            file.getParentFile().mkdirs();
        }
        String absolutePath = file.getAbsolutePath();
        Intrinsics.checkNotNullExpressionValue(absolutePath, "file.absolutePath");
        return absolutePath;
    }

    @JvmOverloads
    @NotNull
    public final String v(@NotNull String str) {
        return x(this, str, 0, 2, null);
    }

    @JvmOverloads
    @NotNull
    public final String w(@NotNull String packageName, int i2) {
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        if (Overmind.is64Bit()) {
            File s3 = com.xinzhu.overmind.a.s(packageName, i2);
            Intrinsics.checkNotNullExpressionValue(s3, "MindEnvironment.getDataD…         userId\n        )");
            String absolutePath = s3.getAbsolutePath();
            Intrinsics.checkNotNullExpressionValue(absolutePath, "MindEnvironment.getDataD…Id\n        ).absolutePath");
            return absolutePath;
        }
        File r3 = com.xinzhu.overmind.a.r(packageName, i2);
        Intrinsics.checkNotNullExpressionValue(r3, "MindEnvironment.getDataDir(packageName, userId)");
        String absolutePath2 = r3.getAbsolutePath();
        Intrinsics.checkNotNullExpressionValue(absolutePath2, "MindEnvironment.getDataD…ame, userId).absolutePath");
        return absolutePath2;
    }

    @JvmOverloads
    @NotNull
    public final String y(@NotNull String str) {
        return A(this, str, 0, 2, null);
    }

    @JvmOverloads
    @NotNull
    public final String z(@NotNull String packageName, int i2) {
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        File s3 = com.xinzhu.overmind.a.s(packageName, i2);
        Intrinsics.checkNotNullExpressionValue(s3, "MindEnvironment.getDataD…ugin(packageName, userId)");
        String absolutePath = s3.getAbsolutePath();
        Intrinsics.checkNotNullExpressionValue(absolutePath, "MindEnvironment.getDataD…ame, userId).absolutePath");
        return absolutePath;
    }
}
