package com.join.kotlin.ui.cloudarchive.util;

import android.os.Build;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.List;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import java.util.zip.ZipInputStream;
import java.util.zip.ZipOutputStream;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import org.jetbrains.annotations.NotNull;
/* compiled from: ZipUtilExt.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0007\u001a\n\u0010\u0002\u001a\u00020\u0001*\u00020\u0000\u001a\n\u0010\u0004\u001a\u00020\u0003*\u00020\u0000\u001a\n\u0010\u0002\u001a\u00020\u0001*\u00020\u0005\u001a\n\u0010\u0004\u001a\u00020\u0003*\u00020\u0006\u001a\u0015\u0010\n\u001a\u00020\t*\u00020\u00002\u0006\u0010\b\u001a\u00020\u0007H\u0086\u0004\u001a\u0015\u0010\n\u001a\u00020\t*\u00020\u000b2\u0006\u0010\b\u001a\u00020\u0007H\u0086\u0004\u001a\u0010\u0010\f\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u0007H\u0002\u001a%\u0010\u000f\u001a\u00020\t*\u00020\u00032\u0012\u0010\u000e\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00070\r\"\u00020\u0007¢\u0006\u0004\b\u000f\u0010\u0010\u001a\u0018\u0010\u000f\u001a\u00020\t*\u00020\u00032\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00000\u0011\u001a+\u0010\u0013\u001a\u00020\t*\u00020\u00032\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00000\r2\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0002¢\u0006\u0004\b\u0013\u0010\u0014\u001a0\u0010\u001b\u001a\u00020\t*\u00020\u00052\u0006\u0010\u0015\u001a\u00020\u00062\b\b\u0002\u0010\u0017\u001a\u00020\u00162\b\b\u0002\u0010\u0019\u001a\u00020\u00182\b\b\u0002\u0010\u001a\u001a\u00020\u0018\u001a\u0014\u0010\u001d\u001a\u00020\t*\u00020\u00032\u0006\u0010\u001c\u001a\u00020\u0007H\u0002\u001a\n\u0010\u001e\u001a\u00020\u0018*\u00020\u0000¨\u0006\u001f"}, d2 = {"Ljava/io/File;", "Ljava/util/zip/ZipInputStream;", "zipInputStream", "Ljava/util/zip/ZipOutputStream;", "zipOutputStream", "Ljava/io/InputStream;", "Ljava/io/OutputStream;", "", "path", "", "unZipTo", "Ljava/util/zip/ZipFile;", "checkUnzipFolder", "", "srcs", "zipFrom", "(Ljava/util/zip/ZipOutputStream;[Ljava/lang/String;)V", "", "files", "zip", "(Ljava/util/zip/ZipOutputStream;[Ljava/io/File;Ljava/lang/String;)V", "outputStream", "", "bufferSize", "", "closeInput", "closeOutput", "writeTo", "location", "createEmptyFolder", "smartCreateNewFile", "app_wufunNormalRelease"}, k = 2, mv = {1, 4, 2})
/* loaded from: classes3.dex */
public final class ZipUtilExtKt {
    private static final void checkUnzipFolder(String str) {
        File file = new File(str);
        if (!file.isFile()) {
            if (!file.exists() && !file.mkdirs()) {
                throw new RuntimeException("创建文件夹失败");
            }
            return;
        }
        throw new RuntimeException("路径不能是文件");
    }

    private static final void createEmptyFolder(ZipOutputStream zipOutputStream, String str) {
        zipOutputStream.putNextEntry(new ZipEntry(str));
        zipOutputStream.closeEntry();
    }

    public static final boolean smartCreateNewFile(@NotNull File smartCreateNewFile) {
        Intrinsics.checkNotNullParameter(smartCreateNewFile, "$this$smartCreateNewFile");
        if (smartCreateNewFile.exists()) {
            return true;
        }
        return smartCreateNewFile.getParentFile().exists() ? smartCreateNewFile.createNewFile() : smartCreateNewFile.getParentFile().mkdirs() && smartCreateNewFile.createNewFile();
    }

    public static final void unZipTo(@NotNull File unZipTo, @NotNull String path) {
        Intrinsics.checkNotNullParameter(unZipTo, "$this$unZipTo");
        Intrinsics.checkNotNullParameter(path, "path");
        checkUnzipFolder(path);
        Charset forName = Charset.forName("GBK");
        if (Build.VERSION.SDK_INT >= 24) {
            unZipTo(new ZipFile(unZipTo, forName), path);
        } else {
            unZipTo(new ZipFile(unZipTo), path);
        }
    }

    public static final void writeTo(@NotNull InputStream writeTo, @NotNull OutputStream outputStream, int i2, boolean z3, boolean z4) {
        Intrinsics.checkNotNullParameter(writeTo, "$this$writeTo");
        Intrinsics.checkNotNullParameter(outputStream, "outputStream");
        final byte[] bArr = new byte[i2];
        final BufferedInputStream bufferedInputStream = writeTo instanceof BufferedInputStream ? (BufferedInputStream) writeTo : new BufferedInputStream(writeTo, 8192);
        BufferedOutputStream bufferedOutputStream = outputStream instanceof BufferedOutputStream ? (BufferedOutputStream) outputStream : new BufferedOutputStream(outputStream, 8192);
        final Ref.IntRef intRef = new Ref.IntRef();
        intRef.element = 0;
        while (new Function0<Boolean>() { // from class: com.join.kotlin.ui.cloudarchive.util.ZipUtilExtKt$writeTo$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Boolean invoke() {
                return Boolean.valueOf(invoke2());
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final boolean invoke2() {
                Ref.IntRef.this.element = bufferedInputStream.read(bArr);
                return Ref.IntRef.this.element != -1;
            }
        }.invoke().booleanValue()) {
            bufferedOutputStream.write(bArr, 0, intRef.element);
        }
        bufferedOutputStream.flush();
        if (z3) {
            writeTo.close();
        }
        if (z4) {
            outputStream.close();
        }
    }

