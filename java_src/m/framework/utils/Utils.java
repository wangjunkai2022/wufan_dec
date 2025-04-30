package m.framework.utils;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.text.TextUtils;
import io.netty.handler.codec.http.multipart.HttpPostBodyUtil;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.net.URLConnection;
import java.util.Locale;
import net.lingala.zip4j.util.e;
/* loaded from: classes5.dex */
public class Utils {
    private static float density;

    public static int dipToPx(Context context, int i2) {
        if (density <= 0.0f) {
            density = context.getResources().getDisplayMetrics().density;
        }
        return (int) ((i2 * density) + 0.5f);
    }

    public static Bitmap getBitmap(String str) throws Throwable {
        return getBitmap(str, 1);
    }

    public static String getCachePath(Context context, String str) {
        DeviceHelper deviceHelper;
        String str2 = String.valueOf(context.getFilesDir().getAbsolutePath()) + "/mFramework/cache/";
        if (new DeviceHelper(context).getSdcardState()) {
            str2 = String.valueOf(deviceHelper.getSdcardPath()) + "/mFramework/" + deviceHelper.getPackageName() + "/cache/";
        }
        if (!TextUtils.isEmpty(str)) {
            str2 = String.valueOf(str2) + str + e.F0;
        }
        File file = new File(str2);
        if (!file.exists()) {
            file.mkdir();
        }
        return str2;
    }

    public static String getFileMime(String str) {
        String contentTypeFor = URLConnection.getFileNameMap().getContentTypeFor(str);
        if (contentTypeFor == null || contentTypeFor.length() <= 0) {
            String lowerCase = str.toLowerCase(Locale.getDefault());
            if (lowerCase.endsWith("jpg") || lowerCase.endsWith("jepg")) {
                return "image/jpeg";
            }
            if (lowerCase.endsWith("png")) {
                return "image/png";
            }
            if (lowerCase.endsWith("gif")) {
                return "image/gif";
            }
            try {
                FileInputStream fileInputStream = new FileInputStream(str);
                contentTypeFor = URLConnection.guessContentTypeFromStream(fileInputStream);
                fileInputStream.close();
            } catch (Throwable th) {
                th.printStackTrace();
            }
            return (contentTypeFor == null || contentTypeFor.length() <= 0) ? HttpPostBodyUtil.DEFAULT_BINARY_CONTENT_TYPE : contentTypeFor;
        }
        return contentTypeFor;
    }

    public static int getScreenHeight(Context context) {
        return context.getResources().getDisplayMetrics().heightPixels;
    }

    public static int getScreenWidth(Context context) {
        return context.getResources().getDisplayMetrics().widthPixels;
    }

    public static boolean isNullOrEmpty(String str) {
        return str == null || str.trim().length() <= 0 || "null".equals(str.trim().toLowerCase(Locale.getDefault()));
    }

    public static Bitmap getBitmap(InputStream inputStream) {
        return getBitmap(inputStream, 1);
    }

    public static Bitmap getBitmap(String str, int i2) throws Throwable {
        return getBitmap(new File(str), i2);
    }

    public static Bitmap getBitmap(File file, int i2) throws Throwable {
        FileInputStream fileInputStream = new FileInputStream(file);
        Bitmap bitmap = getBitmap(fileInputStream, i2);
        fileInputStream.close();
        return bitmap;
    }

    private static Bitmap getBitmap(InputStream inputStream, int i2) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inPreferredConfig = Bitmap.Config.RGB_565;
        options.inPurgeable = true;
        options.inInputShareable = true;
        options.inSampleSize = i2;
        return BitmapFactory.decodeStream(inputStream, null, options);
    }
}
