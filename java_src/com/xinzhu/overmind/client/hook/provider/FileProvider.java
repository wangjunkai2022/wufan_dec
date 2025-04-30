package com.xinzhu.overmind.client.hook.provider;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.content.pm.ProviderInfo;
import android.content.res.XmlResourceParser;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.os.ParcelFileDescriptor;
import android.text.TextUtils;
import android.webkit.MimeTypeMap;
import androidx.core.content.ContextCompat;
import io.netty.handler.codec.http.multipart.HttpPostBodyUtil;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import net.lingala.zip4j.util.e;
import org.xmlpull.v1.XmlPullParserException;
/* loaded from: classes3.dex */
public class FileProvider extends ContentProvider {

    /* renamed from: c  reason: collision with root package name */
    private static final String f64131c = "android.support.FILE_PROVIDER_PATHS";

    /* renamed from: d  reason: collision with root package name */
    private static final String f64132d = "root-path";

    /* renamed from: e  reason: collision with root package name */
    private static final String f64133e = "files-path";

    /* renamed from: f  reason: collision with root package name */
    private static final String f64134f = "cache-path";

    /* renamed from: g  reason: collision with root package name */
    private static final String f64135g = "external-path";

    /* renamed from: h  reason: collision with root package name */
    private static final String f64136h = "external-files-path";

    /* renamed from: i  reason: collision with root package name */
    private static final String f64137i = "external-cache-path";

    /* renamed from: j  reason: collision with root package name */
    private static final String f64138j = "external-media-path";

    /* renamed from: k  reason: collision with root package name */
    private static final String f64139k = "name";

    /* renamed from: l  reason: collision with root package name */
    private static final String f64140l = "path";

    /* renamed from: a  reason: collision with root package name */
    private a f64143a;

    /* renamed from: b  reason: collision with root package name */
    private static final String[] f64130b = {"_display_name", "_size"};

    /* renamed from: m  reason: collision with root package name */
    private static final File f64141m = new File(e.F0);

