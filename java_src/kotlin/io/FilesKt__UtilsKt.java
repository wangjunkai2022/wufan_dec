package kotlin.io;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.join.mgps.Util.g0;
import external.org.apache.commons.lang3.d;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Utils.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000>\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\f\u001a*\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0001\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00002\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0007\u001a*\u0010\u0006\u001a\u00020\u00032\b\b\u0002\u0010\u0001\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00002\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0007\u001a\u0012\u0010\b\u001a\u00020\u0000*\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0003\u001a\u0012\u0010\t\u001a\u00020\u0003*\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0003\u001a\u0012\u0010\n\u001a\u00020\u0003*\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0003\u001a\u0014\u0010\u000b\u001a\u0004\u0018\u00010\u0003*\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0003\u001a\u001d\u0010\u000e\u001a\u0004\u0018\u00010\u0000*\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0003H\u0002¢\u0006\u0004\b\f\u0010\r\u001a&\u0010\u0014\u001a\u00020\u0003*\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u00032\b\b\u0002\u0010\u0011\u001a\u00020\u00102\b\b\u0002\u0010\u0013\u001a\u00020\u0012\u001a8\u0010\u0019\u001a\u00020\u0010*\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u00032\b\b\u0002\u0010\u0011\u001a\u00020\u00102\u001a\b\u0002\u0010\u0018\u001a\u0014\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u00170\u0015\u001a\n\u0010\u001a\u001a\u00020\u0010*\u00020\u0003\u001a\u0012\u0010\u001c\u001a\u00020\u0010*\u00020\u00032\u0006\u0010\u001b\u001a\u00020\u0003\u001a\u0012\u0010\u001c\u001a\u00020\u0010*\u00020\u00032\u0006\u0010\u001b\u001a\u00020\u0000\u001a\u0012\u0010\u001d\u001a\u00020\u0010*\u00020\u00032\u0006\u0010\u001b\u001a\u00020\u0003\u001a\u0012\u0010\u001d\u001a\u00020\u0010*\u00020\u00032\u0006\u0010\u001b\u001a\u00020\u0000\u001a\n\u0010\u001e\u001a\u00020\u0003*\u00020\u0003\u001a\u0013\u0010\u001e\u001a\u00020\u001f*\u00020\u001fH\u0002¢\u0006\u0004\b \u0010!\u001a\u001f\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u00030\"*\b\u0012\u0004\u0012\u00020\u00030\"H\u0002¢\u0006\u0004\b \u0010#\u001a\u0012\u0010%\u001a\u00020\u0003*\u00020\u00032\u0006\u0010$\u001a\u00020\u0003\u001a\u0012\u0010%\u001a\u00020\u0003*\u00020\u00032\u0006\u0010$\u001a\u00020\u0000\u001a\u0012\u0010&\u001a\u00020\u0003*\u00020\u00032\u0006\u0010$\u001a\u00020\u0003\u001a\u0012\u0010&\u001a\u00020\u0003*\u00020\u00032\u0006\u0010$\u001a\u00020\u0000\"\u0017\u0010)\u001a\u00020\u0000*\u00020\u00038F@\u0006¢\u0006\u0006\u001a\u0004\b'\u0010(\"\u0017\u0010+\u001a\u00020\u0000*\u00020\u00038F@\u0006¢\u0006\u0006\u001a\u0004\b*\u0010(\"\u0017\u0010-\u001a\u00020\u0000*\u00020\u00038F@\u0006¢\u0006\u0006\u001a\u0004\b,\u0010(¨\u0006."}, d2 = {"", "prefix", "suffix", "Ljava/io/File;", "directory", "createTempDir", "createTempFile", "base", "toRelativeString", "relativeTo", "relativeToOrSelf", "relativeToOrNull", "toRelativeStringOrNull$FilesKt__UtilsKt", "(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;", "toRelativeStringOrNull", TypedValues.AttributesType.S_TARGET, "", "overwrite", "", "bufferSize", "copyTo", "Lkotlin/Function2;", "Ljava/io/IOException;", "Lkotlin/io/OnErrorAction;", "onError", "copyRecursively", "deleteRecursively", "other", "startsWith", "endsWith", "normalize", "Lkotlin/io/FilePathComponents;", "normalize$FilesKt__UtilsKt", "(Lkotlin/io/FilePathComponents;)Lkotlin/io/FilePathComponents;", "", "(Ljava/util/List;)Ljava/util/List;", "relative", "resolve", "resolveSibling", "getInvariantSeparatorsPath", "(Ljava/io/File;)Ljava/lang/String;", "invariantSeparatorsPath", "getExtension", "extension", "getNameWithoutExtension", "nameWithoutExtension", "kotlin-stdlib"}, k = 5, mv = {1, 5, 1}, xs = "kotlin/io/FilesKt")
/* loaded from: classes.dex */
class FilesKt__UtilsKt extends FilesKt__FileTreeWalkKt {
    /* JADX WARN: Removed duplicated region for block: B:55:0x00b2 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00a0 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final boolean copyRecursively(@org.jetbrains.annotations.NotNull java.io.File r11, @org.jetbrains.annotations.NotNull java.io.File r12, boolean r13, @org.jetbrains.annotations.NotNull final kotlin.jvm.functions.Function2<? super java.io.File, ? super java.io.IOException, ? extends kotlin.io.OnErrorAction> r14) {
        /*
            Method dump skipped, instructions count: 229
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.io.FilesKt__UtilsKt.copyRecursively(java.io.File, java.io.File, boolean, kotlin.jvm.functions.Function2):boolean");
    }

    public static /* synthetic */ boolean copyRecursively$default(File file, File file2, boolean z3, Function2 function2, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            z3 = false;
        }
        if ((i2 & 4) != 0) {
            function2 = new Function2() { // from class: kotlin.io.FilesKt__UtilsKt$copyRecursively$1
                @Override // kotlin.jvm.functions.Function2
                @NotNull
                public final Void invoke(@NotNull File file3, @NotNull IOException exception) {
                    Intrinsics.checkNotNullParameter(file3, "<anonymous parameter 0>");
                    Intrinsics.checkNotNullParameter(exception, "exception");
                    throw exception;
                }
            };
        }
        return copyRecursively(file, file2, z3, function2);
    }

    @NotNull
    public static final File copyTo(@NotNull File copyTo, @NotNull File target, boolean z3, int i2) {
        Intrinsics.checkNotNullParameter(copyTo, "$this$copyTo");
        Intrinsics.checkNotNullParameter(target, "target");
        if (copyTo.exists()) {
            if (target.exists()) {
                if (z3) {
                    if (!target.delete()) {
                        throw new FileAlreadyExistsException(copyTo, target, "Tried to overwrite the destination, but failed to delete it.");
                    }
                } else {
                    throw new FileAlreadyExistsException(copyTo, target, "The destination file already exists.");
                }
            }
            if (copyTo.isDirectory()) {
                if (!target.mkdirs()) {
                    throw new FileSystemException(copyTo, target, "Failed to create target directory.");
                }
            } else {
                File parentFile = target.getParentFile();
                if (parentFile != null) {
                    parentFile.mkdirs();
                }
                FileInputStream fileInputStream = new FileInputStream(copyTo);
                try {
                    FileOutputStream fileOutputStream = new FileOutputStream(target);
                    ByteStreamsKt.copyTo(fileInputStream, fileOutputStream, i2);
                    CloseableKt.closeFinally(fileOutputStream, null);
                    CloseableKt.closeFinally(fileInputStream, null);
                } finally {
                }
            }
            return target;
        }
        throw new NoSuchFileException(copyTo, null, "The source file doesn't exist.", 2, null);
    }

    public static /* synthetic */ File copyTo$default(File file, File file2, boolean z3, int i2, int i4, Object obj) {
        if ((i4 & 2) != 0) {
            z3 = false;
        }
        if ((i4 & 4) != 0) {
            i2 = 8192;
        }
        return copyTo(file, file2, z3, i2);
    }

    @Deprecated(message = "Avoid creating temporary directories in the default temp location with this function due to too wide permissions on the newly created directory. Use kotlin.io.path.createTempDirectory instead.")
    @NotNull
    public static final File createTempDir(@NotNull String prefix, @Nullable String str, @Nullable File file) {
        Intrinsics.checkNotNullParameter(prefix, "prefix");
        File dir = File.createTempFile(prefix, str, file);
        dir.delete();
        if (dir.mkdir()) {
            Intrinsics.checkNotNullExpressionValue(dir, "dir");
            return dir;
        }
        throw new IOException("Unable to create temporary directory " + dir + d.f65364a);
    }

    public static /* synthetic */ File createTempDir$default(String str, String str2, File file, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = "tmp";
        }
        if ((i2 & 2) != 0) {
            str2 = null;
        }
        if ((i2 & 4) != 0) {
            file = null;
        }
        return createTempDir(str, str2, file);
    }

    @Deprecated(message = "Avoid creating temporary files in the default temp location with this function due to too wide permissions on the newly created file. Use kotlin.io.path.createTempFile instead or resort to java.io.File.createTempFile.")
    @NotNull
    public static final File createTempFile(@NotNull String prefix, @Nullable String str, @Nullable File file) {
        Intrinsics.checkNotNullParameter(prefix, "prefix");
        File createTempFile = File.createTempFile(prefix, str, file);
        Intrinsics.checkNotNullExpressionValue(createTempFile, "File.createTempFile(prefix, suffix, directory)");
        return createTempFile;
    }

    public static /* synthetic */ File createTempFile$default(String str, String str2, File file, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = "tmp";
        }
        if ((i2 & 2) != 0) {
            str2 = null;
        }
        if ((i2 & 4) != 0) {
            file = null;
        }
        return createTempFile(str, str2, file);
    }

    public static final boolean deleteRecursively(@NotNull File deleteRecursively) {
        Intrinsics.checkNotNullParameter(deleteRecursively, "$this$deleteRecursively");
        while (true) {
            boolean z3 = true;
            for (File file : FilesKt__FileTreeWalkKt.walkBottomUp(deleteRecursively)) {
                if (file.delete() || !file.exists()) {
                    if (z3) {
                        break;
                    }
                }
                z3 = false;
            }
            return z3;
        }
    }

    public static final boolean endsWith(@NotNull File endsWith, @NotNull File other) {
        Intrinsics.checkNotNullParameter(endsWith, "$this$endsWith");
        Intrinsics.checkNotNullParameter(other, "other");
        FilePathComponents components = FilesKt__FilePathComponentsKt.toComponents(endsWith);
        FilePathComponents components2 = FilesKt__FilePathComponentsKt.toComponents(other);
        if (components2.isRooted()) {
            return Intrinsics.areEqual(endsWith, other);
        }
        int size = components.getSize() - components2.getSize();
        if (size < 0) {
            return false;
        }
        return components.getSegments().subList(size, components.getSize()).equals(components2.getSegments());
    }

    @NotNull
    public static final String getExtension(@NotNull File extension) {
        String substringAfterLast;
        Intrinsics.checkNotNullParameter(extension, "$this$extension");
        String name = extension.getName();
        Intrinsics.checkNotNullExpressionValue(name, "name");
        substringAfterLast = StringsKt__StringsKt.substringAfterLast(name, (char) d.f65364a, "");
        return substringAfterLast;
    }

    @NotNull
    public static final String getInvariantSeparatorsPath(@NotNull File invariantSeparatorsPath) {
        String replace$default;
        Intrinsics.checkNotNullParameter(invariantSeparatorsPath, "$this$invariantSeparatorsPath");
        if (File.separatorChar == '/') {
            String path = invariantSeparatorsPath.getPath();
            Intrinsics.checkNotNullExpressionValue(path, "path");
            return path;
        }
        String path2 = invariantSeparatorsPath.getPath();
        Intrinsics.checkNotNullExpressionValue(path2, "path");
        replace$default = StringsKt__StringsJVMKt.replace$default(path2, File.separatorChar, '/', false, 4, (Object) null);
        return replace$default;
    }

    @NotNull
    public static final String getNameWithoutExtension(@NotNull File nameWithoutExtension) {
        String substringBeforeLast$default;
        Intrinsics.checkNotNullParameter(nameWithoutExtension, "$this$nameWithoutExtension");
        String name = nameWithoutExtension.getName();
        Intrinsics.checkNotNullExpressionValue(name, "name");
        substringBeforeLast$default = StringsKt__StringsKt.substringBeforeLast$default(name, g0.f27568a, (String) null, 2, (Object) null);
        return substringBeforeLast$default;
    }

    @NotNull
    public static final File normalize(@NotNull File normalize) {
        String joinToString$default;
        Intrinsics.checkNotNullParameter(normalize, "$this$normalize");
        FilePathComponents components = FilesKt__FilePathComponentsKt.toComponents(normalize);
        File root = components.getRoot();
        List<File> normalize$FilesKt__UtilsKt = normalize$FilesKt__UtilsKt(components.getSegments());
        String str = File.separator;
        Intrinsics.checkNotNullExpressionValue(str, "File.separator");
        joinToString$default = CollectionsKt___CollectionsKt.joinToString$default(normalize$FilesKt__UtilsKt, str, null, null, 0, null, null, 62, null);
        return resolve(root, joinToString$default);
    }

    private static final FilePathComponents normalize$FilesKt__UtilsKt(FilePathComponents filePathComponents) {
        return new FilePathComponents(filePathComponents.getRoot(), normalize$FilesKt__UtilsKt(filePathComponents.getSegments()));
    }

    @NotNull
    public static final File relativeTo(@NotNull File relativeTo, @NotNull File base) {
        Intrinsics.checkNotNullParameter(relativeTo, "$this$relativeTo");
        Intrinsics.checkNotNullParameter(base, "base");
        return new File(toRelativeString(relativeTo, base));
    }

    @Nullable
    public static final File relativeToOrNull(@NotNull File relativeToOrNull, @NotNull File base) {
        Intrinsics.checkNotNullParameter(relativeToOrNull, "$this$relativeToOrNull");
        Intrinsics.checkNotNullParameter(base, "base");
        String relativeStringOrNull$FilesKt__UtilsKt = toRelativeStringOrNull$FilesKt__UtilsKt(relativeToOrNull, base);
        if (relativeStringOrNull$FilesKt__UtilsKt != null) {
            return new File(relativeStringOrNull$FilesKt__UtilsKt);
        }
        return null;
    }

    @NotNull
    public static final File relativeToOrSelf(@NotNull File relativeToOrSelf, @NotNull File base) {
        Intrinsics.checkNotNullParameter(relativeToOrSelf, "$this$relativeToOrSelf");
        Intrinsics.checkNotNullParameter(base, "base");
        String relativeStringOrNull$FilesKt__UtilsKt = toRelativeStringOrNull$FilesKt__UtilsKt(relativeToOrSelf, base);
        return relativeStringOrNull$FilesKt__UtilsKt != null ? new File(relativeStringOrNull$FilesKt__UtilsKt) : relativeToOrSelf;
    }

    @NotNull
    public static final File resolve(@NotNull File resolve, @NotNull File relative) {
        boolean endsWith$default;
        Intrinsics.checkNotNullParameter(resolve, "$this$resolve");
        Intrinsics.checkNotNullParameter(relative, "relative");
        if (FilesKt__FilePathComponentsKt.isRooted(relative)) {
            return relative;
        }
        String file = resolve.toString();
        Intrinsics.checkNotNullExpressionValue(file, "this.toString()");
        if (!(file.length() == 0)) {
            endsWith$default = StringsKt__StringsKt.endsWith$default((CharSequence) file, File.separatorChar, false, 2, (Object) null);
            if (!endsWith$default) {
                return new File(file + File.separatorChar + relative);
            }
        }
        return new File(file + relative);
    }

    @NotNull
    public static final File resolveSibling(@NotNull File resolveSibling, @NotNull File relative) {
        Intrinsics.checkNotNullParameter(resolveSibling, "$this$resolveSibling");
        Intrinsics.checkNotNullParameter(relative, "relative");
        FilePathComponents components = FilesKt__FilePathComponentsKt.toComponents(resolveSibling);
        return resolve(resolve(components.getRoot(), components.getSize() == 0 ? new File("..") : components.subPath(0, components.getSize() - 1)), relative);
    }

    public static final boolean startsWith(@NotNull File startsWith, @NotNull File other) {
        Intrinsics.checkNotNullParameter(startsWith, "$this$startsWith");
        Intrinsics.checkNotNullParameter(other, "other");
        FilePathComponents components = FilesKt__FilePathComponentsKt.toComponents(startsWith);
        FilePathComponents components2 = FilesKt__FilePathComponentsKt.toComponents(other);
        if (!(!Intrinsics.areEqual(components.getRoot(), components2.getRoot())) && components.getSize() >= components2.getSize()) {
            return components.getSegments().subList(0, components2.getSize()).equals(components2.getSegments());
        }
        return false;
    }

    @NotNull
    public static final String toRelativeString(@NotNull File toRelativeString, @NotNull File base) {
        Intrinsics.checkNotNullParameter(toRelativeString, "$this$toRelativeString");
        Intrinsics.checkNotNullParameter(base, "base");
        String relativeStringOrNull$FilesKt__UtilsKt = toRelativeStringOrNull$FilesKt__UtilsKt(toRelativeString, base);
        if (relativeStringOrNull$FilesKt__UtilsKt != null) {
            return relativeStringOrNull$FilesKt__UtilsKt;
        }
        throw new IllegalArgumentException("this and base files have different roots: " + toRelativeString + " and " + base + d.f65364a);
    }

    private static final String toRelativeStringOrNull$FilesKt__UtilsKt(File file, File file2) {
        List drop;
        FilePathComponents normalize$FilesKt__UtilsKt = normalize$FilesKt__UtilsKt(FilesKt__FilePathComponentsKt.toComponents(file));
        FilePathComponents normalize$FilesKt__UtilsKt2 = normalize$FilesKt__UtilsKt(FilesKt__FilePathComponentsKt.toComponents(file2));
        if (!Intrinsics.areEqual(normalize$FilesKt__UtilsKt.getRoot(), normalize$FilesKt__UtilsKt2.getRoot())) {
            return null;
        }
        int size = normalize$FilesKt__UtilsKt2.getSize();
        int size2 = normalize$FilesKt__UtilsKt.getSize();
        int i2 = 0;
        int min = Math.min(size2, size);
        while (i2 < min && Intrinsics.areEqual(normalize$FilesKt__UtilsKt.getSegments().get(i2), normalize$FilesKt__UtilsKt2.getSegments().get(i2))) {
            i2++;
        }
        StringBuilder sb = new StringBuilder();
        int i4 = size - 1;
        if (i4 >= i2) {
            while (!Intrinsics.areEqual(normalize$FilesKt__UtilsKt2.getSegments().get(i4).getName(), "..")) {
                sb.append("..");
                if (i4 != i2) {
                    sb.append(File.separatorChar);
                }
                if (i4 != i2) {
                    i4--;
                }
            }
            return null;
        }
        if (i2 < size2) {
            if (i2 < size) {
                sb.append(File.separatorChar);
            }
            drop = CollectionsKt___CollectionsKt.drop(normalize$FilesKt__UtilsKt.getSegments(), i2);
            String str = File.separator;
            Intrinsics.checkNotNullExpressionValue(str, "File.separator");
            CollectionsKt___CollectionsKt.joinTo$default(drop, sb, str, null, null, 0, null, null, 124, null);
        }
        return sb.toString();
    }

    private static final List<File> normalize$FilesKt__UtilsKt(List<? extends File> list) {
        ArrayList arrayList = new ArrayList(list.size());
        for (File file : list) {
            String name = file.getName();
            if (name != null) {
                int hashCode = name.hashCode();
                if (hashCode != 46) {
                    if (hashCode == 1472 && name.equals("..")) {
                        if (arrayList.isEmpty() || !(!Intrinsics.areEqual(((File) CollectionsKt.last((List<? extends Object>) arrayList)).getName(), ".."))) {
                            arrayList.add(file);
                        } else {
                            arrayList.remove(arrayList.size() - 1);
                        }
                    }
                } else if (name.equals(g0.f27568a)) {
                }
            }
            arrayList.add(file);
        }
        return arrayList;
    }

    @NotNull
    public static final File resolve(@NotNull File resolve, @NotNull String relative) {
        Intrinsics.checkNotNullParameter(resolve, "$this$resolve");
        Intrinsics.checkNotNullParameter(relative, "relative");
        return resolve(resolve, new File(relative));
    }

    @NotNull
    public static final File resolveSibling(@NotNull File resolveSibling, @NotNull String relative) {
        Intrinsics.checkNotNullParameter(resolveSibling, "$this$resolveSibling");
        Intrinsics.checkNotNullParameter(relative, "relative");
        return resolveSibling(resolveSibling, new File(relative));
    }

    public static final boolean startsWith(@NotNull File startsWith, @NotNull String other) {
        Intrinsics.checkNotNullParameter(startsWith, "$this$startsWith");
        Intrinsics.checkNotNullParameter(other, "other");
        return startsWith(startsWith, new File(other));
    }

    public static final boolean endsWith(@NotNull File endsWith, @NotNull String other) {
        Intrinsics.checkNotNullParameter(endsWith, "$this$endsWith");
        Intrinsics.checkNotNullParameter(other, "other");
        return endsWith(endsWith, new File(other));
    }
}
