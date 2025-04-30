package kotlin.io.path;

import java.nio.file.FileSystem;
import java.nio.file.Path;
import java.nio.file.Paths;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt___StringsKt;
import org.jetbrains.annotations.NotNull;
/* compiled from: PathUtils.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\n\bÂ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u0016\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002R\u001e\u0010\u0007\u001a\n \u0006*\u0004\u0018\u00010\u00020\u00028\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\bR\u001e\u0010\t\u001a\n \u0006*\u0004\u0018\u00010\u00020\u00028\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\b¨\u0006\f"}, d2 = {"Lkotlin/io/path/PathRelativizer;", "", "Ljava/nio/file/Path;", "path", "base", "tryRelativeTo", "kotlin.jvm.PlatformType", "parentPath", "Ljava/nio/file/Path;", "emptyPath", "<init>", "()V", "kotlin-stdlib-jdk7"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
final class PathRelativizer {
    @NotNull
    public static final PathRelativizer INSTANCE = new PathRelativizer();
    private static final Path emptyPath = Paths.get("", new String[0]);
    private static final Path parentPath = Paths.get("..", new String[0]);

    private PathRelativizer() {
    }

    @NotNull
    public final Path tryRelativeTo(@NotNull Path path, @NotNull Path base) {
        boolean endsWith$default;
        String dropLast;
        Intrinsics.checkNotNullParameter(path, "path");
        Intrinsics.checkNotNullParameter(base, "base");
        Path bn = base.normalize();
        Path r3 = path.normalize();
        Path rn = bn.relativize(r3);
        Intrinsics.checkNotNullExpressionValue(bn, "bn");
        int nameCount = bn.getNameCount();
        Intrinsics.checkNotNullExpressionValue(r3, "pn");
        int min = Math.min(nameCount, r3.getNameCount());
        for (int i2 = 0; i2 < min; i2++) {
            Path name = bn.getName(i2);
            Path path2 = parentPath;
            if (!Intrinsics.areEqual(name, path2)) {
                break;
            } else if (!Intrinsics.areEqual(r3.getName(i2), path2)) {
                throw new IllegalArgumentException("Unable to compute relative path");
            }
        }
        if (!(!Intrinsics.areEqual(r3, bn)) || !Intrinsics.areEqual(bn, emptyPath)) {
            String obj = rn.toString();
            Intrinsics.checkNotNullExpressionValue(rn, "rn");
            FileSystem fileSystem = rn.getFileSystem();
            Intrinsics.checkNotNullExpressionValue(fileSystem, "rn.fileSystem");
            String separator = fileSystem.getSeparator();
            Intrinsics.checkNotNullExpressionValue(separator, "rn.fileSystem.separator");
            endsWith$default = StringsKt__StringsJVMKt.endsWith$default(obj, separator, false, 2, null);
            if (endsWith$default) {
                FileSystem fileSystem2 = rn.getFileSystem();
                FileSystem fileSystem3 = rn.getFileSystem();
                Intrinsics.checkNotNullExpressionValue(fileSystem3, "rn.fileSystem");
                dropLast = StringsKt___StringsKt.dropLast(obj, fileSystem3.getSeparator().length());
                r3 = fileSystem2.getPath(dropLast, new String[0]);
            } else {
                r3 = rn;
            }
        }
        Intrinsics.checkNotNullExpressionValue(r3, "r");
        return r3;
    }
}
