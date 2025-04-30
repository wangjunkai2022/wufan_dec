package com.join.mgps.va.overmind;

import android.content.pm.ApplicationInfo;
import android.os.Bundle;
import com.join.mgps.Util.t;
import com.join.mgps.Util.u0;
import com.join.mgps.mod.utils.PluginConfig;
import com.xinzhu.overmind.Overmind;
import com.xinzhu.overmind.custom.CustomCallback;
import com.xinzhu.overmind.server.pm.MindPackageSettings;
import java.io.File;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CustomCallbackImpl.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\t\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0016\u0010\u0017J8\u0010\b\u001a\"\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0006j\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0002\u0018\u0001`\u00072\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u001a\u0010\n\u001a\u00020\t2\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u0018\u0010\u000e\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\fH\u0016R\"\u0010\u0015\u001a\u00020\u000f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0010\u0010\u0012\"\u0004\b\u0013\u0010\u0014¨\u0006\u0018"}, d2 = {"Lcom/join/mgps/va/overmind/b;", "Lcom/xinzhu/overmind/custom/CustomCallback;", "", "pkgName", "", "userId", "Ljava/util/LinkedHashMap;", "Lkotlin/collections/LinkedHashMap;", "customIORedirect", "", "customLoadLibgggg", "name", "", "addr", "customOnSoLoaded", "", "a", "Z", "()Z", "b", "(Z)V", "libLoaded", "<init>", "()V", "app_wufunNormalRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes.dex */
public final class b extends CustomCallback {

    /* renamed from: a  reason: collision with root package name */
    private boolean f52340a;

    public final boolean a() {
        return this.f52340a;
    }

    public final void b(boolean z3) {
        this.f52340a = z3;
    }

    @Override // com.xinzhu.overmind.custom.CustomCallback
    @Nullable
    public LinkedHashMap<String, String> customIORedirect(@NotNull String pkgName, int i2) {
        String d4;
        String M;
        String W;
        String b02;
        List<String> emptyList;
        List sorted;
        boolean endsWith$default;
        Iterator it2;
        boolean startsWith$default;
        boolean startsWith$default2;
        boolean startsWith$default3;
        Intrinsics.checkNotNullParameter(pkgName, "pkgName");
        LinkedHashMap<String, String> linkedHashMap = new LinkedHashMap<>();
        MindPackageSettings k4 = Overmind.getMindPackageManager().k(pkgName);
        if (k4.k()) {
            if (i2 == 0) {
                d4 = f.f52369d.f(pkgName);
            } else {
                d4 = f.f52369d.g(pkgName, i2);
            }
            f fVar = f.f52369d;
            M = fVar.O(pkgName);
            W = fVar.X();
            b02 = fVar.c0();
        } else {
            if (i2 == 0) {
                d4 = f.f52369d.c(pkgName);
            } else {
                d4 = f.f52369d.d(pkgName, i2);
            }
            f fVar2 = f.f52369d;
            M = fVar2.M(pkgName);
            W = fVar2.W();
            b02 = fVar2.b0();
        }
        Object obj = null;
        int i4 = 2;
        boolean z3 = false;
        t.c archiveSection = PluginConfig.getArchiveSection(k4.k() ? f.u(f.f52369d, pkgName, 0, 2, null) : f.r(f.f52369d, pkgName, 0, 2, null));
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        if (archiveSection != null) {
            archiveSection.c("archiveId");
            emptyList = CollectionsKt__CollectionsKt.listOf((Object[]) new String[]{archiveSection.c("archivePath"), archiveSection.c("archivePath2")});
        }
        ApplicationInfo f4 = Overmind.getMindPackageManager().f(pkgName, 128, com.xinzhu.overmind.client.e.getUserId());
        if (f4 != null) {
            linkedHashMap.put("data/data/" + pkgName, f4.dataDir);
        }
        sorted = CollectionsKt___CollectionsKt.sorted(f.f52369d.L());
        Iterator it3 = sorted.iterator();
        while (it3.hasNext()) {
            String str = (String) it3.next();
            endsWith$default = StringsKt__StringsJVMKt.endsWith$default(str, net.lingala.zip4j.util.e.F0, z3, i4, obj);
            if (!endsWith$default) {
                str = str + net.lingala.zip4j.util.e.F0;
            }
            linkedHashMap.put(str + "Android/obb/" + pkgName, M);
            linkedHashMap.put(str + "Android/data/" + pkgName, d4);
            StringBuilder sb = new StringBuilder();
            sb.append(str);
            sb.append("save_data/");
            linkedHashMap.put(sb.toString(), W + '/');
            if (i2 != 0) {
                for (String str2 : emptyList) {
                    if (str2 == null || str2.length() == 0) {
                        it2 = it3;
                    } else {
                        it2 = it3;
                        startsWith$default = StringsKt__StringsJVMKt.startsWith$default(str2, "/data/data", z3, i4, null);
                        if (!startsWith$default) {
                            startsWith$default2 = StringsKt__StringsJVMKt.startsWith$default(str2, "/Android/data", z3, i4, null);
                            if (!startsWith$default2) {
                                startsWith$default3 = StringsKt__StringsJVMKt.startsWith$default(str2, net.lingala.zip4j.util.e.F0, z3, i4, null);
                                if (startsWith$default3) {
                                    str2 = StringsKt__StringsJVMKt.replaceFirst$default(str2, net.lingala.zip4j.util.e.F0, "", false, 4, (Object) null);
                                }
                                String str3 = b02 + "/user/" + i2 + '/' + pkgName + '/' + str2;
                                if (new File(str3).exists()) {
                                    linkedHashMap.put(str + str2 + '/', str3);
                                    u0.e("archiveRedirect: " + str + str2 + "/ => " + str3);
                                    it3 = it2;
                                    i4 = 2;
                                    z3 = false;
                                }
                            }
                        }
                    }
                    it3 = it2;
                    i4 = 2;
                    z3 = false;
                }
            }
            it3 = it3;
            obj = null;
            i4 = 2;
            z3 = false;
        }
        return linkedHashMap;
    }

    @Override // com.xinzhu.overmind.custom.CustomCallback
    public void customLoadLibgggg(@Nullable String str, int i2) {
        String str2;
        u0.e("customLoadLibgggg " + str + ' ' + i2);
        if (str == null || str.length() == 0) {
            return;
        }
        String str3 = f.f52369d.w(str, 0) + "/app_pluginLib";
        Bundle bundle = new Bundle();
        bundle.putString("packageName", str);
        bundle.putInt("userId", i2);
        Bundle bundle2 = null;
        try {
            bundle2 = i.a(d.f52344d, "isUseNativeLib", null, bundle);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        if (bundle2 != null ? bundle2.getBoolean("isUseNativeLib", false) : false) {
            if (Overmind.is64Bit()) {
                str2 = f.l(f.f52369d, str, 0, false, 4, null) + "/arm64";
            } else {
                str2 = f.l(f.f52369d, str, 0, false, 4, null) + "/arm";
            }
            str3 = str2;
        }
        if (new File(str3).exists()) {
            PaCtrl.f52331a.mountLibGggg(str3);
            this.f52340a = true;
        }
    }

    @Override // com.xinzhu.overmind.custom.CustomCallback
    public void customOnSoLoaded(@NotNull String name, long j4) {
        Intrinsics.checkNotNullParameter(name, "name");
        u0.e("customOnSoLoaded " + name + ' ' + j4);
        if (this.f52340a) {
            PaCtrl.f52331a.onSoLoaded(name, j4);
        }
    }
}
