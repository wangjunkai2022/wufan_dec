package com.join.mgps.va.overmind;

import android.os.Build;
import android.os.Environment;
import com.join.kotlin.ui.cloudarchive.data.ArchiveData;
import com.umeng.analytics.pro.ai;
import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.attribute.BasicFileAttributes;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ArchiveUtils.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0005\u0018\u0000 \u00042\u00020\u0001:\u0001\u0005B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0006"}, d2 = {"Lcom/join/mgps/va/overmind/a;", "", "<init>", "()V", "b", "a", "app_wufunNormalRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes4.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static long f52338a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public static final C0231a f52339b = new C0231a(null);

    /* compiled from: ArchiveUtils.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000D\n\u0000\n\u0002\u0010\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\n\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u001e\u0010\u001fJ6\u0010\f\u001a\u00020\u000b2\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u0005H\u0002J\u001a\u0010\u0010\u001a\u00020\u000f2\b\u0010\t\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u000e\u001a\u00020\rH\u0002J\u0010\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u000e\u001a\u00020\rH\u0002J\u0010\u0010\u0013\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\rH\u0002J:\u0010\u0017\u001a\u0016\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0015j\n\u0012\u0004\u0012\u00020\u0003\u0018\u0001`\u00162\u0006\u0010\n\u001a\u00020\u00052\u0006\u0010\u0014\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0007R\"\u0010\u0018\u001a\u00020\u00118\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001d¨\u0006 "}, d2 = {"com/join/mgps/va/overmind/a$a", "", "", "Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;", "archiveS", "", "filePath", "", "archiveType", "archiveFileSuffix", "packageName", "", "a", "Ljava/io/File;", com.facebook.common.util.f.f11767c, "", "b", "", com.xinzhu.overmind.utils.helpers.d.f64708a, ai.aD, "path", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "f", "time", "J", "e", "()J", com.sdk.a.g.f56552a, "(J)V", "<init>", "()V", "app_wufunNormalRelease"}, k = 1, mv = {1, 4, 2})
    /* renamed from: com.join.mgps.va.overmind.a$a  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public static final class C0231a {
        private C0231a() {
        }

        private final void a(List<ArchiveData> list, String str, int i2, String str2, String str3) {
            File[] listFiles = new File(str).listFiles();
            if (listFiles == null || listFiles.length == 0) {
                return;
            }
            int i4 = 0;
            if (i2 == 0) {
                ArchiveData archiveData = new ArchiveData();
                archiveData.setArchiveLocalPath(str);
                int length = listFiles.length;
                boolean z3 = false;
                while (i4 < length) {
                    File file = listFiles[i4];
                    Intrinsics.checkNotNullExpressionValue(file, "file");
                    z3 = b(str2, file);
                    if (z3) {
                        z3 = true;
                    }
                    if (z3) {
                        break;
                    }
                    i4++;
                }
                if (z3) {
                    archiveData.setAddTime(d(new File(archiveData.getArchiveLocalPath())));
                    archiveData.setPackageName(str3);
                    list.add(archiveData);
                    return;
                }
                return;
            }
            int length2 = listFiles.length;
            while (i4 < length2) {
                File file2 = listFiles[i4];
                Intrinsics.checkNotNullExpressionValue(file2, "file");
                if (b(str2, file2)) {
                    ArchiveData archiveData2 = new ArchiveData();
                    archiveData2.setArchiveLocalPath(file2.getAbsolutePath());
                    archiveData2.setAddTime(d(new File(archiveData2.getArchiveLocalPath())));
                    archiveData2.setPackageName(str3);
                    list.add(archiveData2);
                }
                i4++;
            }
        }

        private final boolean b(String str, File file) {
            if (str == null || !(!Intrinsics.areEqual(str, ""))) {
                return true;
            }
            Object[] array = StringsKt.split$default((CharSequence) str, new String[]{","}, false, 0, 6, (Object) null).toArray(new String[0]);
            Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
            String[] strArr = (String[]) array;
            if (strArr.length > 0) {
                for (String str2 : strArr) {
                    if (str2 == file.getName()) {
                        return true;
                    }
                    String name = file.getName();
                    Intrinsics.checkNotNullExpressionValue(name, "file.name");
                    if (StringsKt.startsWith$default(name, str2, false, 2, (Object) null)) {
                        return true;
                    }
                    String name2 = file.getName();
                    Intrinsics.checkNotNullExpressionValue(name2, "file.name");
                    if (StringsKt.endsWith$default(name2, str2, false, 2, (Object) null)) {
                        return true;
                    }
                }
                return false;
            }
            return true;
        }

        private final void c(File file) {
            int i2 = 0;
            if (Build.VERSION.SDK_INT >= 26) {
                if (file.isDirectory()) {
                    File[] listFiles = file.listFiles();
                    int length = listFiles.length;
                    while (i2 < length) {
                        File f4 = listFiles[i2];
                        Intrinsics.checkNotNullExpressionValue(f4, "f");
                        c(f4);
                        i2++;
                    }
                    return;
                }
                long j4 = 0;
                try {
                    j4 = Files.readAttributes(file.toPath(), BasicFileAttributes.class, new LinkOption[0]).lastModifiedTime().toMillis();
                } catch (IOException e4) {
                    e4.printStackTrace();
                }
                if (j4 > e()) {
                    g(j4);
                }
            } else if (file.isDirectory()) {
                File[] listFiles2 = file.listFiles();
                int length2 = listFiles2.length;
                while (i2 < length2) {
                    File f5 = listFiles2[i2];
                    Intrinsics.checkNotNullExpressionValue(f5, "f");
                    c(f5);
                    i2++;
                }
            } else {
                long lastModified = file.lastModified();
                if (lastModified > e()) {
                    g(lastModified);
                }
            }
        }

        private final long d(File file) {
            g(0L);
            c(file);
            return e();
        }

        public final long e() {
            return a.f52338a;
        }

        @Nullable
        public final ArrayList<ArchiveData> f(@NotNull String packageName, @NotNull String path, @NotNull String archiveFileSuffix, int i2) {
            Intrinsics.checkNotNullParameter(packageName, "packageName");
            Intrinsics.checkNotNullParameter(path, "path");
            Intrinsics.checkNotNullParameter(archiveFileSuffix, "archiveFileSuffix");
            ArrayList<ArchiveData> arrayList = new ArrayList<>();
            if (!StringsKt.startsWith$default(path, "/Android/data", false, 2, (Object) null) && !StringsKt.startsWith$default(path, "Android/data", false, 2, (Object) null)) {
                if (StringsKt.startsWith$default(path, "/data/data", false, 2, (Object) null)) {
                    File s3 = com.xinzhu.overmind.a.s(packageName, 0);
                    Intrinsics.checkNotNullExpressionValue(s3, "MindEnvironment.getDataDir_plugin(packageName, 0)");
                    String absolutePath = s3.getAbsolutePath();
                    Intrinsics.checkNotNullExpressionValue(absolutePath, "MindEnvironment.getDataD…kageName, 0).absolutePath");
                    StringBuilder sb = new StringBuilder();
                    sb.append(absolutePath);
                    sb.append(StringsKt.replace$default(path, "/data/data/" + packageName, "", false, 4, (Object) null));
                    a(arrayList, sb.toString(), i2, archiveFileSuffix, packageName);
                } else {
                    File externalStorageDirectory = Environment.getExternalStorageDirectory();
                    Intrinsics.checkNotNullExpressionValue(externalStorageDirectory, "Environment.getExternalStorageDirectory()");
                    a(arrayList, externalStorageDirectory.getAbsolutePath() + path, i2, archiveFileSuffix, packageName);
                }
            } else {
                if (StringsKt.startsWith$default(path, "Android/data", false, 2, (Object) null)) {
                    path = '/' + path;
                }
                File T = com.xinzhu.overmind.a.T();
                Intrinsics.checkNotNullExpressionValue(T, "MindEnvironment.getVirtualRoot_plugin()");
                String absolutePath2 = T.getAbsolutePath();
                Intrinsics.checkNotNullExpressionValue(absolutePath2, "MindEnvironment.getVirtu…oot_plugin().absolutePath");
                a(arrayList, absolutePath2 + path, i2, archiveFileSuffix, packageName);
            }
            StringBuilder sb2 = new StringBuilder();
            sb2.append(String.valueOf(arrayList.size()));
            sb2.append("");
            return arrayList;
        }

        public final void g(long j4) {
            a.f52338a = j4;
        }

        public /* synthetic */ C0231a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }
}