    /* renamed from: n  reason: collision with root package name */
    private static HashMap<String, a> f64142n = new HashMap<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public interface a {
        File getFileForUri(Uri uri);

        Uri getUriForFile(File file);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static class b implements a {

        /* renamed from: a  reason: collision with root package name */
        private final String f64144a;

        /* renamed from: b  reason: collision with root package name */
        private final HashMap<String, File> f64145b = new HashMap<>();

        b(String authority) {
            this.f64144a = authority;
        }

        void a(String name, File root) {
            if (!TextUtils.isEmpty(name)) {
                try {
                    this.f64145b.put(name, root.getCanonicalFile());
                    return;
                } catch (IOException e4) {
                    throw new IllegalArgumentException("Failed to resolve canonical path for " + root, e4);
                }
            }
            throw new IllegalArgumentException("Name must not be empty");
        }

        @Override // com.xinzhu.overmind.client.hook.provider.FileProvider.a
        public File getFileForUri(Uri uri) {
            String encodedPath = uri.getEncodedPath();
            int indexOf = encodedPath.indexOf(47, 1);
            String decode = Uri.decode(encodedPath.substring(1, indexOf));
            String decode2 = Uri.decode(encodedPath.substring(indexOf + 1));
            File file = this.f64145b.get(decode);
            if (file != null) {
                File file2 = new File(file, decode2);
                try {
                    File canonicalFile = file2.getCanonicalFile();
                    if (canonicalFile.getPath().startsWith(file.getPath())) {
                        return canonicalFile;
                    }
                    throw new SecurityException("Resolved path jumped beyond configured root");
                } catch (IOException unused) {
                    throw new IllegalArgumentException("Failed to resolve canonical path for " + file2);
                }
            }
            throw new IllegalArgumentException("Unable to find configured root for " + uri);
        }

        @Override // com.xinzhu.overmind.client.hook.provider.FileProvider.a
        public Uri getUriForFile(File file) {
            String substring;
            try {
                String canonicalPath = file.getCanonicalPath();
                Map.Entry<String, File> entry = null;
                for (Map.Entry<String, File> entry2 : this.f64145b.entrySet()) {
                    String path = entry2.getValue().getPath();
                    if (canonicalPath.startsWith(path) && (entry == null || path.length() > entry.getValue().getPath().length())) {
                        entry = entry2;
                    }
                }
                if (entry != null) {
                    String path2 = entry.getValue().getPath();
                    if (path2.endsWith(e.F0)) {
                        substring = canonicalPath.substring(path2.length());
                    } else {
                        substring = canonicalPath.substring(path2.length() + 1);
                    }
                    return new Uri.Builder().scheme("content").authority(this.f64144a).encodedPath(Uri.encode(entry.getKey()) + '/' + Uri.encode(substring, e.F0)).build();
                }
                throw new IllegalArgumentException("Failed to find configured root that contains " + canonicalPath);
            } catch (IOException unused) {
                throw new IllegalArgumentException("Failed to resolve canonical path for " + file);
            }
        }
    }

    private static File a(File base, String... segments) {
        for (String str : segments) {
            if (str != null) {
                base = new File(base, str);
            }
        }
        return base;
    }

    private static Object[] b(Object[] original, int newLength) {
        Object[] objArr = new Object[newLength];
        System.arraycopy(original, 0, objArr, 0, newLength);
        return objArr;
    }

    private static String[] c(String[] original, int newLength) {
        String[] strArr = new String[newLength];
        System.arraycopy(original, 0, strArr, 0, newLength);
        return strArr;
    }

    public static File d(Context context, String authority, Uri uri) {
        return e(context, authority).getFileForUri(uri);
    }

    private static a e(Context context, String authority) {
        a aVar;
        synchronized (f64142n) {
            aVar = f64142n.get(authority);
            if (aVar == null) {
                try {
                    aVar = h(context, authority);
                    f64142n.put(authority, aVar);
                } catch (IOException e4) {
                    throw new IllegalArgumentException("Failed to parse android.support.FILE_PROVIDER_PATHS meta-data", e4);
                } catch (XmlPullParserException e5) {
                    throw new IllegalArgumentException("Failed to parse android.support.FILE_PROVIDER_PATHS meta-data", e5);
                }
            }
        }
        return aVar;
    }

    public static Uri f(Context context, String authority, File file) {
        return e(context, authority).getUriForFile(file);
    }

    private static int g(String mode) {
        if (e.f73017f0.equals(mode)) {
            return 268435456;
        }
        if ("w".equals(mode) || "wt".equals(mode)) {
            return 738197504;
        }
        if ("wa".equals(mode)) {
            return 704643072;
        }
        if (e.f73015e0.equals(mode)) {
            return 939524096;
        }
        if ("rwt".equals(mode)) {
            return 1006632960;
        }
        throw new IllegalArgumentException("Invalid mode: " + mode);
    }

    private static a h(Context context, String authority) throws IOException, XmlPullParserException {
        b bVar = new b(authority);
        ProviderInfo resolveContentProvider = context.getPackageManager().resolveContentProvider(authority, 128);
        if (resolveContentProvider != null) {
            XmlResourceParser loadXmlMetaData = resolveContentProvider.loadXmlMetaData(context.getPackageManager(), f64131c);
            if (loadXmlMetaData == null) {
                throw new IllegalArgumentException("Missing android.support.FILE_PROVIDER_PATHS meta-data");
            }
            while (true) {
                int next = loadXmlMetaData.next();
                if (next == 1) {
                    return bVar;
                }
                if (next == 2) {
                    String name = loadXmlMetaData.getName();
                    File file = null;
                    String attributeValue = loadXmlMetaData.getAttributeValue(null, "name");
                    String attributeValue2 = loadXmlMetaData.getAttributeValue(null, f64140l);
                    if (f64132d.equals(name)) {
                        file = f64141m;
                    } else if (f64133e.equals(name)) {
                        file = context.getFilesDir();
                    } else if (f64134f.equals(name)) {
                        file = context.getCacheDir();
                    } else if (f64135g.equals(name)) {
                        file = Environment.getExternalStorageDirectory();
                    } else if (f64136h.equals(name)) {
                        File[] externalFilesDirs = ContextCompat.getExternalFilesDirs(context, null);
                        if (externalFilesDirs.length > 0) {
                            file = externalFilesDirs[0];
                        }
                    } else if (f64137i.equals(name)) {
                        File[] externalCacheDirs = ContextCompat.getExternalCacheDirs(context);
                        if (externalCacheDirs.length > 0) {
                            file = externalCacheDirs[0];
                        }
                    } else if (Build.VERSION.SDK_INT >= 21 && f64138j.equals(name)) {
                        File[] externalMediaDirs = context.getExternalMediaDirs();
                        if (externalMediaDirs.length > 0) {
                            file = externalMediaDirs[0];
                        }
                    }
                    if (file != null) {
                        bVar.a(attributeValue, a(file, attributeValue2));
                    }
                }
            }
        } else {
            throw new IllegalArgumentException("Couldn't find meta-data for provider with authority " + authority);
        }
    }

    @Override // android.content.ContentProvider
    public void attachInfo(Context context, ProviderInfo info) {
        super.attachInfo(context, info);
        if (!info.exported) {
            if (info.grantUriPermissions) {
                this.f64143a = e(context, info.authority);
                return;
            }
            throw new SecurityException("Provider must grant uri permissions");
        }
        throw new SecurityException("Provider must not be exported");
    }

    @Override // android.content.ContentProvider
    public int delete(Uri uri, String selection, String[] selectionArgs) {
        return this.f64143a.getFileForUri(uri).delete() ? 1 : 0;
    }

    @Override // android.content.ContentProvider
    public String getType(Uri uri) {
        File fileForUri = this.f64143a.getFileForUri(uri);
        int lastIndexOf = fileForUri.getName().lastIndexOf(46);
        if (lastIndexOf >= 0) {
            String mimeTypeFromExtension = MimeTypeMap.getSingleton().getMimeTypeFromExtension(fileForUri.getName().substring(lastIndexOf + 1));
            return mimeTypeFromExtension != null ? mimeTypeFromExtension : HttpPostBodyUtil.DEFAULT_BINARY_CONTENT_TYPE;
        }
        return HttpPostBodyUtil.DEFAULT_BINARY_CONTENT_TYPE;
    }

    @Override // android.content.ContentProvider
    public Uri insert(Uri uri, ContentValues values) {
        throw new UnsupportedOperationException("No external inserts");
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        return true;
    }

    @Override // android.content.ContentProvider
    public ParcelFileDescriptor openFile(Uri uri, String mode) throws FileNotFoundException {
        return ParcelFileDescriptor.open(this.f64143a.getFileForUri(uri), g(mode));
    }

    @Override // android.content.ContentProvider
    public Cursor query(Uri uri, String[] projection, String selection, String[] selectionArgs, String sortOrder) {
        int i2;
        File fileForUri = this.f64143a.getFileForUri(uri);
        if (projection == null) {
            projection = f64130b;
        }
        String[] strArr = new String[projection.length];
        Object[] objArr = new Object[projection.length];
        int i4 = 0;
        for (String str : projection) {
            if ("_display_name".equals(str)) {
                strArr[i4] = "_display_name";
                i2 = i4 + 1;
                objArr[i4] = fileForUri.getName();
            } else if ("_size".equals(str)) {
                strArr[i4] = "_size";
                i2 = i4 + 1;
                objArr[i4] = Long.valueOf(fileForUri.length());
            }
            i4 = i2;
        }
        String[] c4 = c(strArr, i4);
        Object[] b4 = b(objArr, i4);
        MatrixCursor matrixCursor = new MatrixCursor(c4, 1);
        matrixCursor.addRow(b4);
        return matrixCursor;
    }

    @Override // android.content.ContentProvider
    public int update(Uri uri, ContentValues values, String selection, String[] selectionArgs) {
        throw new UnsupportedOperationException("No external updates");
    }
}
