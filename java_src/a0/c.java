package a0;

import com.facebook.common.internal.e;
import com.facebook.common.internal.h;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import javax.annotation.Nullable;
/* compiled from: FileBinaryResource.java */
/* loaded from: classes.dex */
public class c implements a {

    /* renamed from: a  reason: collision with root package name */
    private final File f22a;

    private c(File file) {
        this.f22a = (File) h.i(file);
    }

    @Nullable
    public static c b(File file) {
        if (file != null) {
            return new c(file);
        }
        return null;
    }

    @Override // a0.a
    public InputStream a() throws IOException {
        return new FileInputStream(this.f22a);
    }

    public File c() {
        return this.f22a;
    }

    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof c)) {
            return false;
        }
        return this.f22a.equals(((c) obj).f22a);
    }

    public int hashCode() {
        return this.f22a.hashCode();
    }

    @Override // a0.a
    public byte[] read() throws IOException {
        return e.b(this.f22a);
    }

    @Override // a0.a
    public long size() {
        return this.f22a.length();
    }
}
