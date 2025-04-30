package androidx.core.graphics;

import android.content.Context;
import android.content.res.Resources;
import android.net.Uri;
import android.os.CancellationSignal;
import android.os.ParcelFileDescriptor;
import android.os.Process;
import android.os.StrictMode;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.core.provider.FontsContractCompat;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import net.lingala.zip4j.util.e;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public class TypefaceCompatUtil {

    /* renamed from: a  reason: collision with root package name */
    private static final String f4306a = "TypefaceCompatUtil";

    /* renamed from: b  reason: collision with root package name */
    private static final String f4307b = ".font";

    private TypefaceCompatUtil() {
    }

    @Nullable
    @RequiresApi(19)
    private static ByteBuffer a(File file) {
        try {
            FileInputStream fileInputStream = new FileInputStream(file);
            FileChannel channel = fileInputStream.getChannel();
            MappedByteBuffer map = channel.map(FileChannel.MapMode.READ_ONLY, 0L, channel.size());
            fileInputStream.close();
            return map;
        } catch (IOException unused) {
            return null;
        }
    }

    public static void closeQuietly(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException unused) {
            }
        }
    }

    @Nullable
    @RequiresApi(19)
    public static ByteBuffer copyToDirectBuffer(Context context, Resources resources, int i2) {
        File tempFile = getTempFile(context);
        if (tempFile == null) {
            return null;
        }
        try {
            if (copyToFile(tempFile, resources, i2)) {
                return a(tempFile);
            }
            return null;
        } finally {
            tempFile.delete();
        }
    }

    public static boolean copyToFile(File file, InputStream inputStream) {
        FileOutputStream fileOutputStream;
        StrictMode.ThreadPolicy allowThreadDiskWrites = StrictMode.allowThreadDiskWrites();
        FileOutputStream fileOutputStream2 = null;
        try {
            try {
                fileOutputStream = new FileOutputStream(file, false);
            } catch (IOException e4) {
                e = e4;
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            byte[] bArr = new byte[1024];
            while (true) {
                int read = inputStream.read(bArr);
                if (read != -1) {
                    fileOutputStream.write(bArr, 0, read);
                } else {
                    closeQuietly(fileOutputStream);
                    StrictMode.setThreadPolicy(allowThreadDiskWrites);
                    return true;
                }
            }
        } catch (IOException e5) {
            e = e5;
            fileOutputStream2 = fileOutputStream;
            StringBuilder sb = new StringBuilder();
            sb.append("Error copying resource contents to temp file: ");
            sb.append(e.getMessage());
            closeQuietly(fileOutputStream2);
            StrictMode.setThreadPolicy(allowThreadDiskWrites);
            return false;
        } catch (Throwable th2) {
            th = th2;
            fileOutputStream2 = fileOutputStream;
            closeQuietly(fileOutputStream2);
            StrictMode.setThreadPolicy(allowThreadDiskWrites);
            throw th;
        }
    }

    @Nullable
    public static File getTempFile(Context context) {
        File cacheDir = context.getCacheDir();
        if (cacheDir == null) {
            return null;
        }
        String str = f4307b + Process.myPid() + "-" + Process.myTid() + "-";
        for (int i2 = 0; i2 < 100; i2++) {
            File file = new File(cacheDir, str + i2);
            if (file.createNewFile()) {
                return file;
            }
        }
        return null;
    }

    @Nullable
    @RequiresApi(19)
    public static ByteBuffer mmap(Context context, CancellationSignal cancellationSignal, Uri uri) {
        try {
            ParcelFileDescriptor openFileDescriptor = context.getContentResolver().openFileDescriptor(uri, e.f73017f0, cancellationSignal);
            if (openFileDescriptor == null) {
                if (openFileDescriptor != null) {
                    openFileDescriptor.close();
                }
                return null;
            }
            FileInputStream fileInputStream = new FileInputStream(openFileDescriptor.getFileDescriptor());
            try {
                FileChannel channel = fileInputStream.getChannel();
                MappedByteBuffer map = channel.map(FileChannel.MapMode.READ_ONLY, 0L, channel.size());
                fileInputStream.close();
                openFileDescriptor.close();
                return map;
            } catch (Throwable th) {
                try {
                    fileInputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } catch (IOException unused) {
            return null;
        }
    }

    @NonNull
    @RequiresApi(19)
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public static Map<Uri, ByteBuffer> readFontInfoIntoByteBuffer(@NonNull Context context, @NonNull FontsContractCompat.FontInfo[] fontInfoArr, @Nullable CancellationSignal cancellationSignal) {
        HashMap hashMap = new HashMap();
        for (FontsContractCompat.FontInfo fontInfo : fontInfoArr) {
            if (fontInfo.getResultCode() == 0) {
                Uri uri = fontInfo.getUri();
                if (!hashMap.containsKey(uri)) {
                    hashMap.put(uri, mmap(context, cancellationSignal, uri));
                }
            }
        }
        return Collections.unmodifiableMap(hashMap);
    }

    public static boolean copyToFile(File file, Resources resources, int i2) {
        InputStream inputStream;
        try {
            inputStream = resources.openRawResource(i2);
            try {
                boolean copyToFile = copyToFile(file, inputStream);
                closeQuietly(inputStream);
                return copyToFile;
            } catch (Throwable th) {
                th = th;
                closeQuietly(inputStream);
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            inputStream = null;
        }
    }
}
