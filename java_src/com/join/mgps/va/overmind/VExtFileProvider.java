package com.join.mgps.va.overmind;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import com.join.kotlin.ui.cloudarchive.data.ArchiveData;
import com.join.mgps.Util.s2;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
/* loaded from: classes4.dex */
public class VExtFileProvider extends ContentProvider {
    @Override // android.content.ContentProvider
    public int delete(Uri uri, String str, String[] strArr) {
        return 0;
    }

    @Override // android.content.ContentProvider
    public String getType(Uri uri) {
        return null;
    }

    @Override // android.content.ContentProvider
    public Uri insert(Uri uri, ContentValues contentValues) {
        File file = new File(uri.getPath());
        if (!file.exists()) {
            file.mkdirs();
        }
        StringBuilder sb = new StringBuilder();
        sb.append(getContext().getFilesDir().getParent());
        String str = File.separator;
        sb.append(str);
        sb.append("virtual");
        sb.append(str);
        sb.append("fileproviderDir");
        sb.append(str);
        sb.append("archiveZipDownload.zip");
        File file2 = new File(sb.toString());
        if (file2.exists()) {
            try {
                s2.g(file2, file.getAbsolutePath());
            } catch (IOException e4) {
                e4.printStackTrace();
            }
        }
        return uri;
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        return true;
    }

    @Override // android.content.ContentProvider
    public ParcelFileDescriptor openFile(Uri uri, String str) throws FileNotFoundException {
        if ("copyZip".equals(str)) {
            StringBuilder sb = new StringBuilder();
            sb.append(getContext().getFilesDir().getParent());
            String str2 = File.separator;
            sb.append(str2);
            sb.append("virtual");
            sb.append(str2);
            sb.append("fileproviderDir");
            sb.append(str2);
            sb.append("archiveZipDownload.zip");
            File file = new File(sb.toString());
            if (file.exists()) {
                file.delete();
            }
            if (!file.getParentFile().exists()) {
                file.getParentFile().mkdirs();
            }
            try {
                file.createNewFile();
            } catch (IOException e4) {
                e4.printStackTrace();
            }
            File file2 = new File(uri.getPath());
            if (!file2.exists()) {
                file2.mkdirs();
            }
            return ParcelFileDescriptor.open(file, 805306368);
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(getContext().getFilesDir().getParent());
        String str3 = File.separator;
        sb2.append(str3);
        sb2.append("virtual");
        sb2.append(str3);
        sb2.append("fileproviderDir");
        sb2.append(str3);
        sb2.append("archiveZip.zip");
        File file3 = new File(sb2.toString());
        if (file3.exists()) {
            file3.delete();
        }
        if (!file3.getParentFile().exists()) {
            file3.getParentFile().mkdirs();
        }
        try {
            s2.l(Arrays.asList((File[]) new File(uri.getPath()).listFiles().clone()), file3);
        } catch (IOException e5) {
            e5.printStackTrace();
        }
        return ParcelFileDescriptor.open(file3, 805306368);
    }

    @Override // android.content.ContentProvider
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        MatrixCursor matrixCursor = new MatrixCursor(new String[]{"pathUrL", "time"});
        ArrayList<ArchiveData> f4 = a.f52339b.f(strArr[0], strArr[1], strArr[2], Integer.parseInt(strArr[3]));
        if (f4 != null && f4.size() > 0) {
            Iterator<ArchiveData> it2 = f4.iterator();
            while (it2.hasNext()) {
                ArchiveData next = it2.next();
                matrixCursor.addRow(new String[]{next.getArchiveLocalPath(), String.valueOf(next.getAddTime())});
            }
        }
        return matrixCursor;
    }

    @Override // android.content.ContentProvider
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        return 0;
    }
}
