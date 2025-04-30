package com.join.mgps.va.overmind;

import android.annotation.TargetApi;
import com.umeng.analytics.pro.ai;
import java.io.File;
import java.util.Enumeration;
import java.util.HashSet;
import java.util.Set;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import kotlin.Metadata;
import kotlin.collections.SetsKt__SetsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: NativeLibraryHelperCompat.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\u0018\u0000 \u00042\u00020\u0001:\u0001\u0004B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, d2 = {"Lcom/join/mgps/va/overmind/c;", "", "<init>", "()V", "a", "app_wufunNormalRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes.dex */
public final class c {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final a f52341a = new a(null);

    /* compiled from: NativeLibraryHelperCompat.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000$\n\u0000\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\"\n\u0002\b\u0006\n\u0002\u0010\u0011\n\u0002\b\u0007\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0013\u0010\u0014J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0007J\u0010\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0007J\u0016\u0010\t\u001a\u00020\u00042\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00020\u0007H\u0007J\u0016\u0010\u000b\u001a\u00020\u00042\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00020\u0007H\u0007J\u0018\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00020\u00072\b\u0010\f\u001a\u0004\u0018\u00010\u0002H\u0007J1\u0010\u0011\u001a\u0004\u0018\u00010\u00022\u000e\u0010\u000f\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u000e2\u000e\u0010\u0010\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0007H\u0007¢\u0006\u0004\b\u0011\u0010\u0012¨\u0006\u0015"}, d2 = {"com/join/mgps/va/overmind/c$a", "", "", "abi", "", "f", "e", "", "supportedAbis", "b", "abiList", "a", "apk", com.xinzhu.overmind.utils.helpers.d.f64708a, "", "supportAbis", "abis", ai.aD, "([Ljava/lang/String;Ljava/util/Set;)Ljava/lang/String;", "<init>", "()V", "app_wufunNormalRelease"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes.dex */
    public static final class a {
        private a() {
        }

        @JvmStatic
        public final boolean a(@NotNull Set<String> abiList) {
            Intrinsics.checkNotNullParameter(abiList, "abiList");
            for (String str : abiList) {
                if (e(str)) {
                    return true;
                }
            }
            return false;
        }

        @JvmStatic
        @TargetApi(21)
        public final boolean b(@NotNull Set<String> supportedAbis) {
            Intrinsics.checkNotNullParameter(supportedAbis, "supportedAbis");
            for (String str : supportedAbis) {
                if (f(str)) {
                    return true;
                }
            }
            return false;
        }

        @JvmStatic
        @Nullable
        public final String c(@NotNull String[] supportAbis, @NotNull Set<String> abis) {
            Intrinsics.checkNotNullParameter(supportAbis, "supportAbis");
            Intrinsics.checkNotNullParameter(abis, "abis");
            for (String str : supportAbis) {
                if (abis.contains(str)) {
                    return str;
                }
            }
            return null;
        }

        @JvmStatic
        @NotNull
        public final Set<String> d(@Nullable String str) {
            Set<String> emptySet;
            boolean contains$default;
            boolean startsWith$default;
            boolean endsWith$default;
            int indexOf$default;
            int lastIndexOf$default;
            try {
                if (new File(str).exists()) {
                    Enumeration<? extends ZipEntry> entries = new ZipFile(str).entries();
                    HashSet hashSet = new HashSet();
                    while (entries.hasMoreElements()) {
                        ZipEntry entry = entries.nextElement();
                        Intrinsics.checkNotNullExpressionValue(entry, "entry");
                        String name = entry.getName();
                        Intrinsics.checkNotNullExpressionValue(name, "name");
                        contains$default = StringsKt__StringsKt.contains$default((CharSequence) name, (CharSequence) "../", false, 2, (Object) null);
                        if (!contains$default) {
                            startsWith$default = StringsKt__StringsJVMKt.startsWith$default(name, "lib/", false, 2, null);
                            if (startsWith$default && !entry.isDirectory()) {
                                endsWith$default = StringsKt__StringsJVMKt.endsWith$default(name, ".so", false, 2, null);
                                if (endsWith$default) {
                                    indexOf$default = StringsKt__StringsKt.indexOf$default((CharSequence) name, net.lingala.zip4j.util.e.F0, 0, false, 6, (Object) null);
                                    lastIndexOf$default = StringsKt__StringsKt.lastIndexOf$default((CharSequence) name, net.lingala.zip4j.util.e.F0, 0, false, 6, (Object) null);
                                    String substring = name.substring(indexOf$default + 1, lastIndexOf$default);
                                    Intrinsics.checkNotNullExpressionValue(substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                                    hashSet.add(substring);
                                }
                            }
                        }
                    }
                    return hashSet;
                }
            } catch (Exception e4) {
                e4.printStackTrace();
            }
            emptySet = SetsKt__SetsKt.emptySet();
            return emptySet;
        }

        @JvmStatic
        public final boolean e(@NotNull String abi) {
            Intrinsics.checkNotNullParameter(abi, "abi");
            return Intrinsics.areEqual(com.join.mgps.mod.utils.d.f51074d, abi) || Intrinsics.areEqual("armeabi-v7a", abi) || Intrinsics.areEqual(com.join.mgps.mod.utils.d.f51076f, abi) || Intrinsics.areEqual(com.join.mgps.mod.utils.d.f51075e, abi);
        }

        @JvmStatic
        @TargetApi(21)
        public final boolean f(@NotNull String abi) {
            Intrinsics.checkNotNullParameter(abi, "abi");
            return Intrinsics.areEqual("arm64-v8a", abi) || Intrinsics.areEqual("x86_64", abi) || Intrinsics.areEqual("mips64", abi);
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    @JvmStatic
    public static final boolean a(@NotNull Set<String> set) {
        return f52341a.a(set);
    }

    @JvmStatic
    @TargetApi(21)
    public static final boolean b(@NotNull Set<String> set) {
        return f52341a.b(set);
    }

    @JvmStatic
    @Nullable
    public static final String c(@NotNull String[] strArr, @NotNull Set<String> set) {
        return f52341a.c(strArr, set);
    }

    @JvmStatic
    @NotNull
    public static final Set<String> d(@Nullable String str) {
        return f52341a.d(str);
    }

    @JvmStatic
    public static final boolean e(@NotNull String str) {
        return f52341a.e(str);
    }

    @JvmStatic
    @TargetApi(21)
    public static final boolean f(@NotNull String str) {
        return f52341a.f(str);
    }
}
