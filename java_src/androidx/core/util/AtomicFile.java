package androidx.core.util;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
/* loaded from: classes.dex */
public class AtomicFile {

    /* renamed from: d  reason: collision with root package name */
    private static final String f4690d = "AtomicFile";

    /* renamed from: a  reason: collision with root package name */
    private final File f4691a;

    /* renamed from: b  reason: collision with root package name */
    private final File f4692b;

    /* renamed from: c  reason: collision with root package name */
    private final File f4693c;

    public AtomicFile(@NonNull File file) {
        this.f4691a = file;
        this.f4692b = new File(file.getPath() + ".new");
        this.f4693c = new File(file.getPath() + ".bak");
    }

    private static void a(@NonNull File file, @NonNull File file2) {
        if (file2.isDirectory() && !file2.delete()) {
            StringBuilder sb = new StringBuilder();
            sb.append("Failed to delete file which is a directory ");
            sb.append(file2);
        }
        if (file.renameTo(file2)) {
            return;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Failed to rename ");
        sb2.append(file);
        sb2.append(" to ");
        sb2.append(file2);
    }

    private static boolean b(@NonNull FileOutputStream fileOutputStream) {
        try {
            fileOutputStream.getFD().sync();
            return true;
        } catch (IOException unused) {
            return false;
        }
    }

    public void delete() {
        this.f4691a.delete();
        this.f4692b.delete();
        this.f4693c.delete();
    }

    public void failWrite(@Nullable FileOutputStream fileOutputStream) {
        if (fileOutputStream == null) {
            return;
        }
        b(fileOutputStream);
        try {
            fileOutputStream.close();
        } catch (IOException unused) {
        }
        if (this.f4692b.delete()) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Failed to delete new file ");
        sb.append(this.f4692b);
    }

    public void finishWrite(@Nullable FileOutputStream fileOutputStream) {
        if (fileOutputStream == null) {
            return;
        }
        b(fileOutputStream);
        try {
            fileOutputStream.close();
        } catch (IOException unused) {
        }
        a(this.f4692b, this.f4691a);
    }

    @NonNull
    public File getBaseFile() {
        return this.f4691a;
    }

    @NonNull
    public FileInputStream openRead() throws FileNotFoundException {
        if (this.f4693c.exists()) {
            a(this.f4693c, this.f4691a);
        }
        if (this.f4692b.exists() && this.f4691a.exists() && !this.f4692b.delete()) {
            StringBuilder sb = new StringBuilder();
            sb.append("Failed to delete outdated new file ");
            sb.append(this.f4692b);
        }
        return new FileInputStream(this.f4691a);
    }

    @NonNull
    public byte[] readFully() throws IOException {
        FileInputStream openRead = openRead();
        try {
            byte[] bArr = new byte[openRead.available()];
            int i2 = 0;
            while (true) {
                int read = openRead.read(bArr, i2, bArr.length - i2);
                if (read <= 0) {
                    return bArr;
                }
                i2 += read;
                int available = openRead.available();
                if (available > bArr.length - i2) {
                    byte[] bArr2 = new byte[available + i2];
                    System.arraycopy(bArr, 0, bArr2, 0, i2);
                    bArr = bArr2;
                }
            }
        } finally {
            openRead.close();
        }
    }

    @NonNull
    public FileOutputStream startWrite() throws IOException {
        if (this.f4693c.exists()) {
            a(this.f4693c, this.f4691a);
        }
        try {
            return new FileOutputStream(this.f4692b);
        } catch (FileNotFoundException unused) {
            if (this.f4692b.getParentFile().mkdirs()) {
                try {
                    return new FileOutputStream(this.f4692b);
                } catch (FileNotFoundException e4) {
                    throw new IOException("Failed to create new file " + this.f4692b, e4);
                }
            }
            throw new IOException("Failed to create directory for " + this.f4692b);
        }
    }
}
