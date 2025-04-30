package kotlinx.coroutines.internal;

import androidx.core.app.NotificationCompat;
import com.umeng.analytics.pro.ai;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.URL;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Objects;
import java.util.ServiceLoader;
import java.util.Set;
import java.util.jar.JarFile;
import java.util.zip.ZipEntry;
import kotlin.ExceptionsKt__ExceptionsKt;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt__MutableCollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;
/* compiled from: FastServiceLoader.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000b\bÀ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b#\u0010$J!\u0010\u0007\u001a\u0004\u0018\u00010\u00032\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0082\bJ*\u0010\r\u001a\b\u0012\u0004\u0012\u00028\u00000\f\"\u0004\b\u0000\u0010\b2\f\u0010\t\u001a\b\u0012\u0004\u0012\u00028\u00000\u00022\u0006\u0010\u000b\u001a\u00020\nH\u0002J3\u0010\u000f\u001a\u00028\u0000\"\u0004\b\u0000\u0010\b2\u0006\u0010\u000e\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\n2\f\u0010\t\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002H\u0002¢\u0006\u0004\b\u000f\u0010\u0010J\u0016\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00050\f2\u0006\u0010\u0012\u001a\u00020\u0011H\u0002J.\u0010\u0018\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0014*\u00020\u00152\u0012\u0010\u0017\u001a\u000e\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00028\u00000\u0016H\u0082\b¢\u0006\u0004\b\u0018\u0010\u0019J\u0016\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00050\f2\u0006\u0010\u001b\u001a\u00020\u001aH\u0002J\u0015\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u00030\fH\u0000¢\u0006\u0004\b\u001d\u0010\u001eJ1\u0010\u001f\u001a\b\u0012\u0004\u0012\u00028\u00000\f\"\u0004\b\u0000\u0010\b2\f\u0010\t\u001a\b\u0012\u0004\u0012\u00028\u00000\u00022\u0006\u0010\u000b\u001a\u00020\nH\u0000¢\u0006\u0004\b\u001f\u0010 R\u0016\u0010\"\u001a\u00020\u00058\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u000f\u0010!¨\u0006%"}, d2 = {"Lkotlinx/coroutines/internal/l;", "", "Ljava/lang/Class;", "Lkotlinx/coroutines/internal/MainDispatcherFactory;", "baseClass", "", "serviceClass", "a", "S", NotificationCompat.CATEGORY_SERVICE, "Ljava/lang/ClassLoader;", "loader", "", ai.aD, "name", "b", "(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;", "Ljava/net/URL;", "url", "f", "R", "Ljava/util/jar/JarFile;", "Lkotlin/Function1;", "block", "h", "(Ljava/util/jar/JarFile;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;", "Ljava/io/BufferedReader;", net.lingala.zip4j.util.e.f73017f0, com.sdk.a.g.f56552a, com.xinzhu.overmind.utils.helpers.d.f64708a, "()Ljava/util/List;", "e", "(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/List;", "Ljava/lang/String;", "PREFIX", "<init>", "()V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class l {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final l f72188a = new l();
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final String f72189b = "META-INF/services/";

    private l() {
    }

    private final MainDispatcherFactory a(Class<MainDispatcherFactory> cls, String str) {
        try {
            return cls.cast(Class.forName(str, true, cls.getClassLoader()).getDeclaredConstructor(new Class[0]).newInstance(new Object[0]));
        } catch (ClassNotFoundException unused) {
            return null;
        }
    }

    private final <S> S b(String str, ClassLoader classLoader, Class<S> cls) {
        Class<?> cls2 = Class.forName(str, false, classLoader);
        if (cls.isAssignableFrom(cls2)) {
            return cls.cast(cls2.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]));
        }
        throw new IllegalArgumentException(("Expected service of class " + cls + ", but found " + cls2).toString());
    }

    private final <S> List<S> c(Class<S> cls, ClassLoader classLoader) {
        List<S> list;
        try {
            return e(cls, classLoader);
        } catch (Throwable unused) {
            list = CollectionsKt___CollectionsKt.toList(ServiceLoader.load(cls, classLoader));
            return list;
        }
    }

    private final List<String> f(URL url) {
        boolean startsWith$default;
        String substringAfter$default;
        String substringBefore$default;
        String substringAfter$default2;
        String url2 = url.toString();
        startsWith$default = StringsKt__StringsJVMKt.startsWith$default(url2, "jar", false, 2, null);
        if (startsWith$default) {
            substringAfter$default = StringsKt__StringsKt.substringAfter$default(url2, "jar:file:", (String) null, 2, (Object) null);
            substringBefore$default = StringsKt__StringsKt.substringBefore$default(substringAfter$default, '!', (String) null, 2, (Object) null);
            substringAfter$default2 = StringsKt__StringsKt.substringAfter$default(url2, "!/", (String) null, 2, (Object) null);
            JarFile jarFile = new JarFile(substringBefore$default, false);
            try {
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(jarFile.getInputStream(new ZipEntry(substringAfter$default2)), "UTF-8"));
                List<String> g4 = f72188a.g(bufferedReader);
                CloseableKt.closeFinally(bufferedReader, null);
                jarFile.close();
                return g4;
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    try {
                        jarFile.close();
                        throw th2;
                    } catch (Throwable th3) {
                        ExceptionsKt__ExceptionsKt.addSuppressed(th, th3);
                        throw th;
                    }
                }
            }
        }
        BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(url.openStream()));
        try {
            List<String> g5 = f72188a.g(bufferedReader2);
            CloseableKt.closeFinally(bufferedReader2, null);
            return g5;
        } catch (Throwable th4) {
            try {
                throw th4;
            } catch (Throwable th5) {
                CloseableKt.closeFinally(bufferedReader2, th4);
                throw th5;
            }
        }
    }

    private final List<String> g(BufferedReader bufferedReader) {
        List<String> list;
        String substringBefore$default;
        CharSequence trim;
        boolean z3;
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        while (true) {
            String readLine = bufferedReader.readLine();
            if (readLine == null) {
                list = CollectionsKt___CollectionsKt.toList(linkedHashSet);
                return list;
            }
            substringBefore$default = StringsKt__StringsKt.substringBefore$default(readLine, "#", (String) null, 2, (Object) null);
            Objects.requireNonNull(substringBefore$default, "null cannot be cast to non-null type kotlin.CharSequence");
            trim = StringsKt__StringsKt.trim((CharSequence) substringBefore$default);
            String obj = trim.toString();
            int i2 = 0;
            while (true) {
                if (i2 >= obj.length()) {
                    z3 = true;
                    break;
                }
                char charAt = obj.charAt(i2);
                if (!(charAt == '.' || Character.isJavaIdentifierPart(charAt))) {
                    z3 = false;
                    break;
                }
                i2++;
            }
            if (z3) {
                if (obj.length() > 0) {
                    linkedHashSet.add(obj);
                }
            } else {
                throw new IllegalArgumentException(Intrinsics.stringPlus("Illegal service provider class name: ", obj).toString());
            }
        }
    }

    private final <R> R h(JarFile jarFile, Function1<? super JarFile, ? extends R> function1) {
        try {
            R invoke = function1.invoke(jarFile);
            InlineMarker.finallyStart(1);
            jarFile.close();
            InlineMarker.finallyEnd(1);
            return invoke;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                InlineMarker.finallyStart(1);
                try {
                    jarFile.close();
                    InlineMarker.finallyEnd(1);
                    throw th2;
                } catch (Throwable th3) {
                    ExceptionsKt__ExceptionsKt.addSuppressed(th, th3);
                    throw th;
                }
            }
        }
    }

    @NotNull
    public final List<MainDispatcherFactory> d() {
        MainDispatcherFactory mainDispatcherFactory;
        if (!m.a()) {
            return c(MainDispatcherFactory.class, MainDispatcherFactory.class.getClassLoader());
        }
        try {
            ArrayList arrayList = new ArrayList(2);
            MainDispatcherFactory mainDispatcherFactory2 = null;
            try {
                mainDispatcherFactory = (MainDispatcherFactory) MainDispatcherFactory.class.cast(Class.forName("kotlinx.coroutines.android.AndroidDispatcherFactory", true, MainDispatcherFactory.class.getClassLoader()).getDeclaredConstructor(new Class[0]).newInstance(new Object[0]));
            } catch (ClassNotFoundException unused) {
                mainDispatcherFactory = null;
            }
            if (mainDispatcherFactory != null) {
                arrayList.add(mainDispatcherFactory);
            }
            try {
                mainDispatcherFactory2 = (MainDispatcherFactory) MainDispatcherFactory.class.cast(Class.forName("kotlinx.coroutines.test.internal.TestMainDispatcherFactory", true, MainDispatcherFactory.class.getClassLoader()).getDeclaredConstructor(new Class[0]).newInstance(new Object[0]));
            } catch (ClassNotFoundException unused2) {
            }
            if (mainDispatcherFactory2 == null) {
                return arrayList;
            }
            arrayList.add(mainDispatcherFactory2);
            return arrayList;
        } catch (Throwable unused3) {
            return c(MainDispatcherFactory.class, MainDispatcherFactory.class.getClassLoader());
        }
    }

    @NotNull
    public final <S> List<S> e(@NotNull Class<S> cls, @NotNull ClassLoader classLoader) {
        Set<String> set;
        int collectionSizeOrDefault;
        ArrayList<URL> list = Collections.list(classLoader.getResources(Intrinsics.stringPlus(f72189b, cls.getName())));
        Intrinsics.checkNotNullExpressionValue(list, "java.util.Collections.list(this)");
        ArrayList arrayList = new ArrayList();
        for (URL url : list) {
            CollectionsKt__MutableCollectionsKt.addAll(arrayList, f72188a.f(url));
        }
        set = CollectionsKt___CollectionsKt.toSet(arrayList);
        if (!set.isEmpty()) {
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(set, 10);
            ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault);
            for (String str : set) {
                arrayList2.add(f72188a.b(str, classLoader, cls));
            }
            return arrayList2;
        }
        throw new IllegalArgumentException("No providers were loaded with FastServiceLoader".toString());
    }
}
