package androidx.documentfile.provider;

import android.net.Uri;
import android.webkit.MimeTypeMap;
import androidx.annotation.Nullable;
import com.join.mgps.Util.g0;
import io.netty.handler.codec.http.multipart.HttpPostBodyUtil;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
/* loaded from: classes.dex */
class RawDocumentFile extends DocumentFile {

    /* renamed from: c  reason: collision with root package name */
    private File f5366c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RawDocumentFile(@Nullable DocumentFile documentFile, File file) {
        super(documentFile);
        this.f5366c = file;
    }

    private static boolean a(File file) {
        File[] listFiles = file.listFiles();
        boolean z3 = true;
        if (listFiles != null) {
            for (File file2 : listFiles) {
                if (file2.isDirectory()) {
                    z3 &= a(file2);
                }
                if (!file2.delete()) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("Failed to delete ");
                    sb.append(file2);
                    z3 = false;
                }
            }
        }
        return z3;
    }

    private static String b(String str) {
        int lastIndexOf = str.lastIndexOf(46);
        if (lastIndexOf >= 0) {
            String mimeTypeFromExtension = MimeTypeMap.getSingleton().getMimeTypeFromExtension(str.substring(lastIndexOf + 1).toLowerCase());
            return mimeTypeFromExtension != null ? mimeTypeFromExtension : HttpPostBodyUtil.DEFAULT_BINARY_CONTENT_TYPE;
        }
        return HttpPostBodyUtil.DEFAULT_BINARY_CONTENT_TYPE;
    }

    @Override // androidx.documentfile.provider.DocumentFile
    public boolean canRead() {
        return this.f5366c.canRead();
    }

    @Override // androidx.documentfile.provider.DocumentFile
    public boolean canWrite() {
        return this.f5366c.canWrite();
    }

    @Override // androidx.documentfile.provider.DocumentFile
    @Nullable
    public DocumentFile createDirectory(String str) {
        File file = new File(this.f5366c, str);
        if (file.isDirectory() || file.mkdir()) {
            return new RawDocumentFile(this, file);
        }
        return null;
    }

    @Override // androidx.documentfile.provider.DocumentFile
    @Nullable
    public DocumentFile createFile(String str, String str2) {
        String extensionFromMimeType = MimeTypeMap.getSingleton().getExtensionFromMimeType(str);
        if (extensionFromMimeType != null) {
            str2 = str2 + g0.f27568a + extensionFromMimeType;
        }
        File file = new File(this.f5366c, str2);
        try {
            file.createNewFile();
            return new RawDocumentFile(this, file);
        } catch (IOException e4) {
            StringBuilder sb = new StringBuilder();
            sb.append("Failed to createFile: ");
            sb.append(e4);
            return null;
        }
    }

    @Override // androidx.documentfile.provider.DocumentFile
    public boolean delete() {
        a(this.f5366c);
        return this.f5366c.delete();
    }

    @Override // androidx.documentfile.provider.DocumentFile
    public boolean exists() {
        return this.f5366c.exists();
    }

    @Override // androidx.documentfile.provider.DocumentFile
    public String getName() {
        return this.f5366c.getName();
    }

    @Override // androidx.documentfile.provider.DocumentFile
    @Nullable
    public String getType() {
        if (this.f5366c.isDirectory()) {
            return null;
        }
        return b(this.f5366c.getName());
    }

    @Override // androidx.documentfile.provider.DocumentFile
    public Uri getUri() {
        return Uri.fromFile(this.f5366c);
    }

    @Override // androidx.documentfile.provider.DocumentFile
    public boolean isDirectory() {
        return this.f5366c.isDirectory();
    }

    @Override // androidx.documentfile.provider.DocumentFile
    public boolean isFile() {
        return this.f5366c.isFile();
    }

    @Override // androidx.documentfile.provider.DocumentFile
    public boolean isVirtual() {
        return false;
    }

    @Override // androidx.documentfile.provider.DocumentFile
    public long lastModified() {
        return this.f5366c.lastModified();
    }

    @Override // androidx.documentfile.provider.DocumentFile
    public long length() {
        return this.f5366c.length();
    }

    @Override // androidx.documentfile.provider.DocumentFile
    public DocumentFile[] listFiles() {
        ArrayList arrayList = new ArrayList();
        File[] listFiles = this.f5366c.listFiles();
        if (listFiles != null) {
            for (File file : listFiles) {
                arrayList.add(new RawDocumentFile(this, file));
            }
        }
        return (DocumentFile[]) arrayList.toArray(new DocumentFile[arrayList.size()]);
    }

    @Override // androidx.documentfile.provider.DocumentFile
    public boolean renameTo(String str) {
        File file = new File(this.f5366c.getParentFile(), str);
        if (this.f5366c.renameTo(file)) {
            this.f5366c = file;
            return true;
        }
        return false;
    }
}
