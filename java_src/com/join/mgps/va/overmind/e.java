package com.join.mgps.va.overmind;

import android.app.ActivityManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.webkit.URLUtil;
import androidx.annotation.RequiresApi;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.APKUtils;
import com.join.mgps.Util.u0;
import com.join.mgps.activity.PapayPayDetialActivity_;
import com.join.mgps.mod.bean.ModMeta;
import com.join.mgps.mod.utils.PluginConfig;
import com.papa91.arc.util.FileUtils;
import com.umeng.analytics.pro.ai;
import com.xinzhu.overmind.Overmind;
import com.xinzhu.overmind.entity.pm.InstallResult;
import com.xinzhu.overmind.server.os.MindShareFileInfo;
import com.xinzhu.overmind.server.pm.MindPackageSettings;
import com.xinzhu.overmind.server.user.MindUserInfo;
import java.io.File;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.SetsKt__SetsKt;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: VAUtils.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0088\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0010\u0011\n\u0002\b\u000f\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u0000 p2\u00020\u0001:\u0001eB\u0007¢\u0006\u0004\bn\u0010oJ\b\u0010\u0003\u001a\u00020\u0002H\u0002J\u001a\u0010\b\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0007\u001a\u00020\u0006H\u0002J\u0018\u0010\f\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\u0004H\u0002J\u0018\u0010\r\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\u0004H\u0002J\u0010\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\u0004H\u0002J\u001c\u0010\u0013\u001a\u00020\u00042\b\u0010\n\u001a\u0004\u0018\u00010\t2\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011H\u0002J\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u0014\u001a\u00020\u0004J\u0010\u0010\u0017\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004J\u0018\u0010\u0018\u001a\u00020\u000f2\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0007\u001a\u00020\u0006J\u001c\u0010\u001a\u001a\u0004\u0018\u00010\u00192\u0006\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0007\u001a\u00020\u0006H\u0007J\u001c\u0010\u001b\u001a\u00020\u000f2\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\u0007\u001a\u00020\u0006H\u0007J\u001a\u0010\u001c\u001a\u00020\u000f2\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\u0007\u001a\u00020\u0006J\u0010\u0010\u001d\u001a\u00020\u000f2\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004J\u0006\u0010\u001e\u001a\u00020\u0002J\u000e\u0010 \u001a\u00020\u00022\u0006\u0010\u001f\u001a\u00020\u0004J\u0018\u0010!\u001a\u00020\u000f2\b\u0010\n\u001a\u0004\u0018\u00010\t2\u0006\u0010\u000b\u001a\u00020\u0004J\u0006\u0010\"\u001a\u00020\u000fJ\u0006\u0010#\u001a\u00020\u000fJ\u0016\u0010$\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\u0004J\u0010\u0010'\u001a\u00020\u00022\b\u0010&\u001a\u0004\u0018\u00010%J\u0010\u0010(\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004J\u001a\u0010)\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\u0007\u001a\u00020\u0006J \u0010*\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004J\f\u0010,\u001a\b\u0012\u0004\u0012\u00020\u00190+J(\u00100\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010-\u001a\u00020\u00042\b\u0010.\u001a\u0004\u0018\u00010\u00042\u0006\u0010/\u001a\u00020\u0004J \u00105\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\t2\b\u00102\u001a\u0004\u0018\u0001012\u0006\u00104\u001a\u000203J\u0010\u00106\u001a\u00020\u000f2\u0006\u0010\n\u001a\u00020\tH\u0007J.\u00108\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\t2\b\u00102\u001a\u0004\u0018\u0001012\b\b\u0002\u0010\u0007\u001a\u00020\u00062\n\b\u0002\u00107\u001a\u0004\u0018\u00010\u0004J$\u0010<\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0005\u001a\u00020\u00042\b\u00109\u001a\u0004\u0018\u00010\u00042\b\u0010;\u001a\u0004\u0018\u00010:J\u0018\u0010=\u001a\u00020\u000f2\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0007\u001a\u00020\u0006J\u000e\u0010>\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0006J\u0018\u0010?\u001a\u00020\u000f2\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0007\u001a\u00020\u0006J\u0006\u0010@\u001a\u00020\u0002J\u0006\u0010A\u001a\u00020\u0002J8\u0010F\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010B\u001a\u00020\u00042\b\u0010C\u001a\u0004\u0018\u00010\u00042\u0006\u0010D\u001a\u00020\u00062\u0006\u0010E\u001a\u00020\u000fJ\"\u0010H\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010G\u001a\u00020\u00042\b\b\u0002\u0010\u0007\u001a\u00020\u0006H\u0007J\u0010\u0010J\u001a\u00020\u000f2\b\u0010I\u001a\u0004\u0018\u00010\u0011J%\u0010N\u001a\u00020\u000f2\u000e\u0010L\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010K2\u0006\u0010M\u001a\u00020\u000f¢\u0006\u0004\bN\u0010OJ\u0018\u0010Q\u001a\u00020\u000f2\b\u0010P\u001a\u0004\u0018\u00010\u00042\u0006\u0010M\u001a\u00020\u000fJ\u001a\u0010S\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010R\u001a\u0004\u0018\u00010\u0004JB\u0010Y\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010T\u001a\u0004\u0018\u00010\u00042\b\u0010U\u001a\u0004\u0018\u00010\u00042\b\u0010V\u001a\u0004\u0018\u00010\u00042\b\u0010W\u001a\u0004\u0018\u00010\u00042\b\u0010X\u001a\u0004\u0018\u00010\u0004J\u0006\u0010Z\u001a\u00020\u000fJ\u0010\u0010\\\u001a\u00020[2\b\u0010\u000b\u001a\u0004\u0018\u00010\u0004R\u0018\u0010_\u001a\u0004\u0018\u00010\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b]\u0010^R\u0018\u0010c\u001a\u0004\u0018\u00010`8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\ba\u0010bR\u001e\u0010f\u001a\n d*\u0004\u0018\u00010\u00040\u00048\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\be\u0010^R\u0016\u0010j\u001a\u00020g8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bh\u0010iR\u0016\u0010B\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bk\u0010^R\u0016\u0010m\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bl\u0010J¨\u0006q"}, d2 = {"Lcom/join/mgps/va/overmind/e;", "", "", "d0", "", "packageName", "", "userId", "m", "Landroid/content/Context;", "context", "path", "x", "w", "pkg", "", "C", "Landroid/content/pm/ApplicationInfo;", "ai", "X", "source", "Lcom/xinzhu/overmind/entity/pm/InstallResult;", ai.aB, "j0", "k0", "Lr1/a;", net.lingala.zip4j.util.e.f73017f0, "E", "G", "M", "b0", "targetPkg", "c0", "O", "J", "K", "V", "Landroid/content/Intent;", "intent", "R", "P", ai.aE, "S", "", ai.aF, "archivePath", "archivePath2", "archiveId", "y", "Lcom/join/mgps/mod/bean/ModMeta;", TTDownloadField.TT_META, "Lcom/github/snowdream/android/app/downloader/DownloadTask;", "task", "U", ai.aA, "modInfo", "T", "processName", "Landroid/app/Application;", "application", "Y", "A", "a0", "h", com.sdk.a.g.f56552a, "Q", "modPath", "version", "code", "isMod", "o", "abi", "h0", PapayPayDetialActivity_.f34856k, "I", "", "permissions", "isExt", "k", "([Ljava/lang/String;Z)Z", "permission", "l", "gameId", "l0", "goldSwitch", "archiveSwitch", "introductionSwitch", "channelNum", "targetVersion", "m0", "N", "", "j", com.xinzhu.overmind.utils.helpers.d.f64708a, "Ljava/lang/String;", "modVersion", "Lcom/join/mgps/mod/utils/b;", "f", "Lcom/join/mgps/mod/utils/b;", "apkLoader", "kotlin.jvm.PlatformType", "a", "TAG", "Ljava/util/concurrent/ThreadPoolExecutor;", "b", "Ljava/util/concurrent/ThreadPoolExecutor;", "executor", ai.aD, "e", "modCode", "<init>", "()V", "n", "app_wufunNormalRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes.dex */
public final class e {

    /* renamed from: g */
    private static int f52351g = 0;

    /* renamed from: h */
    private static boolean f52352h = false;
    @NotNull

    /* renamed from: j */
    public static final String f52354j = "com.join.android.app.mgsim.wufun";
    @NotNull

    /* renamed from: k */
    public static final String f52355k = "com.join.android.app.mgsim.wufun.addon";
    @NotNull

    /* renamed from: l */
    public static final String f52356l = "com.join.android.app.mgsim.wufun";
    @NotNull

    /* renamed from: m */
    public static final String f52357m = "com.join.android.app.mgsim.wufun.addon";

    /* renamed from: a */
    private final String f52359a = e.class.getCanonicalName();

    /* renamed from: b */
    private final ThreadPoolExecutor f52360b = new ThreadPoolExecutor(1, 1, 0, TimeUnit.MILLISECONDS, new LinkedBlockingQueue());

    /* renamed from: c */
    private String f52361c = "";

    /* renamed from: d */
    private String f52362d = "0";

    /* renamed from: e */
    private int f52363e;

    /* renamed from: f */
    private com.join.mgps.mod.utils.b f52364f;
    @NotNull

    /* renamed from: n */
    public static final a f52358n = new a(null);

    /* renamed from: i */
    private static e f52353i = new e();

    /* compiled from: VAUtils.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u00006\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u001a\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b*\u0010\u001bJ\b\u0010\u0003\u001a\u00020\u0002H\u0007J\u001a\u0010\t\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0007\u001a\u00020\u0006H\u0007J\u0010\u0010\f\u001a\u00020\b2\b\u0010\u000b\u001a\u0004\u0018\u00010\nJ\u001a\u0010\u0010\u001a\u00020\b2\u0006\u0010\u000e\u001a\u00020\r2\b\u0010\u000f\u001a\u0004\u0018\u00010\rH\u0007J\u0010\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u000b\u001a\u00020\nH\u0007J\u000e\u0010\u0014\u001a\u00020\r2\u0006\u0010\u0013\u001a\u00020\rR\u0013\u0010\u0017\u001a\u00020\r8F@\u0006¢\u0006\u0006\u001a\u0004\b\u0015\u0010\u0016R\u001c\u0010\u001c\u001a\u00020\u00118F@\u0007X\u0087\u0004¢\u0006\f\u0012\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u0018\u0010\u0019R\"\u0010\u001d\u001a\u00020\u00118\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001d\u0010\u001e\u001a\u0004\b\u001f\u0010\u0019\"\u0004\b \u0010!R\u0016\u0010\"\u001a\u00020\r8\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\"\u0010#R\u0016\u0010$\u001a\u00020\r8\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b$\u0010#R\u0016\u0010%\u001a\u00020\r8\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b%\u0010#R\u0016\u0010&\u001a\u00020\r8\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b&\u0010#R\u0016\u0010'\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b'\u0010(R\u0016\u0010\u0007\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0007\u0010)¨\u0006+"}, d2 = {"com/join/mgps/va/overmind/e$a", "", "Lcom/join/mgps/va/overmind/e;", "b", "Landroid/content/Intent;", "intent", "", "userId", "", "k", "Landroid/content/Context;", "context", "a", "", "packageName", "modPath", "h", "", com.sdk.a.g.f56552a, "path", ai.aA, ai.aD, "()Ljava/lang/String;", "extProviderAuthority", "e", "()Z", "is64Bit$annotations", "()V", "is64Bit", "useNativeLibDir", "Z", com.xinzhu.overmind.utils.helpers.d.f64708a, "m", "(Z)V", "MAIN_PACKAGE_NAME", "Ljava/lang/String;", "OVERMIND_AUTHORITY_PREFIX", "OVERMIND_PLUGIN_AUTHORITY_PREFIX", "STUB_PACKAGE_NAME", "instance", "Lcom/join/mgps/va/overmind/e;", "I", "<init>", "app_wufunNormalRelease"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes.dex */
    public static final class a {
        private a() {
        }

        @JvmStatic
        public static /* synthetic */ void f() {
        }

        public static /* synthetic */ void l(a aVar, Intent intent, int i2, int i4, Object obj) {
            if ((i4 & 2) != 0) {
                i2 = 0;
            }
            aVar.k(intent, i2);
        }

        public final void a(@Nullable Context context) {
            if (b().N() && context != null) {
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
        }

        @JvmStatic
        @NotNull
        public final e b() {
            return e.f52353i;
        }

        @NotNull
        public final String c() {
            return "content://com.join.android.app.mgsim.wufun.addon.virtual.service.fileprovider";
        }

        public final boolean d() {
            return e.f52352h;
        }

        public final boolean e() {
            if (e.f52358n.b().N()) {
                return Overmind.is64Bit();
            }
            return false;
        }

        @JvmStatic
        public final boolean g(@NotNull Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            try {
                ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo("com.join.android.app.mgsim.wufun.addon", 128);
                Intrinsics.checkNotNullExpressionValue(applicationInfo, "context.packageManager\n …ATA\n                    )");
                if (applicationInfo != null) {
                    return Integer.valueOf(applicationInfo.metaData.getInt("support_vm_version")).equals(com.join.android.app.mgsim.wufun.b.f17921o);
                }
            } catch (Exception e4) {
                e4.printStackTrace();
            }
            return false;
        }

        @JvmStatic
        public final void h(@NotNull String packageName, @Nullable String str) {
            MindPackageSettings k4;
            Intrinsics.checkNotNullParameter(packageName, "packageName");
            if (b().N() && (k4 = Overmind.getMindPackageManager().k(packageName)) != null) {
                boolean z3 = true;
                Set<String> emptySet = str == null || str.length() == 0 ? SetsKt__SetsKt.emptySet() : c.f52341a.d(str);
                HashSet<String> hashSet = k4.f64566d;
                Intrinsics.checkNotNullExpressionValue(hashSet, "info.supportAbis");
                HashSet hashSet2 = new HashSet();
                hashSet2.addAll(hashSet);
                hashSet2.retainAll(emptySet);
                boolean z4 = !Overmind.is64Bit();
                k4.k();
                if (hashSet2.isEmpty()) {
                    if (hashSet.isEmpty()) {
                        return;
                    }
                    if ((z4 && c.f52341a.a(hashSet)) || (!z4 && c.f52341a.b(hashSet))) {
                        z3 = false;
                    }
                    if (k4.k() != z3) {
                        Overmind.getMindPackageManager().C(packageName, z3);
                    }
                } else if (emptySet.isEmpty()) {
                } else {
                    if ((z4 && c.f52341a.a(hashSet2)) || (!z4 && c.f52341a.b(hashSet2))) {
                        z3 = false;
                    }
                    if (k4.k() != z3) {
                        Overmind.getMindPackageManager().C(packageName, z3);
                    }
                }
            }
        }

        @NotNull
        public final String i(@NotNull String path) {
            int indexOf$default;
            int indexOf$default2;
            String replace$default;
            Intrinsics.checkNotNullParameter(path, "path");
            try {
                String str = "com.join.android.app.mgsim.wufun";
                indexOf$default = StringsKt__StringsKt.indexOf$default((CharSequence) path, "com.join.android.app.mgsim.wufun", 0, false, 6, (Object) null);
                indexOf$default2 = StringsKt__StringsKt.indexOf$default((CharSequence) path, net.lingala.zip4j.util.e.F0, indexOf$default, false, 4, (Object) null);
                if (indexOf$default != -1 && indexOf$default < indexOf$default2) {
                    str = path.substring(indexOf$default, indexOf$default2);
                    Intrinsics.checkNotNullExpressionValue(str, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                }
                replace$default = StringsKt__StringsJVMKt.replace$default(path, str, "com.join.android.app.mgsim.wufun.addon", false, 4, (Object) null);
            } catch (Exception e4) {
                e = e4;
            }
            try {
                u0.e("replace " + path + " → " + replace$default);
                return replace$default;
            } catch (Exception e5) {
                e = e5;
                path = replace$default;
                e.printStackTrace();
                return path;
            }
        }

        @JvmStatic
        @JvmOverloads
        public final void j(@NotNull Intent intent) {
            l(this, intent, 0, 2, null);
        }

        @JvmStatic
        @JvmOverloads
        public final void k(@NotNull Intent intent, int i2) {
            Intrinsics.checkNotNullParameter(intent, "intent");
        }

        public final void m(boolean z3) {
            e.f52352h = z3;
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* compiled from: VAUtils.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\b\n\u0002\u0010\u0002\n\u0002\b\u0003\u0010\u0003\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"", "run", "()V", "<anonymous>"}, k = 3, mv = {1, 4, 2})
    /* loaded from: classes.dex */
    public static final class b implements Runnable {

        /* renamed from: a */
        final /* synthetic */ String f52365a;

        b(String str) {
            this.f52365a = str;
        }

        @Override // java.lang.Runnable
        public final void run() {
            String str = this.f52365a;
            if (str == null || str.length() == 0) {
                return;
            }
            e.f52358n.b().P(this.f52365a);
            u0.e("killModApp:" + e.f52351g + ' ' + this.f52365a);
        }
    }

    public static final boolean B() {
        return f52358n.e();
    }

    private final boolean C(String str) {
        return com.xinzhu.overmind.a.d(str).exists();
    }

    public static /* synthetic */ boolean F(e eVar, String str, int i2, int i4, Object obj) {
        if ((i4 & 2) != 0) {
            i2 = f52351g;
        }
        return eVar.E(str, i2);
    }

    public static /* synthetic */ boolean H(e eVar, String str, int i2, int i4, Object obj) {
        if ((i4 & 2) != 0) {
            i2 = 0;
        }
        return eVar.G(str, i2);
    }

    @JvmStatic
    public static final boolean L(@NotNull Context context) {
        return f52358n.g(context);
    }

    public static /* synthetic */ void W(e eVar, Context context, ModMeta modMeta, int i2, String str, int i4, Object obj) {
        if ((i4 & 4) != 0) {
            i2 = f52351g;
        }
        if ((i4 & 8) != 0) {
            str = null;
        }
        eVar.T(context, modMeta, i2, str);
    }

    private final String X(Context context, ApplicationInfo applicationInfo) {
        String str = "";
        if (context != null && applicationInfo != null) {
            try {
                String str2 = applicationInfo.packageName;
                Intrinsics.checkNotNullExpressionValue(str2, "ai.packageName");
                r1.a s3 = s(this, str2, 0, 2, null);
                if (s3 != null) {
                    str = s3.f74024e.toString();
                } else {
                    str = applicationInfo.loadLabel(context.getPackageManager()).toString();
                }
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
        return str;
    }

    @JvmStatic
    public static final void Z(@NotNull String str, @Nullable String str2) {
        f52358n.h(str, str2);
    }

    private final void d0() {
        if (N()) {
            Overmind overmindCore = Overmind.get();
            Intrinsics.checkNotNullExpressionValue(overmindCore, "overmindCore");
            List<MindUserInfo> users = overmindCore.getUsers();
            if (users == null || users.isEmpty()) {
                return;
            }
            int i2 = ((MindUserInfo) CollectionsKt.last((List<? extends Object>) users)).f64670a;
            if (overmindCore.getInstalledApplications(0, i2).isEmpty()) {
                overmindCore.deleteUser(i2);
                d0();
            }
        }
    }

    @JvmStatic
    @JvmOverloads
    public static final void e0(@NotNull Intent intent) {
        a.l(f52358n, intent, 0, 2, null);
    }

    @JvmStatic
    @JvmOverloads
    public static final void f0(@NotNull Intent intent, int i2) {
        f52358n.k(intent, i2);
    }

    public static /* synthetic */ void i0(e eVar, String str, String str2, int i2, int i4, Object obj) {
        if ((i4 & 4) != 0) {
            i2 = 0;
        }
        eVar.h0(str, str2, i2);
    }

    private final void m(String str, int i2) {
        String N;
        String d4;
        String D;
        List<String> listOf;
        String B;
        String str2;
        String str3;
        List<String> listOf2;
        if (N()) {
            MindPackageSettings k4 = Overmind.getMindPackageManager().k(str);
            f fVar = f.f52369d;
            String w3 = fVar.w(str, i2);
            if (i2 == 0) {
                N = fVar.M(str);
                d4 = fVar.c(str);
                D = fVar.Y(str);
            } else {
                N = fVar.N(str, i2);
                d4 = fVar.d(str, i2);
                D = fVar.D(str, i2);
            }
            listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new String[]{w3, N, d4, D});
            for (String str4 : listOf) {
                FileUtils.deleteDirs(str4);
            }
            if (k4.k()) {
                f fVar2 = f.f52369d;
                String z3 = fVar2.z(str, i2);
                if (i2 == 0) {
                    str2 = fVar2.O(str);
                    str3 = fVar2.f(str);
                    B = fVar2.Z(str);
                } else {
                    String P = fVar2.P(str, i2);
                    String g4 = fVar2.g(str, i2);
                    B = fVar2.B(str, i2);
                    str2 = P;
                    str3 = g4;
                }
                listOf2 = CollectionsKt__CollectionsKt.listOf((Object[]) new String[]{z3, str2, str3, B});
                for (String str5 : listOf2) {
                    com.xinzhu.overmind.plugin.b.h(str5);
                }
            }
        }
    }

    static /* synthetic */ void n(e eVar, String str, int i2, int i4, Object obj) {
        if ((i4 & 2) != 0) {
            i2 = 0;
        }
        eVar.m(str, i2);
    }

    @JvmStatic
    @NotNull
    public static final e p() {
        return f52358n.b();
    }

    public static /* synthetic */ r1.a s(e eVar, String str, int i2, int i4, Object obj) {
        if ((i4 & 2) != 0) {
            i2 = 0;
        }
        return eVar.r(str, i2);
    }

    public static /* synthetic */ int v(e eVar, String str, int i2, int i4, Object obj) {
        if ((i4 & 2) != 0) {
            i2 = f52351g;
        }
        return eVar.u(str, i2);
    }

    private final int w(Context context, String str) {
        try {
            PackageInfo packageArchiveInfo = context.getPackageManager().getPackageArchiveInfo(str, 128);
            u0.e(this.f52359a, "loadApk packageInfo");
            if (packageArchiveInfo != null) {
                return packageArchiveInfo.versionCode;
            }
            return 0;
        } catch (Exception e4) {
            e4.printStackTrace();
            return 0;
        }
    }

    private final String x(Context context, String str) {
        try {
            PackageInfo packageArchiveInfo = context.getPackageManager().getPackageArchiveInfo(str, 128);
            if (packageArchiveInfo != null) {
                Intrinsics.checkNotNullExpressionValue(packageArchiveInfo, "context.packageManager.g…            ?: return \"0\"");
                String str2 = packageArchiveInfo.versionName;
                Intrinsics.checkNotNullExpressionValue(str2, "packageInfo.versionName");
                return str2;
            }
            return "0";
        } catch (Exception e4) {
            e4.printStackTrace();
            return "0";
        }
    }

    public final boolean A(@Nullable String str, int i2) {
        InstallResult installPackageAsUser_System;
        String str2;
        if ((str == null || str.length() == 0) || !N()) {
            return false;
        }
        Overmind overmind = Overmind.get();
        if (Overmind.getMindPackageManager().k(str) != null) {
            installPackageAsUser_System = overmind.installPackageAsUser_Exist(str, i2);
        } else {
            installPackageAsUser_System = overmind.installPackageAsUser_System(str, i2);
        }
        if (installPackageAsUser_System == null) {
            u0.e("安装失败： " + installPackageAsUser_System + " is Null");
            return false;
        }
        String[] strArr = new String[1];
        if (installPackageAsUser_System.f64296a) {
            str2 = "安装成功";
        } else {
            str2 = "安装失败： " + installPackageAsUser_System.f64298c;
        }
        strArr[0] = str2;
        u0.e(strArr);
        d0();
        return installPackageAsUser_System.f64296a;
    }

    @JvmOverloads
    public final boolean D(@Nullable String str) {
        return F(this, str, 0, 2, null);
    }

    @JvmOverloads
    public final boolean E(@Nullable String str, int i2) {
        if ((str == null || str.length() == 0) || !N()) {
            return false;
        }
        return Overmind.getMindPackageManager() == null ? C(str) : Overmind.getMindPackageManager().t(str, i2) || C(str);
    }

    public final boolean G(@Nullable String str, int i2) {
        if (N()) {
            if (str == null || str.length() == 0) {
                return false;
            }
            try {
                Overmind overmind = Overmind.get();
                Intrinsics.checkNotNullExpressionValue(overmind, "Overmind.get()");
                List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = overmind.getRunningAppProcessesContainPlugin();
                Intrinsics.checkNotNullExpressionValue(runningAppProcesses, "runningAppProcesses");
                for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
                    if (Intrinsics.areEqual(runningAppProcessInfo.processName, str) && i2 == runningAppProcessInfo.uid) {
                        return true;
                    }
                }
            } catch (Exception e4) {
                e4.printStackTrace();
            }
            return false;
        }
        return false;
    }

    public final boolean I(@Nullable ApplicationInfo applicationInfo) {
        if (!N() || Overmind.getContext() == null || applicationInfo == null) {
            return false;
        }
        Context context = Overmind.getContext();
        Intrinsics.checkNotNullExpressionValue(context, "Overmind.getContext()");
        return Build.VERSION.SDK_INT >= 23 && context.getApplicationInfo().targetSdkVersion >= 23 && applicationInfo.targetSdkVersion < 23;
    }

    public final boolean J() {
        if (N()) {
            return Overmind.isPluginPkgInstalled();
        }
        return false;
    }

    public final boolean K() {
        Bundle bundle;
        if (N()) {
            try {
                Context context = Overmind.getContext();
                Intrinsics.checkNotNullExpressionValue(context, "Overmind.getContext()");
                ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(Overmind.getPluginPkg(), 128);
                Intrinsics.checkNotNullExpressionValue(applicationInfo, "pm.getApplicationInfo(Ov…ageManager.GET_META_DATA)");
                if (applicationInfo != null && (bundle = applicationInfo.metaData) != null) {
                    if (Intrinsics.areEqual(bundle.get("vmengine"), "overmind")) {
                        return true;
                    }
                }
            } catch (Exception unused) {
            }
            return false;
        }
        return false;
    }

    public final boolean M(@Nullable String str) {
        if (N()) {
            if (str == null || str.length() == 0) {
                return false;
            }
            MindPackageSettings k4 = Overmind.getMindPackageManager().k(str);
            if (k4 == null) {
                File d4 = com.xinzhu.overmind.a.d(str);
                return d4 != null && d4.exists();
            }
            return k4.k();
        }
        return false;
    }

    public final boolean N() {
        return Build.VERSION.SDK_INT >= 21;
    }

    public final boolean O(@Nullable Context context, @NotNull String path) {
        PackageManager packageManager;
        PackageInfo packageArchiveInfo;
        Intrinsics.checkNotNullParameter(path, "path");
        if (context == null || (packageManager = context.getPackageManager()) == null || (packageArchiveInfo = packageManager.getPackageArchiveInfo(path, 128)) == null) {
            return false;
        }
        return packageArchiveInfo.applicationInfo.metaData.getBoolean(com.join.mgps.mod.utils.d.f51081k);
    }

    public final void P(@Nullable String str) {
        if (N()) {
            if (str == null || str.length() == 0) {
                return;
            }
            Overmind.get().stopApk(str, f52351g);
        }
    }

    public final void Q() {
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x0016 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0017 A[Catch: Exception -> 0x0022, TRY_LEAVE, TryCatch #0 {Exception -> 0x0022, blocks: (B:24:0x0002, B:26:0x000a, B:33:0x0017), top: B:38:0x0002 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void R(@org.jetbrains.annotations.Nullable android.content.Intent r3) {
        /*
            r2 = this;
            if (r3 == 0) goto L26
            java.lang.String r0 = "exitGamePackage"
            java.lang.String r3 = r3.getStringExtra(r0)     // Catch: java.lang.Exception -> L22
            if (r3 == 0) goto L13
            int r0 = r3.length()     // Catch: java.lang.Exception -> L22
            if (r0 != 0) goto L11
            goto L13
        L11:
            r0 = 0
            goto L14
        L13:
            r0 = 1
        L14:
            if (r0 == 0) goto L17
            return
        L17:
            java.util.concurrent.ThreadPoolExecutor r0 = r2.f52360b     // Catch: java.lang.Exception -> L22
            com.join.mgps.va.overmind.e$b r1 = new com.join.mgps.va.overmind.e$b     // Catch: java.lang.Exception -> L22
            r1.<init>(r3)     // Catch: java.lang.Exception -> L22
            r0.execute(r1)     // Catch: java.lang.Exception -> L22
            goto L26
        L22:
            r3 = move-exception
            r3.printStackTrace()
        L26:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.va.overmind.e.R(android.content.Intent):void");
    }

    public final void S(@NotNull Context context, int i2, @Nullable String str) {
        Intrinsics.checkNotNullParameter(context, "context");
        if (N()) {
            if (str == null || str.length() == 0) {
                return;
            }
            try {
                PluginConfig.setLastLaunchPkg(context, str);
                Overmind.get().launchApk(str, i2);
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:111:0x01c3 A[Catch: Exception -> 0x01cd, TryCatch #0 {Exception -> 0x01cd, blocks: (B:67:0x0016, B:69:0x003e, B:71:0x0048, B:74:0x0050, B:76:0x00b3, B:78:0x00bb, B:80:0x00cc, B:82:0x00d6, B:85:0x00dd, B:87:0x00eb, B:89:0x00f1, B:91:0x0101, B:93:0x010c, B:95:0x0111, B:97:0x011e, B:99:0x012d, B:103:0x0170, B:105:0x017f, B:107:0x01ba, B:111:0x01c3, B:112:0x01c8, B:104:0x0178), top: B:118:0x0016 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void T(@org.jetbrains.annotations.NotNull android.content.Context r16, @org.jetbrains.annotations.Nullable com.join.mgps.mod.bean.ModMeta r17, int r18, @org.jetbrains.annotations.Nullable java.lang.String r19) {
        /*
            Method dump skipped, instructions count: 466
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.va.overmind.e.T(android.content.Context, com.join.mgps.mod.bean.ModMeta, int, java.lang.String):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:129:0x01d9 A[Catch: Exception -> 0x0021, TRY_ENTER, TryCatch #0 {Exception -> 0x0021, blocks: (B:78:0x001c, B:82:0x0025, B:84:0x0049, B:86:0x004f, B:92:0x005b, B:95:0x0063, B:97:0x00c9, B:99:0x00d3, B:101:0x00e4, B:103:0x00ee, B:106:0x00f5, B:108:0x0105, B:110:0x010b, B:112:0x011b, B:114:0x0125, B:116:0x012a, B:118:0x0138, B:120:0x0147, B:124:0x018c, B:126:0x019b, B:129:0x01d9, B:133:0x01f4, B:130:0x01e7, B:132:0x01ed, B:125:0x0194), top: B:138:0x001c }] */
    /* JADX WARN: Removed duplicated region for block: B:130:0x01e7 A[Catch: Exception -> 0x0021, TryCatch #0 {Exception -> 0x0021, blocks: (B:78:0x001c, B:82:0x0025, B:84:0x0049, B:86:0x004f, B:92:0x005b, B:95:0x0063, B:97:0x00c9, B:99:0x00d3, B:101:0x00e4, B:103:0x00ee, B:106:0x00f5, B:108:0x0105, B:110:0x010b, B:112:0x011b, B:114:0x0125, B:116:0x012a, B:118:0x0138, B:120:0x0147, B:124:0x018c, B:126:0x019b, B:129:0x01d9, B:133:0x01f4, B:130:0x01e7, B:132:0x01ed, B:125:0x0194), top: B:138:0x001c }] */
    /* JADX WARN: Removed duplicated region for block: B:97:0x00c9 A[Catch: Exception -> 0x0021, TryCatch #0 {Exception -> 0x0021, blocks: (B:78:0x001c, B:82:0x0025, B:84:0x0049, B:86:0x004f, B:92:0x005b, B:95:0x0063, B:97:0x00c9, B:99:0x00d3, B:101:0x00e4, B:103:0x00ee, B:106:0x00f5, B:108:0x0105, B:110:0x010b, B:112:0x011b, B:114:0x0125, B:116:0x012a, B:118:0x0138, B:120:0x0147, B:124:0x018c, B:126:0x019b, B:129:0x01d9, B:133:0x01f4, B:130:0x01e7, B:132:0x01ed, B:125:0x0194), top: B:138:0x001c }] */
    /* JADX WARN: Removed duplicated region for block: B:99:0x00d3 A[Catch: Exception -> 0x0021, TryCatch #0 {Exception -> 0x0021, blocks: (B:78:0x001c, B:82:0x0025, B:84:0x0049, B:86:0x004f, B:92:0x005b, B:95:0x0063, B:97:0x00c9, B:99:0x00d3, B:101:0x00e4, B:103:0x00ee, B:106:0x00f5, B:108:0x0105, B:110:0x010b, B:112:0x011b, B:114:0x0125, B:116:0x012a, B:118:0x0138, B:120:0x0147, B:124:0x018c, B:126:0x019b, B:129:0x01d9, B:133:0x01f4, B:130:0x01e7, B:132:0x01ed, B:125:0x0194), top: B:138:0x001c }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void U(@org.jetbrains.annotations.NotNull android.content.Context r22, @org.jetbrains.annotations.Nullable com.join.mgps.mod.bean.ModMeta r23, @org.jetbrains.annotations.NotNull com.github.snowdream.android.app.downloader.DownloadTask r24) {
        /*
            Method dump skipped, instructions count: 509
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.va.overmind.e.U(android.content.Context, com.join.mgps.mod.bean.ModMeta, com.github.snowdream.android.app.downloader.DownloadTask):void");
    }

    public final void V(@NotNull Context context, @NotNull String packageName) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        if (N()) {
            u0.e("launchApp " + f52351g + ' ' + packageName);
            S(context, f52351g, packageName);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:146:0x0166 A[Catch: Exception -> 0x0281, TRY_LEAVE, TryCatch #3 {Exception -> 0x0281, blocks: (B:132:0x011e, B:134:0x012e, B:136:0x0134, B:146:0x0166, B:150:0x017b, B:154:0x018b, B:158:0x01b3, B:162:0x01c2, B:164:0x01d0, B:141:0x015a, B:138:0x0149), top: B:187:0x011e, inners: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:153:0x0189  */
    /* JADX WARN: Removed duplicated region for block: B:156:0x01b1 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:158:0x01b3 A[Catch: Exception -> 0x0281, TryCatch #3 {Exception -> 0x0281, blocks: (B:132:0x011e, B:134:0x012e, B:136:0x0134, B:146:0x0166, B:150:0x017b, B:154:0x018b, B:158:0x01b3, B:162:0x01c2, B:164:0x01d0, B:141:0x015a, B:138:0x0149), top: B:187:0x011e, inners: #0 }] */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object Y(@org.jetbrains.annotations.NotNull java.lang.String r20, @org.jetbrains.annotations.Nullable java.lang.String r21, @org.jetbrains.annotations.Nullable android.app.Application r22) {
        /*
            Method dump skipped, instructions count: 651
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.va.overmind.e.Y(java.lang.String, java.lang.String, android.app.Application):java.lang.Object");
    }

    public final void a0(int i2) {
        if (N()) {
            Overmind core = Overmind.get();
            MindUserInfo mindUserInfo = null;
            Intrinsics.checkNotNullExpressionValue(core, "core");
            for (MindUserInfo mindUserInfo2 : core.getUsers()) {
                if (mindUserInfo2.f64670a == i2) {
                    mindUserInfo = mindUserInfo2;
                }
            }
            if (mindUserInfo == null && core.createUser(i2) == null) {
                throw new IllegalStateException();
            }
        }
    }

    public final void b0() {
        try {
            if (N() && com.xinzhu.datatransfer.b.a().exists()) {
                boolean isPkgInstalledOutside = Overmind.isPkgInstalledOutside(Overmind.getPluginPkg());
                if (!J() && !isPkgInstalledOutside) {
                    Overmind.get().doTransferInstalls();
                } else if (!K()) {
                    Overmind.get().doTransferInstallsOnlyForMainPackage();
                } else {
                    File appDir = com.xinzhu.overmind.a.h();
                    File appDirExt = com.xinzhu.overmind.a.i();
                    Intrinsics.checkNotNullExpressionValue(appDirExt, "appDirExt");
                    String absolutePath = appDirExt.getAbsolutePath();
                    Intrinsics.checkNotNullExpressionValue(appDir, "appDir");
                    com.xinzhu.overmind.plugin.b.e(absolutePath, appDir.getAbsolutePath());
                    Overmind.get().doTransferInstalls();
                }
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public final void c0(@NotNull String targetPkg) {
        Intrinsics.checkNotNullParameter(targetPkg, "targetPkg");
        try {
            if (N() && com.xinzhu.datatransfer.b.a().exists()) {
                if (!J()) {
                    Overmind.get().doTransferInstalls();
                } else if (!K()) {
                    Overmind.get().doTransferInstallsOnlyForMainPackage();
                } else {
                    File appDir = com.xinzhu.overmind.a.d(targetPkg);
                    File appDirExt = com.xinzhu.overmind.a.i();
                    Intrinsics.checkNotNullExpressionValue(appDirExt, "appDirExt");
                    String absolutePath = appDirExt.getAbsolutePath();
                    Intrinsics.checkNotNullExpressionValue(appDir, "appDir");
                    com.xinzhu.overmind.plugin.b.e(absolutePath, appDir.getAbsolutePath());
                    Overmind.get().doTransferInstalls();
                }
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public final void g() {
    }

    @JvmOverloads
    public final void g0(@NotNull String str, @NotNull String str2) {
        i0(this, str, str2, 0, 4, null);
    }

    public final boolean h(@Nullable String str, int i2) {
        boolean z3 = false;
        if (!(str == null || str.length() == 0) && N()) {
            Overmind core = Overmind.get();
            MindPackageSettings k4 = Overmind.getMindPackageManager().k(str);
            if (k4 != null) {
                for (Integer num : k4.f()) {
                    if (num != null && num.intValue() == i2) {
                        z3 = true;
                    }
                }
                if (!z3) {
                    MindUserInfo mindUserInfo = null;
                    Intrinsics.checkNotNullExpressionValue(core, "core");
                    for (MindUserInfo mindUserInfo2 : core.getUsers()) {
                        if (mindUserInfo2.f64670a == i2) {
                            mindUserInfo = mindUserInfo2;
                        }
                    }
                    if (mindUserInfo == null && core.createUser(i2) == null) {
                        throw new IllegalStateException();
                    }
                    if (core.installPackageAsUser_Exist(str, i2).f64296a) {
                        return true;
                    }
                }
                return z3;
            }
        }
        return false;
    }

    @JvmOverloads
    public final void h0(@NotNull String packageName, @NotNull String abi, int i2) {
        MindPackageSettings k4;
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        Intrinsics.checkNotNullParameter(abi, "abi");
        if (N() && (k4 = Overmind.getMindPackageManager().k(packageName)) != null) {
            k4.k();
            boolean z3 = c.f52341a.f(abi) != Overmind.is64Bit();
            if (z3 != k4.k()) {
                Overmind.getMindPackageManager().C(packageName, z3);
            }
        }
    }

    @RequiresApi(api = 23)
    public final boolean i(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        if (N() && Overmind.isPluginPkgInstalled() && !com.xinzhu.overmind.plugin.b.i()) {
            Intent a4 = com.overmind.virtual.oem.a.a(context);
            if (a4 != null) {
                try {
                    context.startActivity(a4);
                    return true;
                } catch (Throwable th) {
                    th.printStackTrace();
                    return true;
                }
            }
            return true;
        }
        return false;
    }

    public final long j(@Nullable String str) {
        long j4;
        long j5 = 0;
        if (str == null || str.length() == 0) {
            return 0L;
        }
        MindShareFileInfo b4 = com.xinzhu.overmind.plugin.b.b(str);
        if (b4 != null) {
            if (!b4.f64498c.booleanValue()) {
                return b4.f64499d;
            }
            try {
                for (MindShareFileInfo mindShareFileInfo : com.xinzhu.overmind.plugin.b.m(str)) {
                    Boolean bool = mindShareFileInfo.f64497b;
                    Intrinsics.checkNotNullExpressionValue(bool, "file.exists");
                    if (bool.booleanValue()) {
                        Boolean bool2 = mindShareFileInfo.f64498c;
                        Intrinsics.checkNotNullExpressionValue(bool2, "file.isDirectory");
                        if (bool2.booleanValue()) {
                            j4 = j(mindShareFileInfo.f64496a);
                            j5 += j4;
                        }
                    }
                    MindShareFileInfo b5 = com.xinzhu.overmind.plugin.b.b(mindShareFileInfo.f64496a);
                    if (b5 != null) {
                        j4 = b5.f64499d;
                        j5 += j4;
                    }
                }
            } catch (Exception unused) {
            }
        }
        return j5;
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x0017 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0018 A[Catch: Exception -> 0x0012, TryCatch #0 {Exception -> 0x0012, blocks: (B:35:0x0009, B:44:0x0018, B:46:0x0022, B:47:0x002a, B:49:0x0030, B:50:0x0043), top: B:54:0x0009 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void j0(@org.jetbrains.annotations.Nullable java.lang.String r4) {
        /*
            r3 = this;
            boolean r0 = r3.N()
            if (r0 != 0) goto L7
            return
        L7:
            if (r4 == 0) goto L14
            int r0 = r4.length()     // Catch: java.lang.Exception -> L12
            if (r0 != 0) goto L10
            goto L14
        L10:
            r0 = 0
            goto L15
        L12:
            r4 = move-exception
            goto L55
        L14:
            r0 = 1
        L15:
            if (r0 == 0) goto L18
            return
        L18:
            com.xinzhu.overmind.client.frameworks.f r0 = com.xinzhu.overmind.Overmind.getMindPackageManager()     // Catch: java.lang.Exception -> L12
            com.xinzhu.overmind.server.pm.MindPackageSettings r0 = r0.k(r4)     // Catch: java.lang.Exception -> L12
            if (r0 == 0) goto L43
            java.util.List r0 = r0.f()     // Catch: java.lang.Exception -> L12
            java.util.Iterator r0 = r0.iterator()     // Catch: java.lang.Exception -> L12
        L2a:
            boolean r1 = r0.hasNext()     // Catch: java.lang.Exception -> L12
            if (r1 == 0) goto L43
            java.lang.Object r1 = r0.next()     // Catch: java.lang.Exception -> L12
            java.lang.Integer r1 = (java.lang.Integer) r1     // Catch: java.lang.Exception -> L12
            java.lang.String r2 = "userId"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r1, r2)     // Catch: java.lang.Exception -> L12
            int r1 = r1.intValue()     // Catch: java.lang.Exception -> L12
            r3.m(r4, r1)     // Catch: java.lang.Exception -> L12
            goto L2a
        L43:
            n1.g r0 = n1.g.t()     // Catch: java.lang.Exception -> L12
            r0.n(r4)     // Catch: java.lang.Exception -> L12
            com.xinzhu.overmind.Overmind r0 = com.xinzhu.overmind.Overmind.get()     // Catch: java.lang.Exception -> L12
            r0.uninstallPackage(r4)     // Catch: java.lang.Exception -> L12
            r3.d0()     // Catch: java.lang.Exception -> L12
            goto L58
        L55:
            r4.printStackTrace()
        L58:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.va.overmind.e.j0(java.lang.String):void");
    }

    public final boolean k(@Nullable String[] strArr, boolean z3) {
        if (strArr == null) {
            return true;
        }
        for (String str : strArr) {
            if (!l(str, z3)) {
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x0019 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x001a A[Catch: Exception -> 0x0014, TRY_LEAVE, TryCatch #0 {Exception -> 0x0014, blocks: (B:29:0x000b, B:38:0x001a), top: B:42:0x000b }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean k0(@org.jetbrains.annotations.Nullable java.lang.String r4, int r5) {
        /*
            r3 = this;
            boolean r0 = r3.N()
            r1 = 0
            if (r0 != 0) goto L8
            return r1
        L8:
            r0 = 1
            if (r4 == 0) goto L16
            int r2 = r4.length()     // Catch: java.lang.Exception -> L14
            if (r2 != 0) goto L12
            goto L16
        L12:
            r2 = 0
            goto L17
        L14:
            r4 = move-exception
            goto L28
        L16:
            r2 = 1
        L17:
            if (r2 == 0) goto L1a
            return r1
        L1a:
            com.xinzhu.overmind.Overmind r2 = com.xinzhu.overmind.Overmind.get()     // Catch: java.lang.Exception -> L14
            r2.uninstallPackageAsUser(r4, r5)     // Catch: java.lang.Exception -> L14
            r3.d0()     // Catch: java.lang.Exception -> L14
            r3.m(r4, r5)     // Catch: java.lang.Exception -> L14
            return r0
        L28:
            r4.printStackTrace()
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.va.overmind.e.k0(java.lang.String, int):boolean");
    }

    public final boolean l(@Nullable String str, boolean z3) {
        if (N() && Overmind.getContext() != null) {
            if (str == null || str.length() == 0) {
                return false;
            }
            Context context = Overmind.getContext();
            Intrinsics.checkNotNullExpressionValue(context, "Overmind.getContext()");
            PackageManager packageManager = context.getPackageManager();
            if (z3) {
                if (packageManager.checkPermission(str, "com.join.android.app.mgsim.wufun.addon") != 0) {
                    return false;
                }
            } else if (packageManager.checkPermission(str, "com.join.android.app.mgsim.wufun") != 0) {
                return false;
            }
            return true;
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:65:?, code lost:
        return;
     */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0019  */
    /* JADX WARN: Removed duplicated region for block: B:64:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void l0(@org.jetbrains.annotations.Nullable java.lang.String r9, @org.jetbrains.annotations.Nullable java.lang.String r10) {
        /*
            r8 = this;
            boolean r0 = r8.N()
            if (r0 != 0) goto L7
            return
        L7:
            r0 = 1
            r1 = 0
            if (r9 == 0) goto L16
            int r2 = r9.length()     // Catch: java.lang.Exception -> L14
            if (r2 != 0) goto L12
            goto L16
        L12:
            r2 = 0
            goto L17
        L14:
            r9 = move-exception
            goto L48
        L16:
            r2 = 1
        L17:
            if (r2 != 0) goto L4b
            if (r10 == 0) goto L23
            int r2 = r10.length()     // Catch: java.lang.Exception -> L14
            if (r2 != 0) goto L22
            goto L23
        L22:
            r0 = 0
        L23:
            if (r0 == 0) goto L26
            goto L4b
        L26:
            com.join.mgps.va.overmind.e$a r0 = com.join.mgps.va.overmind.e.f52358n     // Catch: java.lang.Exception -> L14
            com.join.mgps.va.overmind.e r0 = r0.b()     // Catch: java.lang.Exception -> L14
            boolean r0 = r0.M(r9)     // Catch: java.lang.Exception -> L14
            com.join.mgps.va.overmind.f r2 = com.join.mgps.va.overmind.f.f52369d     // Catch: java.lang.Exception -> L14
            r3 = 2
            r4 = 0
            java.lang.String r1 = com.join.mgps.va.overmind.f.H(r2, r9, r1, r3, r4)     // Catch: java.lang.Exception -> L14
            com.join.mgps.mod.utils.PluginConfig.setModGameId(r1, r10)     // Catch: java.lang.Exception -> L14
            if (r0 == 0) goto L4b
            com.join.mgps.va.overmind.h$a r2 = com.join.mgps.va.overmind.h.f52370a     // Catch: java.lang.Exception -> L14
            r5 = 0
            r6 = 4
            r7 = 0
            r3 = r9
            r4 = r10
            com.join.mgps.va.overmind.h.a.e(r2, r3, r4, r5, r6, r7)     // Catch: java.lang.Exception -> L14
            goto L4b
        L48:
            r9.printStackTrace()
        L4b:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.va.overmind.e.l0(java.lang.String, java.lang.String):void");
    }

    public final void m0(@Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable String str5, @Nullable String str6) {
        if (N()) {
            try {
                boolean M = f52358n.b().M(str);
                if (!M) {
                    PluginConfig.setModConfig(new File(f.H(f.f52369d, str, 0, 2, null)).getAbsolutePath(), str2, str3, str4, str5, str6);
                    return;
                }
                u0.e("syncWriteModSwitch", "start");
                Bundle bundle = new Bundle();
                bundle.putString("action", "writeModSwitch");
                bundle.putInt("userId", com.xinzhu.overmind.client.e.getUserId());
                bundle.putString("packageName", str);
                bundle.putString("goldSwitch", str2);
                bundle.putString("archiveSwitch", str3);
                bundle.putString("channelNum", str5);
                bundle.putString("targetVersion", str6);
                if (M) {
                    h.f52370a.c(bundle);
                }
                u0.e("syncWriteModSwitch", "end");
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:123:0x00fb A[Catch: Exception -> 0x01e6, all -> 0x0201, TryCatch #0 {all -> 0x0201, blocks: (B:101:0x009f, B:103:0x00b2, B:104:0x00b5, B:106:0x00c0, B:110:0x00d4, B:112:0x00da, B:118:0x00e6, B:120:0x00ec, B:121:0x00ef, B:123:0x00fb, B:127:0x0107, B:129:0x0116, B:132:0x011d, B:135:0x0123, B:139:0x0180, B:142:0x0199, B:144:0x019d, B:146:0x01b9, B:145:0x01ad, B:126:0x0103, B:109:0x00d0, B:154:0x01ef), top: B:161:0x001b }] */
    /* JADX WARN: Removed duplicated region for block: B:144:0x019d A[Catch: Exception -> 0x01e6, all -> 0x0201, TryCatch #0 {all -> 0x0201, blocks: (B:101:0x009f, B:103:0x00b2, B:104:0x00b5, B:106:0x00c0, B:110:0x00d4, B:112:0x00da, B:118:0x00e6, B:120:0x00ec, B:121:0x00ef, B:123:0x00fb, B:127:0x0107, B:129:0x0116, B:132:0x011d, B:135:0x0123, B:139:0x0180, B:142:0x0199, B:144:0x019d, B:146:0x01b9, B:145:0x01ad, B:126:0x0103, B:109:0x00d0, B:154:0x01ef), top: B:161:0x001b }] */
    /* JADX WARN: Removed duplicated region for block: B:145:0x01ad A[Catch: Exception -> 0x01e6, all -> 0x0201, TryCatch #0 {all -> 0x0201, blocks: (B:101:0x009f, B:103:0x00b2, B:104:0x00b5, B:106:0x00c0, B:110:0x00d4, B:112:0x00da, B:118:0x00e6, B:120:0x00ec, B:121:0x00ef, B:123:0x00fb, B:127:0x0107, B:129:0x0116, B:132:0x011d, B:135:0x0123, B:139:0x0180, B:142:0x0199, B:144:0x019d, B:146:0x01b9, B:145:0x01ad, B:126:0x0103, B:109:0x00d0, B:154:0x01ef), top: B:161:0x001b }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void o(@org.jetbrains.annotations.NotNull android.content.Context r19, @org.jetbrains.annotations.NotNull java.lang.String r20, @org.jetbrains.annotations.NotNull java.lang.String r21, @org.jetbrains.annotations.Nullable java.lang.String r22, int r23, boolean r24) {
        /*
            Method dump skipped, instructions count: 529
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.va.overmind.e.o(android.content.Context, java.lang.String, java.lang.String, java.lang.String, int, boolean):void");
    }

    @JvmOverloads
    @Nullable
    public final r1.a q(@NotNull String str) {
        return s(this, str, 0, 2, null);
    }

    @JvmOverloads
    @Nullable
    public final r1.a r(@NotNull String packageName, int i2) {
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        r1.a aVar = new r1.a();
        boolean z3 = true;
        if (!N()) {
            List<DownloadTask> D = g1.f.G().D(packageName);
            if (!(D == null || D.isEmpty())) {
                for (DownloadTask it2 : D) {
                    if (APKUtils.f17182b.v(it2)) {
                        Intrinsics.checkNotNullExpressionValue(it2, "it");
                        aVar.f74024e = it2.getShowName();
                        aVar.f74030k = it2.getVerCode();
                        aVar.f74031l = it2.getVer_name();
                        aVar.f74020a = it2.getPackageName();
                        return aVar;
                    }
                }
            }
        }
        for (PackageInfo packageInfo : Overmind.get().getInstalledPackages(0, i2)) {
            String str = packageInfo.packageName;
            if (!((str == null || str.length() == 0) | (!Intrinsics.areEqual(packageInfo.packageName, packageName)))) {
                aVar.f74031l = packageInfo.versionName;
                aVar.f74030k = packageInfo.versionCode;
                aVar.f74020a = packageInfo.packageName;
                try {
                    if (!Overmind.getMindPackageManager().k(packageInfo.packageName).k()) {
                        aVar.f74024e = packageInfo.applicationInfo.loadLabel(Overmind.getPackageManager()).toString();
                        aVar.f74023d = packageInfo.applicationInfo.loadIcon(Overmind.getPackageManager());
                    }
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
                return aVar;
            }
        }
        if (M(packageName) && J() && !K()) {
            r1.a aVar2 = new r1.a();
            List<DownloadTask> D2 = g1.f.G().D(packageName);
            if (D2 != null && !D2.isEmpty()) {
                z3 = false;
            }
            if (z3) {
                return null;
            }
            for (DownloadTask it3 : D2) {
                if (APKUtils.f17182b.v(it3)) {
                    Intrinsics.checkNotNullExpressionValue(it3, "it");
                    aVar2.f74024e = it3.getShowName();
                    aVar2.f74030k = it3.getVerCode();
                    aVar2.f74031l = it3.getVer_name();
                    aVar2.f74020a = it3.getPackageName();
                    return aVar2;
                }
            }
            return null;
        }
        return null;
    }

    @NotNull
    public final List<r1.a> t() {
        List<r1.a> emptyList;
        if (!N()) {
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            return emptyList;
        }
        List<ApplicationInfo> applicationList = Overmind.get().getInstalledApplications(0, f52351g);
        List<PackageInfo> packageList = Overmind.get().getInstalledPackages(0, f52351g);
        ArrayList arrayList = new ArrayList();
        if (Build.VERSION.SDK_INT >= 31) {
            Intrinsics.checkNotNullExpressionValue(applicationList, "applicationList");
            for (ApplicationInfo applicationInfo : applicationList) {
                r1.a aVar = new r1.a();
                aVar.f74031l = applicationInfo.compileSdkVersionCodename;
                aVar.f74030k = applicationInfo.compileSdkVersion;
                aVar.f74020a = applicationInfo.packageName;
                aVar.f74024e = applicationInfo.loadLabel(Overmind.getPackageManager()).toString();
                aVar.f74023d = applicationInfo.loadIcon(Overmind.getPackageManager());
                arrayList.add(aVar);
            }
        } else {
            Intrinsics.checkNotNullExpressionValue(packageList, "packageList");
            for (PackageInfo packageInfo : packageList) {
                r1.a aVar2 = new r1.a();
                aVar2.f74031l = packageInfo.versionName;
                aVar2.f74030k = packageInfo.versionCode;
                aVar2.f74020a = packageInfo.packageName;
                aVar2.f74024e = packageInfo.applicationInfo.loadLabel(Overmind.getPackageManager()).toString();
                aVar2.f74023d = packageInfo.applicationInfo.loadIcon(Overmind.getPackageManager());
                arrayList.add(aVar2);
            }
        }
        return arrayList;
    }

    public final int u(@Nullable String str, int i2) {
        Intent j4;
        ComponentName component;
        if (!(str == null || str.length() == 0) && (j4 = Overmind.getMindPackageManager().j(str, i2)) != null && (component = j4.getComponent()) != null) {
            ActivityInfo e4 = Overmind.getMindPackageManager().e(component, j4.getFlags(), i2);
            if (e4 != null) {
                return e4.screenOrientation;
            }
        }
        return 6;
    }

    public final void y(@NotNull String packageName, @NotNull String archivePath, @Nullable String str, @NotNull String archiveId) {
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        Intrinsics.checkNotNullParameter(archivePath, "archivePath");
        Intrinsics.checkNotNullParameter(archiveId, "archiveId");
        String r3 = f.r(f.f52369d, packageName, 0, 2, null);
        StringBuilder sb = new StringBuilder();
        sb.append(packageName);
        sb.append(" \n ");
        sb.append(archivePath);
        sb.append("\n ");
        sb.append(archiveId);
        sb.append('\n');
        sb.append(r3);
        sb.append("  ");
        PluginConfig.setArchivePath(r3, archivePath, str, archiveId);
    }

    @Nullable
    public final InstallResult z(@NotNull String source) {
        boolean startsWith$default;
        InstallResult installPackageAsUser_System;
        String str;
        Intrinsics.checkNotNullParameter(source, "source");
        if (N()) {
            startsWith$default = StringsKt__StringsJVMKt.startsWith$default(source, net.lingala.zip4j.util.e.F0, false, 2, null);
            if (startsWith$default) {
                source = "file://" + source;
            }
            Overmind overmind = Overmind.get();
            if (URLUtil.isValidUrl(source)) {
                installPackageAsUser_System = overmind.installPackageAsUser_Storage(Uri.parse(source), f52351g);
            } else {
                installPackageAsUser_System = overmind.installPackageAsUser_System(source, f52351g);
            }
            if (installPackageAsUser_System != null) {
                String[] strArr = new String[1];
                if (installPackageAsUser_System.f64296a) {
                    str = "安装成功";
                } else {
                    str = "安装失败： " + installPackageAsUser_System.f64298c;
                }
                strArr[0] = str;
                u0.e(strArr);
            }
            d0();
            return installPackageAsUser_System;
        }
        return null;
    }
}
