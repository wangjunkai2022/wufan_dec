package cn.sharesdk.framework.utils;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.content.pm.ProviderInfo;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.os.ParcelFileDescriptor;
import android.text.TextUtils;
import android.webkit.MimeTypeMap;
import com.join.mgps.Util.g0;
import io.netty.handler.codec.http.multipart.HttpPostBodyUtil;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2.dex */
public class ShareSDKFileProvider extends ContentProvider {

    /* renamed from: a  reason: collision with root package name */
    private static final String[] f8903a = {"_display_name", "_size"};

    /* renamed from: b  reason: collision with root package name */
    private static final File f8904b = new File(net.lingala.zip4j.util.e.F0);

    /* renamed from: c  reason: collision with root package name */
    private static HashMap<String, PathStrategy> f8905c = new HashMap<>();

    /* renamed from: d  reason: collision with root package name */
    private PathStrategy f8906d;

    /* renamed from: e  reason: collision with root package name */
    private ProviderInfo f8907e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public interface PathStrategy {
        File getFileForUri(Uri uri);

        Uri getUriForFile(File file);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class a implements PathStrategy {

        /* renamed from: a  reason: collision with root package name */
        private final String f8908a;

        /* renamed from: b  reason: collision with root package name */
        private final HashMap<String, File> f8909b = new HashMap<>();

        public a(String str) {
            this.f8908a = str;
        }

        public void a(String str, File file) {
            File absoluteFile;
            if (!TextUtils.isEmpty(str)) {
                try {
                    absoluteFile = file.getCanonicalFile();
                } catch (Throwable unused) {
                    absoluteFile = file.getAbsoluteFile();
                }
                this.f8909b.put(str, absoluteFile);
                return;
            }
            throw new IllegalArgumentException("Name must not be empty");
        }

        @Override // cn.sharesdk.framework.utils.ShareSDKFileProvider.PathStrategy
        public File getFileForUri(Uri uri) {
            File absoluteFile;
            String encodedPath = uri.getEncodedPath();
            int indexOf = encodedPath.indexOf(47, 1);
            String decode = Uri.decode(encodedPath.substring(1, indexOf));
            String decode2 = Uri.decode(encodedPath.substring(indexOf + 1));
            File file = this.f8909b.get(decode);
            if (file != null) {
                File file2 = new File(file, decode2);
                try {
                    absoluteFile = file2.getCanonicalFile();
                } catch (Throwable unused) {
                    absoluteFile = file2.getAbsoluteFile();
                }
                if (absoluteFile.getPath().startsWith(file.getPath())) {
                    return absoluteFile;
                }
                throw new SecurityException("Resolved path jumped beyond configured root");
            }
            throw new IllegalArgumentException("Unable to find configured root for " + uri);
        }

        @Override // cn.sharesdk.framework.utils.ShareSDKFileProvider.PathStrategy
        public Uri getUriForFile(File file) {
            String substring;
            try {
                String canonicalPath = file.getCanonicalPath();
                Map.Entry<String, File> entry = null;
                for (Map.Entry<String, File> entry2 : this.f8909b.entrySet()) {
                    String path = entry2.getValue().getPath();
                    if (canonicalPath.startsWith(path) && (entry == null || path.length() > entry.getValue().getPath().length())) {
                        entry = entry2;
                    }
                }
                if (entry != null) {
                    String path2 = entry.getValue().getPath();
                    if (path2.endsWith(net.lingala.zip4j.util.e.F0)) {
                        substring = canonicalPath.substring(path2.length());
                    } else {
                        substring = canonicalPath.substring(path2.length() + 1);
                    }
                    return new Uri.Builder().scheme("content").authority(this.f8908a).encodedPath(Uri.encode(entry.getKey()) + '/' + Uri.encode(substring, net.lingala.zip4j.util.e.F0)).build();
                }
                throw new IllegalArgumentException("Failed to find configured root that contains " + canonicalPath);
            } catch (IOException unused) {
                throw new IllegalArgumentException("Failed to resolve canonical path for " + file);
            }
        }
    }

    public static Uri a(Context context, String str, File file) {
        try {
            return a(context, str).getUriForFile(file);
        } catch (Throwable th) {
            SSDKLog b4 = SSDKLog.b();
            b4.a("getUriForFile fail" + th);
            return null;
        }
    }

    private static PathStrategy b(Context context, String str) {
        a aVar = new a(str);
        File filesDir = context.getFilesDir();
        if (filesDir != null) {
            aVar.a("imageNameFilesDir", a(filesDir, "Mob/cache/images"));
            aVar.a("videoNameFilesDir", a(filesDir, "Mob/cache/videos"));
        }
        String str2 = "Mob/" + context.getPackageName() + "/cache/images";
        if (context.getCacheDir() != null) {
            aVar.a("cachename", a(filesDir, g0.f27568a));
            aVar.a("imageNameExternal", a(filesDir, str2));
            aVar.a("imageNameExternal", a(filesDir, "Mob/cache/images"));
        }
        String str3 = "Mob/" + context.getPackageName() + "/cache/images";
        String str4 = "Mob/" + context.getPackageName() + "/cache/videos";
        File[] a4 = a(context);
        File file = a4.length > 0 ? a4[0] : null;
        if (file != null) {
            aVar.a("imageNameExternal", a(file, str3));
            aVar.a("videoNameExternal", a(file, str4));
            aVar.a("mihayou", a(file, g0.f27568a));
            aVar.a("more", a(file, "./."));
        }
        String str5 = "Mob/" + context.getPackageName() + "/cache/images";
        String str6 = "Mob/" + context.getPackageName() + "/cache/videos";
        File[] b4 = b(context);
        File file2 = b4.length > 0 ? b4[0] : null;
        if (file2 != null) {
            aVar.a("imageNameEtc", a(file2, str5));
            aVar.a("videoNameEtc", a(file2, str6));
        }
        if (f8904b != null) {
            aVar.a("imageNameRoot", a((File) null, "Mob/cache/images"));
            aVar.a("videoNameRoot", a((File) null, "Mob/cache/videos"));
        }
        File externalStorageDirectory = Environment.getExternalStorageDirectory();
        if (externalStorageDirectory != null) {
            aVar.a("externalStDir", a(externalStorageDirectory, g0.f27568a));
        }
        return aVar;
    }

    @Override // android.content.ContentProvider
    public void attachInfo(Context context, ProviderInfo providerInfo) {
        super.attachInfo(context, providerInfo);
        this.f8907e = providerInfo;
    }

    @Override // android.content.ContentProvider
    public int delete(Uri uri, String str, String[] strArr) {
        a("del");
        PathStrategy pathStrategy = this.f8906d;
        if (pathStrategy == null) {
            return 0;
        }
        return pathStrategy.getFileForUri(uri).delete() ? 1 : 0;
    }

    @Override // android.content.ContentProvider
    public String getType(Uri uri) {
        a("g-t");
        PathStrategy pathStrategy = this.f8906d;
        if (pathStrategy == null) {
            return "";
        }
        File fileForUri = pathStrategy.getFileForUri(uri);
        int lastIndexOf = fileForUri.getName().lastIndexOf(46);
        if (lastIndexOf >= 0) {
            String mimeTypeFromExtension = MimeTypeMap.getSingleton().getMimeTypeFromExtension(fileForUri.getName().substring(lastIndexOf + 1));
            return mimeTypeFromExtension != null ? mimeTypeFromExtension : HttpPostBodyUtil.DEFAULT_BINARY_CONTENT_TYPE;
        }
        return HttpPostBodyUtil.DEFAULT_BINARY_CONTENT_TYPE;
    }

    @Override // android.content.ContentProvider
    public Uri insert(Uri uri, ContentValues contentValues) {
        throw new UnsupportedOperationException("No external inserts");
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        return true;
    }

    @Override // android.content.ContentProvider
    public ParcelFileDescriptor openFile(Uri uri, String str) throws FileNotFoundException {
        a("o-f");
        PathStrategy pathStrategy = this.f8906d;
        if (pathStrategy == null) {
            return null;
        }
        return ParcelFileDescriptor.open(pathStrategy.getFileForUri(uri), b(str));
    }

    @Override // android.content.ContentProvider
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        a("q");
        PathStrategy pathStrategy = this.f8906d;
        if (pathStrategy == null) {
            return null;
        }
        File fileForUri = pathStrategy.getFileForUri(uri);
        if (strArr == null) {
            strArr = f8903a;
        }
        String[] strArr3 = new String[strArr.length];
        Object[] objArr = new Object[strArr.length];
        int i2 = 0;
        for (String str3 : strArr) {
            if ("_display_name".equals(str3)) {
                strArr3[i2] = "_display_name";
                objArr[i2] = fileForUri.getName();
            } else if ("_size".equals(str3)) {
                strArr3[i2] = "_size";
                objArr[i2] = Long.valueOf(fileForUri.length());
            }
            i2++;
        }
        String[] a4 = a(strArr3, i2);
        Object[] a5 = a(objArr, i2);
        MatrixCursor matrixCursor = new MatrixCursor(a4, 1);
        matrixCursor.addRow(a5);
        return matrixCursor;
    }