    public static /* synthetic */ void writeTo$default(InputStream inputStream, OutputStream outputStream, int i2, boolean z3, boolean z4, int i4, Object obj) {
        if ((i4 & 2) != 0) {
            i2 = 2048;
        }
        if ((i4 & 4) != 0) {
            z3 = true;
        }
        if ((i4 & 8) != 0) {
            z4 = true;
        }
        writeTo(inputStream, outputStream, i2, z3, z4);
    }

    private static final void zip(ZipOutputStream zipOutputStream, File[] fileArr, String str) {
        String str2 = str == null ? "" : str + '/';
        if (fileArr.length == 0) {
            createEmptyFolder(zipOutputStream, str2);
        }
        for (File file : fileArr) {
            if (file.isFile()) {
                ZipEntry zipEntry = new ZipEntry(str2 + file.getName());
                FileInputStream fileInputStream = new FileInputStream(file);
                BufferedInputStream bufferedInputStream = fileInputStream instanceof BufferedInputStream ? (BufferedInputStream) fileInputStream : new BufferedInputStream(fileInputStream, 8192);
                zipOutputStream.putNextEntry(zipEntry);
                writeTo$default(bufferedInputStream, zipOutputStream, 8192, false, false, 4, null);
                zipOutputStream.closeEntry();
            } else {
                File[] listFiles = file.listFiles();
                Intrinsics.checkNotNullExpressionValue(listFiles, "it.listFiles()");
                zip(zipOutputStream, listFiles, str2 + file.getName());
            }
        }
    }

    public static final void zipFrom(@NotNull ZipOutputStream zipFrom, @NotNull String... srcs) {
        Intrinsics.checkNotNullParameter(zipFrom, "$this$zipFrom");
        Intrinsics.checkNotNullParameter(srcs, "srcs");
        ArrayList<File> arrayList = new ArrayList(srcs.length);
        for (String str : srcs) {
            arrayList.add(new File(str));
        }
        for (File file : arrayList) {
            if (file.isFile()) {
                zip(zipFrom, new File[]{file}, null);
            } else if (file.isDirectory()) {
                File[] listFiles = file.listFiles();
                Intrinsics.checkNotNullExpressionValue(listFiles, "it.listFiles()");
                zip(zipFrom, listFiles, file.getName());
            }
        }
        zipFrom.close();
    }

    @NotNull
    public static final ZipInputStream zipInputStream(@NotNull File zipInputStream) {
        Intrinsics.checkNotNullParameter(zipInputStream, "$this$zipInputStream");
        return new ZipInputStream(new FileInputStream(zipInputStream));
    }

    @NotNull
    public static final ZipOutputStream zipOutputStream(@NotNull File zipOutputStream) {
        Intrinsics.checkNotNullParameter(zipOutputStream, "$this$zipOutputStream");
        return new ZipOutputStream(new FileOutputStream(zipOutputStream));
    }

    @NotNull
    public static final ZipInputStream zipInputStream(@NotNull InputStream zipInputStream) {
        Intrinsics.checkNotNullParameter(zipInputStream, "$this$zipInputStream");
        return new ZipInputStream(zipInputStream);
    }

    @NotNull
    public static final ZipOutputStream zipOutputStream(@NotNull OutputStream zipOutputStream) {
        Intrinsics.checkNotNullParameter(zipOutputStream, "$this$zipOutputStream");
        return new ZipOutputStream(zipOutputStream);
    }

    public static final void unZipTo(@NotNull ZipFile unZipTo, @NotNull String path) {
        Iterator it2;
        Intrinsics.checkNotNullParameter(unZipTo, "$this$unZipTo");
        Intrinsics.checkNotNullParameter(path, "path");
        checkUnzipFolder(path);
        Enumeration<? extends ZipEntry> entries = unZipTo.entries();
        Intrinsics.checkNotNullExpressionValue(entries, "entries()");
        it2 = CollectionsKt__IteratorsJVMKt.iterator(entries);
        while (it2.hasNext()) {
            ZipEntry entry = (ZipEntry) it2.next();
            Intrinsics.checkNotNullExpressionValue(entry, "entry");
            if (entry.isDirectory()) {
                new File(path + '/' + entry.getName()).mkdirs();
            } else {
                InputStream input = unZipTo.getInputStream(entry);
                File file = new File(path + '/' + entry.getName());
                if (!file.exists()) {
                    smartCreateNewFile(file);
                }
                FileOutputStream fileOutputStream = new FileOutputStream(file);
                Intrinsics.checkNotNullExpressionValue(input, "input");
                writeTo$default(input, fileOutputStream, 8192, false, false, 12, null);
            }
        }
    }

    public static final void zipFrom(@NotNull ZipOutputStream zipFrom, @NotNull List<? extends File> files) {
        Intrinsics.checkNotNullParameter(zipFrom, "$this$zipFrom");
        Intrinsics.checkNotNullParameter(files, "files");
        for (File file : files) {
            if (file.isFile()) {
                zip(zipFrom, new File[]{file}, null);
            } else if (file.isDirectory()) {
                File[] listFiles = file.listFiles();
                Intrinsics.checkNotNullExpressionValue(listFiles, "it.listFiles()");
                zip(zipFrom, listFiles, file.getName());
            }
        }
        zipFrom.close();
    }
}
