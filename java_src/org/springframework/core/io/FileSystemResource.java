package org.springframework.core.io;

import androidx.annotation.NonNull;
import java.io.File;
import java.net.URI;
/* loaded from: classes5.dex */
public class FileSystemResource extends File {
    public FileSystemResource(@NonNull String str) {
        super(str);
    }

    public FileSystemResource(String str, @NonNull String str2) {
        super(str, str2);
    }

    public FileSystemResource(File file, @NonNull String str) {
        super(file, str);
    }

    public FileSystemResource(@NonNull URI uri) {
        super(uri);
    }
}
