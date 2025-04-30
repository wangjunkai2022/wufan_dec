package com.mob.tools.utils;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.graphics.Point;
import android.media.MediaScannerConnection;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.provider.MediaStore;
import android.text.TextUtils;
import android.util.Base64;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.j256.ormlite.stmt.query.SimpleComparison;
import com.mob.MobSDK;
import com.mob.commons.o;
import com.mob.commons.r;
import com.mob.tools.MobLog;
import com.mob.tools.log.NLog;
import com.mob.tools.network.KVPair;
import com.mob.tools.proguard.PublicMemberKeeper;
import java.io.BufferedReader;
import java.io.Closeable;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStreamReader;
import java.io.ObjectOutputStream;
import java.io.OutputStreamWriter;
import java.lang.reflect.Method;
import java.net.URL;
import java.net.URLDecoder;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;
import kotlin.text.Typography;
/* loaded from: classes4.dex */
public class ResHelper implements PublicMemberKeeper {

    /* renamed from: a  reason: collision with root package name */
    private static float f53952a;

    /* renamed from: b  reason: collision with root package name */
    private static int f53953b;

    /* renamed from: c  reason: collision with root package name */
    private static Uri f53954c;

    public static void clearCache(Context context) throws Throwable {
        deleteFileAndFolder(new File(getCachePath(context, null)));
    }

    public static void closeIOs(Closeable... closeableArr) {
        if (closeableArr == null || closeableArr.length <= 0) {
            return;
        }
        for (Closeable closeable : closeableArr) {
            if (closeable != null) {
                try {
                    closeable.close();
                } catch (Throwable th) {
                    MobLog.getInstance().d(th);
                }
            }
        }
    }

