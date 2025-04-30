package androidx.documentfile.provider;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.provider.DocumentsContract;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import java.util.ArrayList;
@RequiresApi(21)
/* loaded from: classes.dex */
class TreeDocumentFile extends DocumentFile {

    /* renamed from: c  reason: collision with root package name */
    private Context f5369c;

    /* renamed from: d  reason: collision with root package name */
    private Uri f5370d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public TreeDocumentFile(@Nullable DocumentFile documentFile, Context context, Uri uri) {
        super(documentFile);
        this.f5369c = context;
        this.f5370d = uri;
    }

    private static void a(@Nullable AutoCloseable autoCloseable) {
        if (autoCloseable != null) {
            try {
                autoCloseable.close();
            } catch (RuntimeException e4) {
                throw e4;
            } catch (Exception unused) {
            }
        }
    }

    @Nullable
    private static Uri b(Context context, Uri uri, String str, String str2) {
        try {
            return DocumentsContract.createDocument(context.getContentResolver(), uri, str, str2);
        } catch (Exception unused) {
            return null;
        }
    }

    @Override // androidx.documentfile.provider.DocumentFile
    public boolean canRead() {
        return DocumentsContractApi19.canRead(this.f5369c, this.f5370d);
    }

    @Override // androidx.documentfile.provider.DocumentFile
    public boolean canWrite() {
        return DocumentsContractApi19.canWrite(this.f5369c, this.f5370d);
    }

    @Override // androidx.documentfile.provider.DocumentFile
    @Nullable
    public DocumentFile createDirectory(String str) {
        Uri b4 = b(this.f5369c, this.f5370d, "vnd.android.document/directory", str);
        if (b4 != null) {
            return new TreeDocumentFile(this, this.f5369c, b4);
        }
        return null;
    }

    @Override // androidx.documentfile.provider.DocumentFile
    @Nullable
    public DocumentFile createFile(String str, String str2) {
        Uri b4 = b(this.f5369c, this.f5370d, str, str2);
        if (b4 != null) {
            return new TreeDocumentFile(this, this.f5369c, b4);
        }
        return null;
    }

    @Override // androidx.documentfile.provider.DocumentFile
    public boolean delete() {
        try {
            return DocumentsContract.deleteDocument(this.f5369c.getContentResolver(), this.f5370d);
        } catch (Exception unused) {
            return false;
        }
    }

    @Override // androidx.documentfile.provider.DocumentFile
    public boolean exists() {
        return DocumentsContractApi19.exists(this.f5369c, this.f5370d);
    }

    @Override // androidx.documentfile.provider.DocumentFile
    @Nullable
    public String getName() {
        return DocumentsContractApi19.getName(this.f5369c, this.f5370d);
    }

    @Override // androidx.documentfile.provider.DocumentFile
    @Nullable
    public String getType() {
        return DocumentsContractApi19.getType(this.f5369c, this.f5370d);
    }

    @Override // androidx.documentfile.provider.DocumentFile
    public Uri getUri() {
        return this.f5370d;
    }

    @Override // androidx.documentfile.provider.DocumentFile
    public boolean isDirectory() {
        return DocumentsContractApi19.isDirectory(this.f5369c, this.f5370d);
    }

    @Override // androidx.documentfile.provider.DocumentFile
    public boolean isFile() {
        return DocumentsContractApi19.isFile(this.f5369c, this.f5370d);
    }

    @Override // androidx.documentfile.provider.DocumentFile
    public boolean isVirtual() {
        return DocumentsContractApi19.isVirtual(this.f5369c, this.f5370d);
    }

    @Override // androidx.documentfile.provider.DocumentFile
    public long lastModified() {
        return DocumentsContractApi19.lastModified(this.f5369c, this.f5370d);
    }

    @Override // androidx.documentfile.provider.DocumentFile
    public long length() {
        return DocumentsContractApi19.length(this.f5369c, this.f5370d);
    }

    @Override // androidx.documentfile.provider.DocumentFile
    public DocumentFile[] listFiles() {
        ContentResolver contentResolver = this.f5369c.getContentResolver();
        Uri uri = this.f5370d;
        Uri buildChildDocumentsUriUsingTree = DocumentsContract.buildChildDocumentsUriUsingTree(uri, DocumentsContract.getDocumentId(uri));
        ArrayList arrayList = new ArrayList();
        Cursor cursor = null;
        try {
            try {
                cursor = contentResolver.query(buildChildDocumentsUriUsingTree, new String[]{"document_id"}, null, null, null);
                while (cursor.moveToNext()) {
                    arrayList.add(DocumentsContract.buildDocumentUriUsingTree(this.f5370d, cursor.getString(0)));
                }
            } catch (Exception e4) {
                StringBuilder sb = new StringBuilder();
                sb.append("Failed query: ");
                sb.append(e4);
            }
            Uri[] uriArr = (Uri[]) arrayList.toArray(new Uri[arrayList.size()]);
            DocumentFile[] documentFileArr = new DocumentFile[uriArr.length];
            for (int i2 = 0; i2 < uriArr.length; i2++) {
                documentFileArr[i2] = new TreeDocumentFile(this, this.f5369c, uriArr[i2]);
            }
            return documentFileArr;
        } finally {
            a(cursor);
        }
    }

    @Override // androidx.documentfile.provider.DocumentFile
    public boolean renameTo(String str) {
        try {
            Uri renameDocument = DocumentsContract.renameDocument(this.f5369c.getContentResolver(), this.f5370d, str);
            if (renameDocument != null) {
                this.f5370d = renameDocument;
                return true;
            }
        } catch (Exception unused) {
        }
        return false;
    }
}