    @Override // android.content.ContentProvider
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        throw new UnsupportedOperationException("No external updates");
    }

    private static PathStrategy a(Context context, String str) {
        PathStrategy pathStrategy;
        synchronized (f8905c) {
            pathStrategy = f8905c.get(str);
            if (pathStrategy == null) {
                pathStrategy = b(context, str);
                f8905c.put(str, pathStrategy);
            }
        }
        return pathStrategy;
    }

    private void a(String str) {
        ProviderInfo providerInfo;
        if (this.f8906d == null && (providerInfo = this.f8907e) != null) {
            if (!providerInfo.exported) {
                if (providerInfo.grantUriPermissions) {
                    try {
                        this.f8906d = a(getContext(), this.f8907e.authority);
                        return;
                    } catch (Throwable unused) {
                        return;
                    }
                }
                throw new SecurityException("Provider must grant uri permissions");
            }
            throw new SecurityException("Provider must not be exported");
        }
    }

    public static File[] a(Context context) {
        return Build.VERSION.SDK_INT >= 19 ? context.getExternalFilesDirs(null) : new File[]{context.getExternalFilesDir(null)};
    }

    private static File a(File file, String... strArr) {
        for (String str : strArr) {
            if (str != null) {
                file = new File(file, str);
            }
        }
        return file;
    }

    private static String[] a(String[] strArr, int i2) {
        String[] strArr2 = new String[i2];
        System.arraycopy(strArr, 0, strArr2, 0, i2);
        return strArr2;
    }

    private static Object[] a(Object[] objArr, int i2) {
        Object[] objArr2 = new Object[i2];
        System.arraycopy(objArr, 0, objArr2, 0, i2);
        return objArr2;
    }

    public static File[] b(Context context) {
        return Build.VERSION.SDK_INT >= 19 ? context.getExternalCacheDirs() : new File[]{context.getExternalCacheDir()};
    }

    private static int b(String str) {
        if (net.lingala.zip4j.util.e.f73017f0.equals(str)) {
            return 268435456;
        }
        if ("w".equals(str) || "wt".equals(str)) {
            return 738197504;
        }
        if ("wa".equals(str)) {
            return 704643072;
        }
        if (net.lingala.zip4j.util.e.f73015e0.equals(str)) {
            return 939524096;
        }
        if ("rwt".equals(str)) {
            return 1006632960;
        }
        throw new IllegalArgumentException("Invalid mode: " + str);
    }
}
