package com.mob.tools.a;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.os.Build;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.Parcel;
import android.os.ResultReceiver;
import android.text.TextUtils;
import androidx.core.app.NotificationCompat;
import com.mob.tools.MobLog;
import com.mob.tools.utils.DeviceHelper;
import com.mob.tools.utils.ResHelper;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStreamReader;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes4.dex */
public class j {
    /* JADX WARN: Can't wrap try/catch for region: R(12:1|(3:2|3|(2:5|6)(1:115))|(10:109|110|(1:112)|9|(1:11)(1:104)|(2:15|(8:18|19|(1:67)(1:(3:60|61|(4:64|65|66|29)(6:63|31|(4:(1:34)(1:48)|35|(4:38|39|(1:41)(1:43)|42)|37)|49|(1:51)(1:58)|52))(7:22|(4:26|27|28|29)|31|(0)|49|(0)(0)|52))|(1:55)|56|57|29|16))|96|97|(1:99)(1:101)|100)|8|9|(0)(0)|(3:13|15|(1:16))|96|97|(0)(0)|100|(2:(0)|(1:46))) */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0050, code lost:
        if (r6.contains(com.mob.tools.utils.DeviceHelper.getInstance(r16).getPackageName()) != false) goto L8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x01a6, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x01a7, code lost:
        com.mob.tools.MobLog.getInstance().d(r0);
     */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0069 A[Catch: all -> 0x01af, TryCatch #9 {all -> 0x01af, blocks: (B:20:0x0062, B:22:0x0069, B:25:0x0071, B:27:0x0077, B:28:0x00c0, B:30:0x00c6, B:38:0x00df, B:45:0x00ef, B:48:0x0103, B:50:0x0116, B:58:0x0131, B:60:0x0138, B:59:0x0134, B:61:0x0143, B:49:0x0110, B:62:0x014c, B:66:0x0168, B:42:0x00e8, B:69:0x0192, B:19:0x005b, B:31:0x00cc), top: B:117:0x005b }] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x006e  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0071 A[Catch: all -> 0x01af, TryCatch #9 {all -> 0x01af, blocks: (B:20:0x0062, B:22:0x0069, B:25:0x0071, B:27:0x0077, B:28:0x00c0, B:30:0x00c6, B:38:0x00df, B:45:0x00ef, B:48:0x0103, B:50:0x0116, B:58:0x0131, B:60:0x0138, B:59:0x0134, B:61:0x0143, B:49:0x0110, B:62:0x014c, B:66:0x0168, B:42:0x00e8, B:69:0x0192, B:19:0x005b, B:31:0x00cc), top: B:117:0x005b }] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00c6 A[Catch: all -> 0x01af, TRY_LEAVE, TryCatch #9 {all -> 0x01af, blocks: (B:20:0x0062, B:22:0x0069, B:25:0x0071, B:27:0x0077, B:28:0x00c0, B:30:0x00c6, B:38:0x00df, B:45:0x00ef, B:48:0x0103, B:50:0x0116, B:58:0x0131, B:60:0x0138, B:59:0x0134, B:61:0x0143, B:49:0x0110, B:62:0x014c, B:66:0x0168, B:42:0x00e8, B:69:0x0192, B:19:0x005b, B:31:0x00cc), top: B:117:0x005b }] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0101  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0163  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0166  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x019e A[Catch: all -> 0x01a6, TryCatch #3 {all -> 0x01a6, blocks: (B:71:0x019a, B:73:0x019e, B:74:0x01a2), top: B:105:0x019a }] */
    /* JADX WARN: Removed duplicated region for block: B:74:0x01a2 A[Catch: all -> 0x01a6, TRY_LEAVE, TryCatch #3 {all -> 0x01a6, blocks: (B:71:0x019a, B:73:0x019e, B:74:0x01a2), top: B:105:0x019a }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.ArrayList<java.util.HashMap<java.lang.String, java.lang.String>> a(android.content.Context r16, boolean r17, boolean r18, boolean r19) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 490
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mob.tools.a.j.a(android.content.Context, boolean, boolean, boolean):java.util.ArrayList");
    }

    private static HashMap<String, String> a(Context context) {
        try {
            return (HashMap) ResHelper.readObjectFromFile(ResHelper.getDataCacheFile(context, ".ansx").getAbsolutePath());
        } catch (Throwable th) {
            try {
                MobLog.getInstance().w(th);
                ResHelper.getDataCacheFile(context, ".ansx").delete();
            } catch (Throwable th2) {
                MobLog.getInstance().w(th2);
            }
            return null;
        }
    }

    private static void a(Context context, HashMap<String, String> hashMap) {
        if (hashMap != null) {
            try {
                ResHelper.saveObjectToFile(ResHelper.getDataCacheFile(context, ".ansx").getAbsolutePath(), hashMap);
            } catch (Throwable th) {
                MobLog.getInstance().w(th);
            }
        }
    }

    private static boolean a(PackageInfo packageInfo) {
        int i2 = packageInfo.applicationInfo.flags;
        return ((i2 & 1) == 1) || ((i2 & 128) == 1);
    }

    public static Set<String> a(Context context, HandlerThread handlerThread) throws Throwable {
        File file = new File(context.getFilesDir(), ".tmp11");
        if (!file.exists()) {
            file.mkdirs();
        }
        File file2 = new File(file, com.mob.commons.i.a("002*fgfm") + System.currentTimeMillis());
        File file3 = new File(file, "out" + System.currentTimeMillis());
        File file4 = new File(file, NotificationCompat.CATEGORY_ERROR + System.currentTimeMillis());
        if (file3.exists()) {
            file3.delete();
        }
        try {
            a(context, com.mob.commons.i.a("007g'fhfiflfhhhBk"), new String[]{com.mob.commons.i.a("004'gffghi@f"), "packages"}, file2, file3, file4, handlerThread);
            if (file3.exists() && file3.length() > 0) {
                HashSet hashSet = new HashSet();
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream(file3), "utf-8"));
                String a4 = com.mob.commons.i.a("008g1fhfiflfhhhWkh");
                for (String readLine = bufferedReader.readLine(); readLine != null; readLine = bufferedReader.readLine()) {
                    String trim = readLine.trim();
                    if (trim.length() > a4.length() && trim.substring(0, a4.length()).equalsIgnoreCase(a4)) {
                        String trim2 = trim.substring(a4.length()).trim();
                        if (!TextUtils.isEmpty(trim2)) {
                            hashSet.add(trim2);
                        }
                    }
                }
                bufferedReader.close();
                return hashSet;
            }
            file2.delete();
            file3.delete();
            file4.delete();
            return null;
        } finally {
            file2.delete();
            file3.delete();
            file4.delete();
        }
    }

    public static Set<String> a(Context context, boolean z3, HandlerThread handlerThread) throws Throwable {
        File file = new File(context.getFilesDir(), ".tmp11");
        if (!file.exists()) {
            file.mkdirs();
        }
        File file2 = new File(file, com.mob.commons.i.a("002Tfgfm") + System.currentTimeMillis());
        File file3 = new File(file, "out" + System.currentTimeMillis());
        File file4 = new File(file, NotificationCompat.CATEGORY_ERROR + System.currentTimeMillis());
        if (file3.exists()) {
            file3.delete();
        }
        try {
            if (z3) {
                a(context, com.mob.commons.i.a("007g]fhfiflfhhh;k"), new String[]{com.mob.commons.i.a("016mLfe7kKfjfkjkfhfiPfUfgOl<fgCf>fgHkYhi"), "-a", com.mob.commons.i.a("026LfhfmSj:fjgefg?jOgnfgfmTfk-fm<fNgnfhfi*f[fggefmgnikglgigh"), "--user", "0"}, file2, file3, file4, handlerThread);
            } else {
                a(context, com.mob.commons.i.a("007gTfhfiflfhhhBk"), new String[]{com.mob.commons.i.a("016mIfe-k-fjfkjkfhfiSf5fgFl.fg5f=fg?kOhi"), "-a", com.mob.commons.i.a("0260fhfm^jNfjgefg(jKgnfgfmLfk:fm]fAgnfhfi>f*fggefmgnikglgigh"), "-c", com.mob.commons.i.a("032;fhfm[jZfjgefg@j]gnfgfm+fk]fmYf3gnfifhRfkBhhgefjfkgngmglggghiijfifig"), "--user", "0"}, file2, file3, file4, handlerThread);
            }
            if (file3.exists() && file3.length() > 0) {
                HashSet hashSet = new HashSet();
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream(file3), "utf-8"));
                String a4 = com.mob.commons.i.a("012g2fhfiflfhhh$k7ghfh nk7ki");
                for (String readLine = bufferedReader.readLine(); readLine != null; readLine = bufferedReader.readLine()) {
                    String trim = readLine.trim();
                    if (trim.length() > a4.length() && trim.substring(0, a4.length()).equalsIgnoreCase(a4)) {
                        String trim2 = trim.substring(a4.length()).trim();
                        if (!TextUtils.isEmpty(trim2)) {
                            hashSet.add(trim2);
                        }
                    }
                }
                bufferedReader.close();
                return hashSet;
            }
            file2.delete();
            file3.delete();
            file4.delete();
            return null;
        } finally {
            file2.delete();
            file3.delete();
            file4.delete();
        }
    }

    private static int a(Context context, String str, String[] strArr, File file, File file2, File file3, HandlerThread handlerThread) throws Throwable {
        int i2 = DeviceHelper.getInstance(context).getAInfo().targetSdkVersion;
        Object a4 = h.a(context, i2).a(com.mob.commons.i.a("024>fhfm:j4fjgefg@jUgngehigngj_ek^gfgfiifhgfgfhefhfifl"));
        FileOutputStream fileOutputStream = new FileOutputStream(file);
        FileOutputStream fileOutputStream2 = new FileOutputStream(file2);
        FileOutputStream fileOutputStream3 = new FileOutputStream(file3);
        h.a(context, i2).a(IBinder.class, (IBinder) h.a(context, i2).a(com.mob.commons.i.a("025!fhfmAj*fjgefgTj.gngehigngjMk'fj7l+fgfi?k!ikfhfmfhhh3k=fj"), (Object) null, com.mob.commons.i.a("010LhhOkfOgj7kHfjBlTfgfi=k"), new Class[]{String.class}, new Object[]{str}), com.mob.commons.i.a("012)hiTek5gfgfiigeFnnWfhfm*j"), new Class[]{FileDescriptor.class, FileDescriptor.class, FileDescriptor.class, String[].class, Class.forName(com.mob.commons.i.a("024QfhfmVj(fjgefgEj5gngehigngjGek$gfgfiifhgfgfhefhfifl")), ResultReceiver.class}, new Object[]{fileOutputStream.getFD(), fileOutputStream2.getFD(), fileOutputStream3.getFD(), strArr, a4, new ResultReceiver(new Handler(handlerThread.getLooper()))});
        return 0;
    }

    public static PackageInfo a(Context context, String str, int i2, int i4, int i5) throws Throwable {
        if (Build.VERSION.SDK_INT < 23) {
            return null;
        }
        IBinder iBinder = (IBinder) h.a(context, DeviceHelper.getInstance(context).getAInfo().targetSdkVersion).a(com.mob.commons.i.a("025?fhfm%jJfjgefgAjOgngehigngj,kDfj'lEfgfi,k9ikfhfmfhhh7k5fj"), (Object) null, com.mob.commons.i.a("010:hh%kf0gj-k7fjOlOfgfi,k"), new Class[]{String.class}, new Object[]{com.mob.commons.i.a("007g5fhfiflfhhh'k")});
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken(com.mob.commons.i.a("034IfhfmZj2fjgefgMj>gnfigefmRfkIfm!fDgn]gn-gngiijfhfiflfhhh k<ikfhfmfhhh-k)fj"));
            obtain.writeString(str);
            obtain.writeInt(i2);
            obtain.writeInt(i4);
            iBinder.transact(i5, obtain, obtain2, 0);
            obtain2.readException();
            return (PackageInfo) obtain2.readTypedObject(PackageInfo.CREATOR);
        } finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }
}
