package com.join.mgps.va.overmind;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageParser;
import android.os.Bundle;
import com.join.mgps.Util.g0;
import com.join.mgps.mod.utils.PluginConfig;
import com.join.mgps.va.overmind.e;
import com.umeng.analytics.pro.ai;
import com.xinzhu.overmind.Overmind;
import com.xinzhu.overmind.server.os.MindShareFileInfo;
import com.xinzhu.overmind.utils.p;
import java.io.File;
import java.util.List;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: VExtPackageAccessor.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\u0018\u0000 \u00042\u00020\u0001:\u0001\u0004B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, d2 = {"Lcom/join/mgps/va/overmind/h;", "", "<init>", "()V", "a", "app_wufunNormalRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes.dex */
public final class h {
    @NotNull

    /* renamed from: a */
    public static final a f52370a = new a(null);

    /* compiled from: VExtPackageAccessor.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u00006\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0018\u0010\u0019J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0012\u0010\t\u001a\u0004\u0018\u00010\b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0010\u0010\u000b\u001a\u00020\u00042\b\u0010\n\u001a\u0004\u0018\u00010\u0002J \u0010\u0010\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u00062\b\b\u0002\u0010\u000f\u001a\u00020\u000eJ\u0012\u0010\u0012\u001a\u00020\u00042\b\u0010\u0011\u001a\u0004\u0018\u00010\u0006H\u0007J \u0010\u0013\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0003\u001a\u00020\u0002H\u0007J\u0018\u0010\u0017\u001a\u00020\u00162\b\u0010\u0015\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u0011\u001a\u00020\u0006¨\u0006\u001a"}, d2 = {"com/join/mgps/va/overmind/h$a", "", "Landroid/os/Bundle;", "args", "", com.sdk.a.g.f56552a, "", com.facebook.common.util.f.f11767c, "Landroid/content/pm/PackageParser$Package;", "b", "data", ai.aD, "packageName", "gameId", "", "userId", com.xinzhu.overmind.utils.helpers.d.f64708a, "path", "delete", "f", "Landroid/content/Context;", "context", "", "a", "<init>", "()V", "app_wufunNormalRelease"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes.dex */
    public static final class a {
        private a() {
        }

        private final PackageParser.Package b(String str) {
            try {
                com.xinzhu.haunted.android.content.pm.i k4 = com.xinzhu.haunted.android.content.pm.i.k();
                Object l4 = k4.l(new File(str), 0);
                if (l4 != null) {
                    PackageParser.Package r12 = (PackageParser.Package) l4;
                    if (com.xinzhu.overmind.utils.e.x()) {
                        k4.j(r12, true);
                    } else {
                        k4.i(r12, 0);
                    }
                    return r12;
                }
                throw new NullPointerException("null cannot be cast to non-null type android.content.pm.PackageParser.Package");
            } catch (Exception e4) {
                e4.printStackTrace();
                return null;
            }
        }

        public static /* synthetic */ void e(a aVar, String str, String str2, int i2, int i4, Object obj) {
            if ((i4 & 4) != 0) {
                i2 = 0;
            }
            aVar.d(str, str2, i2);
        }

        private final void g(Bundle bundle) {
            int i2 = bundle.getInt("userId", 0);
            String string = bundle.getString("packageName");
            String string2 = bundle.getString("goldSwitch");
            String string3 = bundle.getString("archiveSwitch");
            String string4 = bundle.getString("channelNum");
            String string5 = bundle.getString("targetVersion");
            f fVar = f.f52369d;
            String G = fVar.G(string, i2);
            String J = fVar.J(string, i2);
            File file = new File(G);
            if (!file.getParentFile().exists()) {
                file.getParentFile().mkdirs();
            }
            g.i(G, string2, string3, string4, string5);
            com.xinzhu.overmind.plugin.b.f(G, J);
        }

        public final boolean a(@Nullable Context context, @NotNull String path) {
            PackageManager packageManager;
            PackageInfo packageArchiveInfo;
            Intrinsics.checkNotNullParameter(path, "path");
            if (context == null || (packageManager = context.getPackageManager()) == null || (packageArchiveInfo = packageManager.getPackageArchiveInfo(path, 128)) == null) {
                return false;
            }
            return packageArchiveInfo.applicationInfo.metaData.getBoolean(com.join.mgps.mod.utils.d.f51081k);
        }

        public final void c(@Nullable Bundle bundle) {
            if (bundle == null) {
                return;
            }
            try {
                if (Intrinsics.areEqual(bundle.getString("action"), "writeModSwitch")) {
                    g(bundle);
                }
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }

        public final void d(@NotNull String packageName, @NotNull String gameId, int i2) {
            Intrinsics.checkNotNullParameter(packageName, "packageName");
            Intrinsics.checkNotNullParameter(gameId, "gameId");
            try {
                f fVar = f.f52369d;
                String G = fVar.G(packageName, i2);
                String J = fVar.J(packageName, i2);
                if (!new File(G).exists()) {
                    PluginConfig.setModGameId(G, gameId);
                }
                com.xinzhu.overmind.plugin.b.f(G, J);
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }

        @JvmStatic
        public final void delete(@Nullable String str) {
            if (str == null || str.length() == 0) {
                return;
            }
            com.xinzhu.overmind.plugin.b.h(str);
        }

        @JvmStatic
        public final void f(@NotNull String packageName, int i2, @NotNull Bundle args) {
            List<String> listOf;
            int indexOf$default;
            int indexOf$default2;
            String replace$default;
            File file;
            String str;
            String str2;
            StringBuilder sb;
            File[] listFiles;
            File[] listFiles2;
            f fVar;
            String str3;
            int i4;
            Intrinsics.checkNotNullParameter(packageName, "packageName");
            Intrinsics.checkNotNullParameter(args, "args");
            f fVar2 = f.f52369d;
            String M = fVar2.M(packageName);
            String O = fVar2.O(packageName);
            boolean z3 = args.getBoolean("isOnlySyncData");
            long j4 = args.getLong("obbSize");
            long j5 = e.f52358n.b().j(O);
            if (!z3) {
                com.xinzhu.overmind.plugin.b.q(packageName, i2);
                if (j5 != j4 && j4 > 0) {
                    List<MindShareFileInfo> m4 = com.xinzhu.overmind.plugin.b.m(O);
                    if (m4 != null) {
                        for (MindShareFileInfo mindShareFileInfo : m4) {
                            delete(mindShareFileInfo.f64496a);
                        }
                    }
                    com.xinzhu.overmind.plugin.b.d(M, O);
                }
            }
            listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new String[]{"Papa_Stat_SharedPreferences.xml", "PrefDef.xml"});
            for (String str4 : listOf) {
                StringBuilder sb2 = new StringBuilder();
                File S = com.xinzhu.overmind.a.S();
                Intrinsics.checkNotNullExpressionValue(S, "MindEnvironment.getVirtualRoot()");
                File parentFile = S.getParentFile();
                Intrinsics.checkNotNullExpressionValue(parentFile, "MindEnvironment.getVirtualRoot().parentFile");
                sb2.append(parentFile.getAbsolutePath());
                sb2.append("/shared_prefs/");
                sb2.append(str4);
                String sb3 = sb2.toString();
                StringBuilder sb4 = new StringBuilder();
                File T = com.xinzhu.overmind.a.T();
                Intrinsics.checkNotNullExpressionValue(T, "MindEnvironment.getVirtualRoot_plugin()");
                File parentFile2 = T.getParentFile();
                Intrinsics.checkNotNullExpressionValue(parentFile2, "MindEnvironment.getVirtualRoot_plugin().parentFile");
                sb4.append(parentFile2.getAbsolutePath());
                sb4.append("/shared_prefs/");
                sb4.append(str4);
                com.xinzhu.overmind.plugin.b.f(sb3, sb4.toString());
            }
            String string = args.getString("modPath");
            if (string == null || string.length() == 0) {
                return;
            }
            File file2 = new File(string);
            if (file2.exists()) {
                String mainPkg = Overmind.getMainPkg();
                Intrinsics.checkNotNullExpressionValue(mainPkg, "Overmind.getMainPkg()");
                indexOf$default = StringsKt__StringsKt.indexOf$default((CharSequence) string, mainPkg, 0, false, 6, (Object) null);
                indexOf$default2 = StringsKt__StringsKt.indexOf$default((CharSequence) string, "/files/", 0, false, 6, (Object) null);
                Objects.requireNonNull(string, "null cannot be cast to non-null type java.lang.String");
                String substring = string.substring(indexOf$default, indexOf$default2);
                Intrinsics.checkNotNullExpressionValue(substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                String pluginPkg = Overmind.getPluginPkg();
                Intrinsics.checkNotNullExpressionValue(pluginPkg, "Overmind.getPluginPkg()");
                replace$default = StringsKt__StringsJVMKt.replace$default(string, substring, pluginPkg, false, 4, (Object) null);
                File file3 = new File(replace$default);
                MindShareFileInfo b4 = com.xinzhu.overmind.plugin.b.b(file3.getAbsolutePath());
                e.a aVar = e.f52358n;
                long j6 = aVar.b().j(file3.getAbsolutePath());
                if (b4 == null || !b4.f64497b.booleanValue() || j6 != file2.length()) {
                    com.xinzhu.overmind.plugin.b.f(file2.getAbsolutePath(), file3.getAbsolutePath());
                }
                if (a(Overmind.getContext(), string)) {
                    StringBuilder sb5 = new StringBuilder();
                    file = file2;
                    str = string;
                    sb5.append(f.l(f.f52369d, packageName, i2, false, 4, null));
                    sb5.append("/arm");
                    str2 = sb5.toString();
                } else {
                    file = file2;
                    str = string;
                    str2 = f.f52369d.w(packageName, i2) + "/app_pluginLib";
                }
                if (a(Overmind.getContext(), str)) {
                    sb = new StringBuilder();
                    sb.append(f.f52369d.U(packageName, i2));
                    sb.append("/arm64");
                } else {
                    sb = new StringBuilder();
                    sb.append(f.f52369d.z(packageName, i2));
                    sb.append("/app_pluginLib");
                }
                String sb6 = sb.toString();
                MindShareFileInfo b5 = com.xinzhu.overmind.plugin.b.b(sb6);
                long j7 = aVar.b().j(sb6);
                if (b5 == null || !b5.f64497b.booleanValue() || j7 != g0.q(str2)) {
                    File file4 = new File(str2);
                    if (file4.exists() && (listFiles2 = file4.listFiles()) != null) {
                        for (File file5 : listFiles2) {
                            file5.delete();
                        }
                    }
                    File file6 = new File(sb6);
                    if (file6.exists() && (listFiles = file6.listFiles()) != null) {
                        for (File pluginLib : listFiles) {
                            Intrinsics.checkNotNullExpressionValue(pluginLib, "pluginLib");
                            com.xinzhu.overmind.plugin.b.h(pluginLib.getAbsolutePath());
                        }
                    }
                    p.a(file, new File(str2), !Overmind.is64Bit());
                    com.xinzhu.overmind.plugin.b.d(str2, sb6);
                }
                StringBuilder sb7 = new StringBuilder();
                sb7.append(f.f52369d.w(packageName, i2));
                sb7.append("/files/mod_cfg.ini");
                String sb8 = sb7.toString();
                String str5 = fVar.z(packageName, i2) + "/files/mod_cfg.ini";
                String absolutePath = file.getAbsolutePath();
                Intrinsics.checkNotNullExpressionValue(absolutePath, "modFile.absolutePath");
                PackageParser.Package b6 = b(absolutePath);
                if (b6 != null) {
                    String str6 = b6.mVersionName;
                    Intrinsics.checkNotNullExpressionValue(str6, "it.mVersionName");
                    i4 = b6.mVersionCode;
                    str3 = str6;
                } else {
                    str3 = "1.0";
                    i4 = 1;
                }
                g.h(sb8, file.getAbsolutePath(), str3, i4, System.currentTimeMillis());
                g.j(sb8, args.getString("gameId"));
                com.xinzhu.overmind.plugin.b.f(sb8, str5);
            }
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    @JvmStatic
    public static final void a(@NotNull String str, int i2, @NotNull Bundle bundle) {
        f52370a.f(str, i2, bundle);
    }

    @JvmStatic
    public static final void delete(@Nullable String str) {
        f52370a.delete(str);
    }
}
