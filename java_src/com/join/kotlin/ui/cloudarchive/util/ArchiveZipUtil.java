package com.join.kotlin.ui.cloudarchive.util;

import com.facebook.common.util.f;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.List;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.text.StringsKt__StringsJVMKt;
import org.jetbrains.annotations.NotNull;
/* compiled from: ArchiveZipUtil.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0012\u0010\u0013J\u001e\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u0004H\u0016J\u0018\u0010\n\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u0002H\u0016J\u001c\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\b0\u0004J\u001e\u0010\u0010\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u000eJ\u000e\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u0002¨\u0006\u0014"}, d2 = {"Lcom/join/kotlin/ui/cloudarchive/util/ArchiveZipUtil;", "", "Ljava/io/File;", f.f11767c, "", "files", "", "zipActiveFilesKotlin", "", "fileZip", "unZipActiveFilesKotlin", "zipActiveFiles", "Ljava/util/zip/ZipOutputStream;", "zipOutputStream", "", "byteArray", "zipFile", "unArchiveZip", "<init>", "()V", "app_wufunNormalRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes3.dex */
public final class ArchiveZipUtil {
    /* JADX WARN: Type inference failed for: r1v1, types: [T, java.io.FileInputStream] */
    /* JADX WARN: Type inference failed for: r2v1, types: [byte[], T] */
    public final void unArchiveZip(@NotNull File zipFile) {
        Intrinsics.checkNotNullParameter(zipFile, "zipFile");
        if (zipFile.exists()) {
            final Ref.ObjectRef objectRef = new Ref.ObjectRef();
            objectRef.element = null;
            objectRef.element = new FileInputStream(zipFile);
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            final Ref.ObjectRef objectRef2 = new Ref.ObjectRef();
            objectRef2.element = new byte[10240];
            final Ref.IntRef intRef = new Ref.IntRef();
            intRef.element = 0;
            while (new Function0<Boolean>() { // from class: com.join.kotlin.ui.cloudarchive.util.ArchiveZipUtil$unArchiveZip$1
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
                    Ref.IntRef.this.element = ((FileInputStream) objectRef.element).read((byte[]) objectRef2.element);
                    return Ref.IntRef.this.element != -1;
                }
            }.invoke().booleanValue()) {
                byteArrayOutputStream.write((byte[]) objectRef2.element, 0, intRef.element);
            }
            ((FileInputStream) objectRef.element).close();
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            byteArrayOutputStream.close();
            new ByteArrayInputStream(byteArray);
        }
    }

    public void unZipActiveFilesKotlin(@NotNull String file, @NotNull File fileZip) {
        Intrinsics.checkNotNullParameter(file, "file");
        Intrinsics.checkNotNullParameter(fileZip, "fileZip");
        StringBuilder sb = new StringBuilder();
        sb.append("unZipActiveFilesKotlin");
        sb.append(file);
        ZipUtilExtKt.unZipTo(fileZip, file);
    }

    public final void zipActiveFiles(@NotNull File file, @NotNull List<String> files) {
        Intrinsics.checkNotNullParameter(file, "file");
        Intrinsics.checkNotNullParameter(files, "files");
        try {
            if (!file.getParentFile().exists()) {
                file.getParentFile().mkdirs();
            }
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            ZipOutputStream zipOutputStream = new ZipOutputStream(byteArrayOutputStream);
            byte[] bArr = new byte[10240];
            for (String str : files) {
                zipFile(zipOutputStream, new File(str), bArr);
            }
            zipOutputStream.close();
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            fileOutputStream.write(byteArray);
            fileOutputStream.close();
        } catch (Exception unused) {
        }
    }

    public void zipActiveFilesKotlin(@NotNull File file, @NotNull List<? extends File> files) {
        Intrinsics.checkNotNullParameter(file, "file");
        Intrinsics.checkNotNullParameter(files, "files");
        if (!file.exists() && !file.getParentFile().exists()) {
            file.getParentFile().mkdirs();
        }
        ZipUtilExtKt.zipFrom(ZipUtilExtKt.zipOutputStream(file), files);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void zipFile(@NotNull ZipOutputStream zipOutputStream, @NotNull File file, @NotNull final byte[] byteArray) {
        boolean startsWith$default;
        Intrinsics.checkNotNullParameter(zipOutputStream, "zipOutputStream");
        Intrinsics.checkNotNullParameter(file, "file");
        Intrinsics.checkNotNullParameter(byteArray, "byteArray");
        if (file.exists()) {
            if (file.isDirectory()) {
                File[] listFiles = file.listFiles();
                boolean z3 = true;
                if (listFiles != null) {
                    if (!(listFiles.length == 0)) {
                        z3 = false;
                    }
                }
                if (z3) {
                    return;
                }
                for (File f4 : listFiles) {
                    Intrinsics.checkNotNullExpressionValue(f4, "f");
                    zipFile(zipOutputStream, f4, byteArray);
                }
                return;
            }
            FileInputStream fileInputStream = new FileInputStream(file);
            String path = file.getAbsolutePath();
            String a02 = com.join.mgps.va.overmind.f.f52369d.a0();
            Intrinsics.checkNotNullExpressionValue(path, "path");
            startsWith$default = StringsKt__StringsJVMKt.startsWith$default(path, a02, false, 2, null);
            if (startsWith$default) {
                path = StringsKt__StringsJVMKt.replace$default(path, a02 + '/', "", false, 4, (Object) null);
            }
            zipOutputStream.putNextEntry(new ZipEntry(path));
            final Ref.IntRef intRef = new Ref.IntRef();
            intRef.element = 0;
            final Ref.ObjectRef objectRef = new Ref.ObjectRef();
            objectRef.element = fileInputStream instanceof BufferedInputStream ? (BufferedInputStream) fileInputStream : new BufferedInputStream(fileInputStream, 8192);
            BufferedOutputStream bufferedOutputStream = zipOutputStream instanceof BufferedOutputStream ? (BufferedOutputStream) zipOutputStream : new BufferedOutputStream(zipOutputStream, 8192);
            while (new Function0<Boolean>() { // from class: com.join.kotlin.ui.cloudarchive.util.ArchiveZipUtil$zipFile$1
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
                    Ref.IntRef.this.element = ((BufferedInputStream) objectRef.element).read(byteArray);
                    return Ref.IntRef.this.element != -1;
                }
            }.invoke().booleanValue()) {
                bufferedOutputStream.write(byteArray, 0, intRef.element);
            }
            bufferedOutputStream.flush();
            fileInputStream.close();
        }
    }
}