    public static boolean copyFile(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2) || !new File(str).exists()) {
            return false;
        }
        try {
            copyFile(new FileInputStream(str), new FileOutputStream(str2));
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    @Deprecated
    public static long dateStrToLong(String str) {
        return new SimpleDateFormat("yyyy-MM-dd").parse(str, new ParsePosition(0)).getTime();
    }

    @Deprecated
    public static long dateToLong(String str) {
        try {
            Date date = new Date(str);
            Calendar calendar = Calendar.getInstance();
            calendar.setTime(date);
            return calendar.getTimeInMillis();
        } catch (Throwable th) {
            MobLog.getInstance().w(th);
            return 0L;
        }
    }

    @Deprecated
    public static Bundle decodeUrl(String str) {
        Bundle bundle = new Bundle();
        if (str != null) {
            for (String str2 : str.split(m.a.f72566d)) {
                String[] split = str2.split(SimpleComparison.EQUAL_TO_OPERATION);
                if (split.length >= 2 && split[1] != null) {
                    bundle.putString(URLDecoder.decode(split[0]), URLDecoder.decode(split[1]));
                } else {
                    bundle.putString(URLDecoder.decode(split[0]), "");
                }
            }
        }
        return bundle;
    }

    public static void deleteFileAndFolder(File file) throws Throwable {
        if (file == null || !file.exists()) {
            return;
        }
        if (file.isFile()) {
            file.delete();
            return;
        }
        String[] list = file.list();
        if (list != null && list.length > 0) {
            for (String str : list) {
                File file2 = new File(file, str);
                if (file2.isDirectory()) {
                    deleteFileAndFolder(file2);
                } else {
                    file2.delete();
                }
            }
            file.delete();
            return;
        }
        file.delete();
    }

    public static int designToDevice(Context context, int i2, int i4) {
        if (f53953b == 0) {
            int[] screenSize = getScreenSize(context);
            f53953b = screenSize[0] < screenSize[1] ? screenSize[0] : screenSize[1];
        }
        return (int) (((i4 * f53953b) / i2) + 0.5f);
    }

    public static int dipToPx(Context context, int i2) {
        if (f53952a <= 0.0f) {
            f53952a = context.getResources().getDisplayMetrics().density;
        }
        return (int) ((i2 * f53952a) + 0.5f);
    }

    @Deprecated
    public static String encodeUrl(Bundle bundle) {
        if (bundle == null) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        boolean z3 = true;
        for (String str : bundle.keySet()) {
            Object obj = bundle.get(str);
            if (obj == null) {
                obj = "";
            }
            if (z3) {
                z3 = false;
            } else {
                sb.append(m.a.f72566d);
            }
            sb.append(Data.urlEncode(str) + SimpleComparison.EQUAL_TO_OPERATION + Data.urlEncode(String.valueOf(obj)));
        }
        return sb.toString();
    }

    public static <T> T forceCast(Object obj) {
        return (T) forceCast(obj, null);
    }

    public static int getAnimRes(Context context, String str) {
        return getResId(context, "anim", str);
    }

    public static int getBitmapRes(Context context, String str) {
        int resId = getResId(context, "drawable", str);
        return resId <= 0 ? getResId(context, "mipmap", str) : resId;
    }

    public static String getCachePath(Context context, String str) {
        DeviceHelper deviceHelper;
        String str2 = context.getFilesDir().getAbsolutePath() + o.a("001g") + "MobSDK" + o.a("007g4dgdfdg-cig");
        try {
            String sdcardPath = DeviceHelper.getInstance(context).getSdcardPath();
            if (sdcardPath != null) {
                str2 = sdcardPath + o.a("001g") + "MobSDK" + o.a("001g") + deviceHelper.getPackageName() + o.a("007g-dgdfdgScig");
            }
        } catch (Throwable th) {
            MobLog.getInstance().d(th);
        }
        if (!TextUtils.isEmpty(str)) {
            str2 = str2 + str + o.a("001g");
        }
        File file = new File(str2);
        if (!file.exists() || !file.isDirectory()) {
            file.mkdirs();
        }
        return str2;
    }

    public static String getCacheRoot(Context context) {
        return getCacheRoot(context, false);
    }

    public static File getCacheRootFile(Context context, String str) {
        try {
            String cacheRoot = getCacheRoot(context);
            if (cacheRoot != null) {
                File file = new File(cacheRoot, str);
                if (!file.getParentFile().exists() || !file.getParentFile().isDirectory()) {
                    file.getParentFile().delete();
                    file.getParentFile().mkdirs();
                }
                return file;
            }
            return null;
        } catch (Throwable th) {
            MobLog.getInstance().w(th);
            return null;
        }
    }

    public static int getColorRes(Context context, String str) {
        return getResId(context, TypedValues.Custom.S_COLOR, str);
    }

    public static String getDataCache(Context context) {
        String str = context.getFilesDir().getAbsolutePath() + o.a("001g") + "MobSDK";
        File file = new File(str);
        if (!file.exists() || !file.isDirectory()) {
            file.delete();
            file.mkdirs();
        }
        return str;
    }

    public static File getDataCacheFile(Context context, String str) {
        return new File(getDataCache(context), str);
    }

    public static float getDensity(Context context) {
        if (f53952a <= 0.0f) {
            f53952a = context.getResources().getDisplayMetrics().density;
        }
        return f53952a;
    }

    public static int getDensityDpi(Context context) {
        return context.getResources().getDisplayMetrics().densityDpi;
    }

    public static float[] getDensityXYDpi(Context context) {
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        return new float[]{displayMetrics.xdpi, displayMetrics.ydpi};
    }

    @Deprecated
    public static long getFileSize(String str) throws Throwable {
        if (TextUtils.isEmpty(str)) {
            return 0L;
        }
        return getFileSize(new File(str));
    }

    public static int getIdRes(Context context, String str) {
        return getResId(context, o.a("002Zde4h"), str);
    }

    public static String getImageCachePath(Context context) {
        return getCachePath(context, "images");
    }

    public static int getLayoutRes(Context context, String str) {
        return getResId(context, o.a("006[eddfdiecdc:d"), str);
    }

    @Deprecated
    public static synchronized Uri getMediaUri(Context context, String str, String str2) {
        Uri uri;
        synchronized (ResHelper.class) {
            final Object obj = new Object();
            f53954c = null;
            MediaScannerConnection.scanFile(context, new String[]{str}, new String[]{str2}, new MediaScannerConnection.OnScanCompletedListener() { // from class: com.mob.tools.utils.ResHelper.1
                @Override // android.media.MediaScannerConnection.OnScanCompletedListener
                public void onScanCompleted(String str3, Uri uri2) {
                    Uri unused = ResHelper.f53954c = uri2;
                    synchronized (obj) {
                        obj.notifyAll();
                    }
                }
            });
            try {
                if (f53954c == null) {
                    synchronized (obj) {
                        obj.wait(com.join.mgps.data.c.f47286a);
                    }
                }
            } catch (Throwable unused) {
            }
            uri = f53954c;
            f53954c = null;
        }
        return uri;
    }

    public static int getRawRes(Context context, String str) {
        return getResId(context, "raw", str);
    }

    public static int getResId(Context context, String str, String str2) {
        int i2 = 0;
        if (context != null && !TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            String packageName = context.getPackageName();
            if (TextUtils.isEmpty(packageName)) {
                return 0;
            }
            i2 = context.getResources().getIdentifier(str2, str, packageName);
            if (i2 <= 0) {
                i2 = context.getResources().getIdentifier(str2.toLowerCase(), str, packageName);
            }
            if (i2 <= 0) {
                NLog mobLog = MobLog.getInstance();
                mobLog.w("failed to parse " + str + " resource \"" + str2 + m.a.f72569g);
            }
        }
        return i2;
    }

    public static int getScreenHeight(Context context) {
        return getScreenSize(context)[1];
    }

    public static int[] getScreenSize(Context context) {
        WindowManager windowManager;
        Display display = null;
        try {
            windowManager = (WindowManager) DeviceHelper.getInstance(context).getSystemServiceSafe("window");
        } catch (Throwable th) {
            MobLog.getInstance().w(th);
            windowManager = null;
        }
        if (windowManager == null) {
            return new int[]{0, 0};
        }
        try {
            display = windowManager.getDefaultDisplay();
        } catch (Throwable th2) {
            MobLog.getInstance().w(th2);
        }
        if (display == null) {
            try {
                DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
                return new int[]{displayMetrics.widthPixels, displayMetrics.heightPixels};
            } catch (Throwable th3) {
                MobLog.getInstance().w(th3);
                return new int[]{0, 0};
            }
        } else if (Build.VERSION.SDK_INT < 13) {
            try {
                DisplayMetrics displayMetrics2 = new DisplayMetrics();
                display.getMetrics(displayMetrics2);
                return new int[]{displayMetrics2.widthPixels, displayMetrics2.heightPixels};
            } catch (Throwable th4) {
                MobLog.getInstance().w(th4);
                return new int[]{0, 0};
            }
        } else {
            try {
                Point point = new Point();
                Method method = display.getClass().getMethod(o.a("011Xff'id^geNi5dfedehdegc:i"), Point.class);
                method.setAccessible(true);
                method.invoke(display, point);
                return new int[]{point.x, point.y};
            } catch (Throwable th5) {
                MobLog.getInstance().w(th5);
                return new int[]{0, 0};
            }
        }
    }

    public static int getScreenWidth(Context context) {
        return getScreenSize(context)[0];
    }

    public static int getStringArrayRes(Context context, String str) {
        return getResId(context, "array", str);
    }

    public static int getStringRes(Context context, String str) {
        return getResId(context, TypedValues.Custom.S_STRING, str);
    }

    public static int getStyleRes(Context context, String str) {
        return getResId(context, "style", str);
    }

    public static int[] getStyleableRes(Context context, String str) {
        try {
            Object staticField = ReflectHelper.getStaticField(ReflectHelper.importClass(context.getPackageName() + ".R$styleable"), str);
            return staticField == null ? new int[0] : staticField.getClass().isArray() ? (int[]) staticField : new int[]{((Integer) staticField).intValue()};
        } catch (Throwable th) {
            MobLog.getInstance().d(th);
            return new int[0];
        }
    }

    public static <T> boolean isEqual(T t3, T t4) {
        return !((t3 == null && t4 != null) || !(t3 == null || t3.equals(t4)));
    }

    @Deprecated
    public static int parseInt(String str) throws Throwable {
        return parseInt(str, 10);
    }

    @Deprecated
    public static long parseLong(String str) throws Throwable {
        return parseLong(str, 10);
    }

    @Deprecated
    public static Uri pathToContentUri(Context context, String str) {
        try {
            if (DeviceHelper.getInstance(context).checkPermission(o.a("040)dfdk!hJdhecde:h<el2ei7dh8l5defgfgdeecdkelgegdejfiddgdhgeigdgeefejekddeheiflgeejhkgd"))) {
                Cursor query = context.getContentResolver().query(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, new String[]{"_id"}, "_data=? ", new String[]{str}, null);
                if (query != null && query.moveToFirst()) {
                    int i2 = query.getInt(query.getColumnIndex("_id"));
                    Uri parse = Uri.parse("content://media/external/images/media");
                    return Uri.withAppendedPath(parse, "" + i2);
                } else if (new File(str).exists()) {
                    ContentValues contentValues = new ContentValues();
                    contentValues.put("_data", str);
                    return context.getContentResolver().insert(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, contentValues);
                } else {
                    return null;
                }
            }
            return null;
        } catch (Throwable th) {
            MobLog.getInstance().w(th);
            return null;
        }
    }

    public static int pxToDip(Context context, int i2) {
        if (f53952a <= 0.0f) {
            f53952a = context.getResources().getDisplayMetrics().density;
        }
        return (int) ((i2 / f53952a) + 0.5f);
    }

    public static ArrayList<HashMap<String, String>> readArrayListFromFile(String str) {
        return readArrayListFromFile(str, false);
    }

    public static <T> T readEncodedData(String str, Class<T> cls) {
        File dataCacheFile = getDataCacheFile(MobSDK.getContext(), str);
        if (dataCacheFile.exists()) {
            try {
                return (T) HashonHelper.fromJson(Data.AES128Decode(DeviceHelper.getInstance(MobSDK.getContext()).getModel(), (byte[]) readObjectFromFile(dataCacheFile.getAbsolutePath())), cls);
            } catch (Throwable th) {
                MobLog.getInstance().d(th);
                return null;
            }
        }
        return null;
    }

    public static long readLongFromFile(String str) {
        Throwable th;
        DataInputStream dataInputStream;
        File dataCacheFile = getDataCacheFile(MobSDK.getContext(), str);
        if (!dataCacheFile.exists()) {
            return 0L;
        }
        try {
            dataInputStream = new DataInputStream(new FileInputStream(dataCacheFile));
            try {
                long readLong = dataInputStream.readLong();
                r.a(dataInputStream);
                return readLong;
            } catch (Throwable th2) {
                th = th2;
                try {
                    MobLog.getInstance().d(th);
                    r.a(dataInputStream);
                    return 0L;
                } catch (Throwable th3) {
                    r.a(dataInputStream);
                    throw th3;
                }
            }
        } catch (Throwable th4) {
            th = th4;
            dataInputStream = null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0010, code lost:
        if (r0.exists() == false) goto L38;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.Object readObjectFromFile(java.lang.String r9) {
        /*
            boolean r0 = android.text.TextUtils.isEmpty(r9)
            r1 = 0
            if (r0 != 0) goto L71
            java.io.File r0 = new java.io.File     // Catch: java.lang.Throwable -> L13
            r0.<init>(r9)     // Catch: java.lang.Throwable -> L13
            boolean r9 = r0.exists()     // Catch: java.lang.Throwable -> L13
            if (r9 != 0) goto L1c
            goto L1b
        L13:
            r9 = move-exception
            com.mob.tools.log.NLog r0 = com.mob.tools.MobLog.getInstance()
            r0.d(r9)
        L1b:
            r0 = r1
        L1c:
            if (r0 == 0) goto L71
            r9 = 2
            r2 = 1
            r3 = 0
            r4 = 3
            java.io.FileInputStream r5 = new java.io.FileInputStream     // Catch: java.lang.Throwable -> L4d
            r5.<init>(r0)     // Catch: java.lang.Throwable -> L4d
            java.util.zip.GZIPInputStream r0 = new java.util.zip.GZIPInputStream     // Catch: java.lang.Throwable -> L49
            r0.<init>(r5)     // Catch: java.lang.Throwable -> L49
            java.io.ObjectInputStream r6 = new java.io.ObjectInputStream     // Catch: java.lang.Throwable -> L46
            r6.<init>(r0)     // Catch: java.lang.Throwable -> L46
            java.lang.Object r7 = r6.readObject()     // Catch: java.lang.Throwable -> L44
            r6.close()     // Catch: java.lang.Throwable -> L44
            java.io.Closeable[] r1 = new java.io.Closeable[r4]
            r1[r3] = r6
            r1[r2] = r0
            r1[r9] = r5
            closeIOs(r1)
            return r7
        L44:
            r7 = move-exception
            goto L51
        L46:
            r7 = move-exception
            r6 = r1
            goto L51
        L49:
            r7 = move-exception
            r0 = r1
            r6 = r0
            goto L51
        L4d:
            r7 = move-exception
            r0 = r1
            r5 = r0
            r6 = r5
        L51:
            com.mob.tools.log.NLog r8 = com.mob.tools.MobLog.getInstance()     // Catch: java.lang.Throwable -> L64
            r8.d(r7)     // Catch: java.lang.Throwable -> L64
            java.io.Closeable[] r4 = new java.io.Closeable[r4]
            r4[r3] = r6
            r4[r2] = r0
            r4[r9] = r5
            closeIOs(r4)
            goto L71
        L64:
            r1 = move-exception
            java.io.Closeable[] r4 = new java.io.Closeable[r4]
            r4[r3] = r6
            r4[r2] = r0
            r4[r9] = r5
            closeIOs(r4)
            throw r1
        L71:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mob.tools.utils.ResHelper.readObjectFromFile(java.lang.String):java.lang.Object");
    }

    public static boolean saveAndEncodeData(String str, Object obj) {
        File dataCacheFile = getDataCacheFile(MobSDK.getContext(), str);
        try {
            if (obj == null) {
                dataCacheFile.delete();
                return true;
            }
            return saveObjectToFile(dataCacheFile.getAbsolutePath(), Data.AES128Encode(DeviceHelper.getInstance(MobSDK.getContext()).getModel(), HashonHelper.fromObject(obj)));
        } catch (Throwable th) {
            MobLog.getInstance().d(th);
            return false;
        }
    }

    public static void saveArrayListToFile(ArrayList<HashMap<String, String>> arrayList, String str) {
        saveArrayListToFile(arrayList, str, false);
    }

    public static boolean saveLongToFile(long j4, String str) {
        DataOutputStream dataOutputStream = null;
        try {
            DataOutputStream dataOutputStream2 = new DataOutputStream(new FileOutputStream(getDataCacheFile(MobSDK.getContext(), str)));
            try {
                dataOutputStream2.writeLong(j4);
                dataOutputStream2.flush();
                r.a(dataOutputStream2);
                return true;
            } catch (Throwable th) {
                th = th;
                dataOutputStream = dataOutputStream2;
                try {
                    MobLog.getInstance().d(th);
                    r.a(dataOutputStream);
                    return false;
                } catch (Throwable th2) {
                    r.a(dataOutputStream);
                    throw th2;
                }
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    public static boolean saveObjectToFile(String str, Object obj) {
        File file;
        GZIPOutputStream gZIPOutputStream;
        ObjectOutputStream objectOutputStream;
        if (!TextUtils.isEmpty(str)) {
            FileOutputStream fileOutputStream = null;
            try {
                file = new File(str);
                if (file.exists()) {
                    file.delete();
                }
            } catch (Throwable th) {
                MobLog.getInstance().d(th);
                file = null;
            }
            if (obj == null) {
                return true;
            }
            if (!file.getParentFile().exists() || !file.getParentFile().isDirectory()) {
                file.getParentFile().delete();
                file.getParentFile().mkdirs();
            }
            file.createNewFile();
            if (file != null) {
                try {
                    FileOutputStream fileOutputStream2 = new FileOutputStream(file);
                    try {
                        gZIPOutputStream = new GZIPOutputStream(fileOutputStream2);
                        try {
                            objectOutputStream = new ObjectOutputStream(gZIPOutputStream);
                            try {
                                objectOutputStream.writeObject(obj);
                                objectOutputStream.flush();
                                objectOutputStream.close();
                                closeIOs(objectOutputStream, gZIPOutputStream, fileOutputStream2);
                                return true;
                            } catch (Throwable th2) {
                                th = th2;
                                fileOutputStream = fileOutputStream2;
                                try {
                                    MobLog.getInstance().d(th);
                                    closeIOs(objectOutputStream, gZIPOutputStream, fileOutputStream);
                                    return false;
                                } catch (Throwable th3) {
                                    closeIOs(objectOutputStream, gZIPOutputStream, fileOutputStream);
                                    throw th3;
                                }
                            }
                        } catch (Throwable th4) {
                            th = th4;
                            objectOutputStream = null;
                        }
                    } catch (Throwable th5) {
                        th = th5;
                        gZIPOutputStream = null;
                        objectOutputStream = null;
                    }
                } catch (Throwable th6) {
                    th = th6;
                    gZIPOutputStream = null;
                    objectOutputStream = null;
                }
            }
        }
        return false;
    }

    @Deprecated
    public static long strToDate(String str) {
        return new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").parse(str, new ParsePosition(0)).getTime();
    }

    @Deprecated
    public static Bundle urlToBundle(String str) {
        int indexOf;
        String str2;
        if (str.indexOf("://") >= 0) {
            str2 = o.a("007cddefgg") + str.substring(indexOf + 1);
        } else {
            str2 = o.a("007cddefgg") + str;
        }
        try {
            URL url = new URL(str2);
            Bundle decodeUrl = decodeUrl(url.getQuery());
            decodeUrl.putAll(decodeUrl(url.getRef()));
            return decodeUrl;
        } catch (Throwable th) {
            MobLog.getInstance().w(th);
            return new Bundle();
        }
    }

    @Deprecated
    public static Uri videoPathToContentUri(Context context, String str) {
        try {
            if (DeviceHelper.getInstance(context).checkPermission(o.a("040Ydfdk5h3dhecdeHhLel(ei?dh>l%defgfgdeecdkelgegdejfiddgdhgeigdgeefejekddeheiflgeejhkgd"))) {
                Cursor query = context.getContentResolver().query(MediaStore.Video.Media.EXTERNAL_CONTENT_URI, new String[]{"_id"}, "_data=? ", new String[]{str}, null);
                if (query != null && query.moveToFirst()) {
                    int i2 = query.getInt(query.getColumnIndex("_id"));
                    Uri parse = Uri.parse("content://media/external/video/media");
                    return Uri.withAppendedPath(parse, "" + i2);
                } else if (new File(str).exists()) {
                    ContentValues contentValues = new ContentValues();
                    contentValues.put("_data", str);
                    return context.getContentResolver().insert(MediaStore.Video.Media.EXTERNAL_CONTENT_URI, contentValues);
                } else {
                    return null;
                }
            }
            return null;
        } catch (Throwable th) {
            MobLog.getInstance().w(th);
            return null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <T> T forceCast(Object obj, T t3) {
        if (obj != 0) {
            try {
                if (obj instanceof Integer) {
                    return t3 instanceof Long ? (T) Long.valueOf(((Integer) obj).intValue()) : obj;
                }
                return obj;
            } catch (Throwable unused) {
            }
        }
        return t3;
    }

    public static String getCacheRoot(Context context, boolean z3) {
        String dataCache;
        if (z3) {
            dataCache = null;
        } else {
            try {
                dataCache = getDataCache(context);
            } catch (Throwable th) {
                MobLog.getInstance().w(th);
                return null;
            }
        }
        String sdcardPath = DeviceHelper.getInstance(context).getSdcardPath();
        if (sdcardPath != null) {
            dataCache = sdcardPath + o.a("001g") + "MobSDK";
        }
        if (TextUtils.isEmpty(dataCache)) {
            return null;
        }
        File file = new File(dataCache);
        if (!file.exists() || !file.isDirectory()) {
            file.delete();
            file.mkdirs();
        }
        return dataCache;
    }

    @Deprecated
    public static int parseInt(String str, int i2) throws Throwable {
        return Integer.parseInt(str, i2);
    }

    @Deprecated
    public static long parseLong(String str, int i2) throws Throwable {
        return Long.parseLong(str, i2);
    }

    public static ArrayList<HashMap<String, String>> readArrayListFromFile(String str, boolean z3) {
        File dataCacheFile = getDataCacheFile(MobSDK.getContext(), str);
        if (dataCacheFile.exists()) {
            BufferedReader bufferedReader = null;
            try {
                ArrayList<HashMap<String, String>> arrayList = new ArrayList<>();
                BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(new GZIPInputStream(new FileInputStream(dataCacheFile)), "utf-8"));
                try {
                    String readLine = bufferedReader2.readLine();
                    while (readLine != null) {
                        if (z3) {
                            readLine = new String(Base64.decode(readLine, 2), "utf-8");
                            continue;
                        }
                        arrayList.add(HashonHelper.fromJson(readLine));
                        readLine = bufferedReader2.readLine();
                    }
                    closeIOs(bufferedReader2);
                    return arrayList;
                } catch (Throwable th) {
                    th = th;
                    bufferedReader = bufferedReader2;
                    try {
                        MobLog.getInstance().d(th);
                        closeIOs(bufferedReader);
                        return new ArrayList<>();
                    } catch (Throwable th2) {
                        closeIOs(bufferedReader);
                        throw th2;
                    }
                }
            } catch (Throwable th3) {
                th = th3;
            }
        }
        return new ArrayList<>();
    }

    public static void saveArrayListToFile(ArrayList<HashMap<String, String>> arrayList, String str, boolean z3) {
        OutputStreamWriter outputStreamWriter = null;
        try {
            OutputStreamWriter outputStreamWriter2 = new OutputStreamWriter(new GZIPOutputStream(new FileOutputStream(getDataCacheFile(MobSDK.getContext(), str))), "utf-8");
            try {
                Iterator<HashMap<String, String>> it2 = arrayList.iterator();
                while (it2.hasNext()) {
                    String fromHashMap = HashonHelper.fromHashMap(it2.next());
                    if (z3) {
                        fromHashMap = new String(Base64.encode(fromHashMap.getBytes("utf-8"), 2), "utf-8");
                    }
                    outputStreamWriter2.append((CharSequence) fromHashMap).append('\n');
                }
                closeIOs(outputStreamWriter2);
            } catch (Throwable th) {
                th = th;
                outputStreamWriter = outputStreamWriter2;
                try {
                    MobLog.getInstance().d(th);
                    closeIOs(outputStreamWriter);
                } catch (Throwable th2) {
                    closeIOs(outputStreamWriter);
                    throw th2;
                }
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    @Deprecated
    public static long getFileSize(File file) throws Throwable {
        if (file.exists()) {
            if (file.isDirectory()) {
                int i2 = 0;
                for (String str : file.list()) {
                    i2 = (int) (i2 + getFileSize(new File(file, str)));
                }
                return i2;
            }
            return file.length();
        }
        return 0L;
    }

    public static int designToDevice(Context context, float f4, int i2) {
        if (f53952a <= 0.0f) {
            f53952a = context.getResources().getDisplayMetrics().density;
        }
        return (int) (((i2 * f53952a) / f4) + 0.5f);
    }

    public static void copyFile(FileInputStream fileInputStream, FileOutputStream fileOutputStream) throws Throwable {
        byte[] bArr = new byte[65536];
        int read = fileInputStream.read(bArr);
        while (read > 0) {
            fileOutputStream.write(bArr, 0, read);
            read = fileInputStream.read(bArr);
        }
        fileInputStream.close();
        fileOutputStream.close();
    }

    @Deprecated
    public static String encodeUrl(ArrayList<KVPair<String>> arrayList) {
        if (arrayList == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        int i2 = 0;
        Iterator<KVPair<String>> it2 = arrayList.iterator();
        while (it2.hasNext()) {
            KVPair<String> next = it2.next();
            if (i2 > 0) {
                sb.append(Typography.amp);
            }
            String str = next.name;
            String str2 = next.value;
            if (str != null) {
                if (str2 == null) {
                    str2 = "";
                }
                sb.append(Data.urlEncode(str) + SimpleComparison.EQUAL_TO_OPERATION + Data.urlEncode(str2));
                i2++;
            }
        }
        return sb.toString();
    }
}
