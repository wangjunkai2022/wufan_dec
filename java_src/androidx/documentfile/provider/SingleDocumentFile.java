package androidx.documentfile.provider;

import android.content.Context;
import android.net.Uri;
import android.provider.DocumentsContract;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
@RequiresApi(19)
/* loaded from: classes.dex */
class SingleDocumentFile extends DocumentFile {

    /* renamed from: c  reason: collision with root package name */
    private Context f5367c;

    /* renamed from: d  reason: collision with root package name */
    private Uri f5368d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public SingleDocumentFile(@Nullable DocumentFile documentFile, Context context, Uri uri) {
        super(documentFile);
        this.f5367c = context;
        this.f5368d = uri;
    }

    @Override // androidx.documentfile.provider.DocumentFile
    public boolean canRead() {
        return DocumentsContractApi19.canRead(this.f5367c, this.f5368d);
    }

    @Override // androidx.documentfile.provider.DocumentFile
    public boolean canWrite() {
        return DocumentsContractApi19.canWrite(this.f5367c, this.f5368d);
    }

    @Override // androidx.documentfile.provider.DocumentFile
    public DocumentFile createDirectory(String str) {
        throw new UnsupportedOperationException();
    }

    @Override // androidx.documentfile.provider.DocumentFile
    public DocumentFile createFile(String str, String str2) {
        throw new UnsupportedOperationException();
    }

    @Override // androidx.documentfile.provider.DocumentFile
    public boolean delete() {
        try {
            return DocumentsContract.deleteDocument(this.f5367c.getContentResolver(), this.f5368d);
        } catch (Exception unused) {
            return false;
        }
    }

    @Override // androidx.documentfile.provider.DocumentFile
    public boolean exists() {
        return DocumentsContractApi19.exists(this.f5367c, this.f5368d);
    }

    @Override // androidx.documentfile.provider.DocumentFile
    @Nullable
    public String getName() {
        return DocumentsContractApi19.getName(this.f5367c, this.f5368d);
    }

    @Override // androidx.documentfile.provider.DocumentFile
    @Nullable
    public String getType() {
        return DocumentsContractApi19.getType(this.f5367c, this.f5368d);
    }

    @Override // androidx.documentfile.provider.DocumentFile
    public Uri getUri() {
        return this.f5368d;
    }

    @Override // androidx.documentfile.provider.DocumentFile
    public boolean isDirectory() {
        return DocumentsContractApi19.isDirectory(this.f5367c, this.f5368d);
    }

    @Override // androidx.documentfile.provider.DocumentFile
    public boolean isFile() {
        return DocumentsContractApi19.isFile(this.f5367c, this.f5368d);
    }

    @Override // androidx.documentfile.provider.DocumentFile
    public boolean isVirtual() {
        return DocumentsContractApi19.isVirtual(this.f5367c, this.f5368d);
    }

    @Override // androidx.documentfile.provider.DocumentFile
    public long lastModified() {
        return DocumentsContractApi19.lastModified(this.f5367c, this.f5368d);
    }

    @Override // androidx.documentfile.provider.DocumentFile
    public long length() {
        return DocumentsContractApi19.length(this.f5367c, this.f5368d);
    }

    @Override // androidx.documentfile.provider.DocumentFile
    public DocumentFile[] listFiles() {
        throw new UnsupportedOperationException();
    }

    @Override // androidx.documentfile.provider.DocumentFile
    public boolean renameTo(String str) {
        throw new UnsupportedOperationException();
    }
}
