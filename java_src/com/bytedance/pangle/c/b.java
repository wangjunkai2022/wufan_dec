package com.bytedance.pangle.c;

import android.os.Build;
import android.os.Process;
import com.bytedance.pangle.Zeus;
import com.bytedance.pangle.log.ZeusLogger;
import com.bytedance.pangle.util.FieldUtils;
import com.bytedance.pangle.util.g;
import com.bytedance.pangle.util.h;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.regex.Pattern;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    private static String f10116a;

    /* renamed from: b  reason: collision with root package name */
    private static String f10117b;

    /* renamed from: c  reason: collision with root package name */
    private static Map<String, Integer> f10118c = new HashMap();

    static {
        if (h.a()) {
            f10117b = Build.SUPPORTED_ABIS[0];
        } else {
            f10117b = Build.CPU_ABI;
        }
        f10118c.put("arm64-v8a", 64);
        f10118c.put("armeabi-v7a", 32);
        f10118c.put(com.join.mgps.mod.utils.d.f51074d, 32);
        f10118c.put("x86_64", 64);
        f10118c.put(com.join.mgps.mod.utils.d.f51075e, 32);
        f10118c.put("mips64", 64);
        f10118c.put(com.join.mgps.mod.utils.d.f51076f, 32);
        f10116a = c();
    }

    public static void a(File file, File file2, String str) {
        ZipFile zipFile = null;
        LinkedList<ZipEntry> linkedList = null;
        try {
            ZipFile zipFile2 = new ZipFile(file);
            try {
                Map<String, List<ZipEntry>> a4 = a(zipFile2);
                boolean containsKey = a4.containsKey(f10116a);
                ZeusLogger.i(ZeusLogger.TAG_SO, "NativeLibHelper copyNativeLib pre-verify-matchHostAbi[" + containsKey + "], pkg=" + str);
                if (containsKey) {
                    if (!a4.isEmpty()) {
                        linkedList = new LinkedList();
                        HashSet hashSet = new HashSet();
                        String str2 = f10116a;
                        if (str2 == null) {
                            str2 = f10117b;
                        }
                        char c4 = 65535;
                        switch (str2.hashCode()) {
                            case -1073971299:
                                if (str2.equals("mips64")) {
                                    c4 = 5;
                                    break;
                                }
                                break;
                            case -806050265:
                                if (str2.equals("x86_64")) {
                                    c4 = 3;
                                    break;
                                }
                                break;
                            case -738963905:
                                if (str2.equals(com.join.mgps.mod.utils.d.f51074d)) {
                                    c4 = 2;
                                    break;
                                }
                                break;
                            case 117110:
                                if (str2.equals(com.join.mgps.mod.utils.d.f51075e)) {
                                    c4 = 4;
                                    break;
                                }
                                break;
                            case 3351711:
                                if (str2.equals(com.join.mgps.mod.utils.d.f51076f)) {
                                    c4 = 6;
                                    break;
                                }
                                break;
                            case 145444210:
                                if (str2.equals("armeabi-v7a")) {
                                    c4 = 1;
                                    break;
                                }
                                break;
                            case 1431565292:
                                if (str2.equals("arm64-v8a")) {
                                    c4 = 0;
                                    break;
                                }
                                break;
                        }
                        switch (c4) {
                            case 0:
                                a(a4, "arm64-v8a", linkedList, hashSet);
                                break;
                            case 1:
                                a(a4, "armeabi-v7a", linkedList, hashSet);
                                a(a4, com.join.mgps.mod.utils.d.f51074d, linkedList, hashSet);
                                break;
                            case 2:
                                a(a4, com.join.mgps.mod.utils.d.f51074d, linkedList, hashSet);
                                break;
                            case 3:
                                a(a4, "x86_64", linkedList, hashSet);
                                if (linkedList.size() == 0) {
                                    a(a4, "arm64-v8a", linkedList, hashSet);
                                    break;
                                }
                                break;
                            case 4:
                                a(a4, com.join.mgps.mod.utils.d.f51075e, linkedList, hashSet);
                                if (linkedList.size() == 0) {
                                    a(a4, "armeabi-v7a", linkedList, hashSet);
                                    a(a4, com.join.mgps.mod.utils.d.f51074d, linkedList, hashSet);
                                    break;
                                }
                                break;
                            case 5:
                                a(a4, "mips64", linkedList, hashSet);
                                break;
                            case 6:
                                a(a4, com.join.mgps.mod.utils.d.f51076f, linkedList, hashSet);
                                break;
                        }
                    }
                    if (linkedList != null && !linkedList.isEmpty()) {
                        if (!file2.exists()) {
                            file2.mkdirs();
                        }
                        for (ZipEntry zipEntry : linkedList) {
                            a(zipFile2, zipEntry, file2);
                        }
                    }
                    ZeusLogger.i(ZeusLogger.TAG_INSTALL, "NativeLibHelper copyNativeLib, supportedSoEntries empty, pkg=".concat(String.valueOf(str)));
                    zipFile2.close();
                    return;
                }
                zipFile2.close();
            } catch (Throwable th) {
                th = th;
                zipFile = zipFile2;
                if (zipFile != null) {
                    zipFile.close();
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static int b() {
        return f10118c.get(a()).intValue();
    }

    private static String c() {
        JSONObject d4 = d();
        String a4 = a(d4);
        return a4 == null ? b(d4) : a4;
    }

    private static JSONObject d() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("primaryCpuAbi", "0");
            jSONObject.put("processMode", "0");
            jSONObject.put("supportedABI0", "0");
            jSONObject.put("matchCpuAbi", "0");
            jSONObject.put("defaultABI0", "0");
            jSONObject.put("defaultABI", "0");
            jSONObject.put("autoError", "0");
            jSONObject.put("manualError", "0");
        } catch (JSONException e4) {
            e4.printStackTrace();
        }
        return jSONObject;
    }

    private static String b(JSONObject jSONObject) {
        HashSet hashSet;
        String[] strArr;
        try {
            ZipFile zipFile = new ZipFile(new File(Zeus.getAppApplication().getPackageManager().getPackageInfo(Zeus.getAppApplication().getPackageName(), 0).applicationInfo.sourceDir));
            hashSet = new HashSet(a(zipFile).keySet());
            try {
                zipFile.close();
            } catch (IOException unused) {
                ZeusLogger.w(ZeusLogger.TAG_SO, "NativeLibHelper inferHostAbiManual, close sourceApkZipFile error!");
            }
            strArr = h.a() ? Build.SUPPORTED_ABIS : new String[]{Build.CPU_ABI, Build.CPU_ABI2};
        } catch (Throwable th) {
            ZeusLogger.errReport(ZeusLogger.TAG_SO, "NativeLibHelper inferHostAbiManual failed!", th);
            a(jSONObject, "manualError", "1");
        }
        if (hashSet.isEmpty()) {
            ZeusLogger.w(ZeusLogger.TAG_SO, "NativeLibHelper inferHostAbiManual, host source apk .so is empty, use supportedABIs[0]=" + strArr[0]);
            a(jSONObject, "supportedABI0", strArr[0]);
            return strArr[0];
        }
        for (String str : strArr) {
            if (hashSet.contains(str)) {
                ZeusLogger.w(ZeusLogger.TAG_SO, "NativeLibHelper inferHostAbiManual, match cpuAbi=".concat(String.valueOf(str)));
                a(jSONObject, "matchCpuAbi", str);
                return str;
            }
        }
        if (h.a()) {
            String[] strArr2 = Build.SUPPORTED_ABIS;
            a(jSONObject, "defaultABI0", strArr2[0]);
            return strArr2[0];
        }
        String str2 = Build.CPU_ABI;
        a(jSONObject, "defaultABI", str2);
        return str2;
    }

    public static boolean b(File file) {
        ZipFile zipFile;
        ZipFile zipFile2 = null;
        try {
            try {
                zipFile = new ZipFile(file);
            } catch (Throwable th) {
                th = th;
            }
        } catch (IOException e4) {
            e = e4;
        }
        try {
            Enumeration<? extends ZipEntry> entries = zipFile.entries();
            Pattern compile = Pattern.compile("^lib/[^/]+/lib[^/]+.so$");
            while (entries.hasMoreElements()) {
                ZipEntry nextElement = entries.nextElement();
                if (!nextElement.isDirectory() && compile.matcher(nextElement.getName()).matches()) {
                    try {
                        zipFile.close();
                        return true;
                    } catch (IOException unused) {
                        ZeusLogger.w(ZeusLogger.TAG_SO, "NativeLibHelper hasNativeLib, close sourceApkZipFile error!");
                        return true;
                    }
                }
            }
            try {
                zipFile.close();
            } catch (IOException unused2) {
                ZeusLogger.w(ZeusLogger.TAG_SO, "NativeLibHelper hasNativeLib, close sourceApkZipFile error!");
            }
            return false;
        } catch (IOException e5) {
            e = e5;
            zipFile2 = zipFile;
            ZeusLogger.errReport(ZeusLogger.TAG_SO, "NativeLibHelper hasNativeLib, get sourceApk ZipFile failed!", e);
            if (zipFile2 != null) {
                try {
                    zipFile2.close();
                } catch (IOException unused3) {
                    ZeusLogger.w(ZeusLogger.TAG_SO, "NativeLibHelper hasNativeLib, close sourceApkZipFile error!");
                }
            }
            return false;
        } catch (Throwable th2) {
            th = th2;
            zipFile2 = zipFile;
            if (zipFile2 != null) {
                try {
                    zipFile2.close();
                } catch (IOException unused4) {
                    ZeusLogger.w(ZeusLogger.TAG_SO, "NativeLibHelper hasNativeLib, close sourceApkZipFile error!");
                }
            }
            throw th;
        }
    }

    private static Map<String, List<ZipEntry>> a(ZipFile zipFile) {
        String[] split;
        HashMap hashMap = new HashMap();
        Enumeration<? extends ZipEntry> entries = zipFile.entries();
        Pattern compile = Pattern.compile("^lib/[^/]+/lib[^/]+.so$");
        while (entries.hasMoreElements()) {
            ZipEntry nextElement = entries.nextElement();
            if (!nextElement.isDirectory() && !nextElement.getName().contains("../") && compile.matcher(nextElement.getName()).matches() && (split = nextElement.getName().split(File.separator)) != null && split.length >= 2) {
                String str = split[split.length - 2];
                if (f10118c.containsKey(str)) {
                    if (hashMap.get(str) == null) {
                        hashMap.put(str, new LinkedList());
                    }
                    ((List) hashMap.get(str)).add(nextElement);
                }
            }
        }
        ZeusLogger.i(ZeusLogger.TAG_SO, "NativeLibHelper getAllSoZipEntries, zipFile=" + zipFile.getName() + ", soEntries=" + hashMap.toString());
        return hashMap;
    }

    private static void a(Map<String, List<ZipEntry>> map, String str, List<ZipEntry> list, Set<String> set) {
        List<ZipEntry> list2 = map.get(str);
        if (list2 == null || list2.size() == 0) {
            return;
        }
        for (ZipEntry zipEntry : list2) {
            String substring = zipEntry.getName().substring(zipEntry.getName().lastIndexOf(File.separator) + 1);
            if (!set.contains(substring)) {
                list.add(zipEntry);
                set.add(substring);
            }
        }
    }

    private static void a(ZipFile zipFile, ZipEntry zipEntry, File file) {
        File file2 = new File(file, zipEntry.getName().substring(zipEntry.getName().lastIndexOf(File.separator) + 1));
        int i2 = 0;
        boolean z3 = false;
        do {
            if (file2.exists()) {
                file2.delete();
            }
            try {
                ZeusLogger.i(ZeusLogger.TAG_INSTALL, "NativeLibHelper copySoZipEntry, soZipEntry=" + zipEntry + ", targetSoFile=" + file2);
                g.a(zipFile.getInputStream(zipEntry), new FileOutputStream(file2));
                z3 = true;
                continue;
            } catch (IOException e4) {
                if (i2 >= 3) {
                    throw e4;
                }
                i2++;
                continue;
            }
        } while (!z3);
    }

    public static String a() {
        String str = f10116a;
        if (str != null) {
            return str;
        }
        String c4 = c();
        f10116a = c4;
        return c4;
    }

    private static String a(JSONObject jSONObject) {
        if (h.a()) {
            try {
                String str = (String) FieldUtils.readField(Zeus.getAppApplication().getApplicationInfo(), "primaryCpuAbi");
                ZeusLogger.w(ZeusLogger.TAG_SO, "NativeLibHelper inferHostAbiAuto, primaryCpuAbi=".concat(String.valueOf(str)));
                a(jSONObject, "primaryCpuAbi", str);
                if (str != null) {
                    int i2 = 0;
                    if (Build.VERSION.SDK_INT >= 23) {
                        try {
                            i2 = Process.is64Bit() ? 64 : 32;
                            ZeusLogger.w(ZeusLogger.TAG_SO, "NativeLibHelper inferHostAbiAuto, processMode=".concat(String.valueOf(i2)));
                        } catch (Exception unused) {
                            ZeusLogger.w(ZeusLogger.TAG_SO, "NativeLibHelper inferHostAbiAuto, processMode exception default=".concat(String.valueOf(i2)));
                        }
                    } else {
                        ZeusLogger.w(ZeusLogger.TAG_SO, "NativeLibHelper inferHostAbiAuto, processMode default=0");
                    }
                    a(jSONObject, "processMode", String.valueOf(i2));
                    if (i2 != 0) {
                        if (f10118c.get(str).intValue() == i2) {
                            ZeusLogger.w(ZeusLogger.TAG_SO, "NativeLibHelper inferHostAbiAuto2, sHostAbi=".concat(str));
                            return str;
                        }
                        return null;
                    }
                    ZeusLogger.w(ZeusLogger.TAG_SO, "NativeLibHelper inferHostAbiAuto1, sHostAbi=".concat(str));
                    return str;
                }
                return null;
            } catch (Exception e4) {
                ZeusLogger.errReport(ZeusLogger.TAG_SO, "NativeLibHelper inferHostAbiAuto failed!", e4);
                a(jSONObject, "autoError", "1");
                return null;
            }
        }
        return null;
    }

    public static boolean a(File file) {
        ZipFile zipFile;
        boolean containsKey;
        ZipFile zipFile2 = null;
        try {
            try {
                zipFile = new ZipFile(file);
            } catch (IOException e4) {
                e = e4;
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            Map<String, List<ZipEntry>> a4 = a(zipFile);
            if (a4.isEmpty()) {
                containsKey = true;
                ZeusLogger.i(ZeusLogger.TAG_SO, "NativeLibHelper isPluginApkMatchHostAbi [true] soEntries empty, ".concat(String.valueOf(file)));
            } else {
                containsKey = a4.containsKey(f10116a);
                if (containsKey) {
                    ZeusLogger.i(ZeusLogger.TAG_SO, "NativeLibHelper isPluginApkMatchHostAbi [" + containsKey + "], " + file);
                } else {
                    ZeusLogger.w(ZeusLogger.TAG_SO, "NativeLibHelper isPluginApkMatchHostAbi [" + containsKey + "], " + file);
                }
            }
            try {
                zipFile.close();
            } catch (IOException unused) {
                ZeusLogger.w(ZeusLogger.TAG_SO, "NativeLibHelper isPluginApkMatchHostAbi, close sourceApkZipFile error!");
            }
            return containsKey;
        } catch (IOException e5) {
            e = e5;
            zipFile2 = zipFile;
            ZeusLogger.errReport(ZeusLogger.TAG_SO, "NativeLibHelper isPluginApkMatchHostAbi, get sourceApk ZipFile failed!", e);
            if (zipFile2 != null) {
                try {
                    zipFile2.close();
                    return false;
                } catch (IOException unused2) {
                    ZeusLogger.w(ZeusLogger.TAG_SO, "NativeLibHelper isPluginApkMatchHostAbi, close sourceApkZipFile error!");
                    return false;
                }
            }
            return false;
        } catch (Throwable th2) {
            th = th2;
            zipFile2 = zipFile;
            if (zipFile2 != null) {
                try {
                    zipFile2.close();
                } catch (IOException unused3) {
                    ZeusLogger.w(ZeusLogger.TAG_SO, "NativeLibHelper isPluginApkMatchHostAbi, close sourceApkZipFile error!");
                }
            }
            throw th;
        }
    }

    private static void a(JSONObject jSONObject, String str, String str2) {
        try {
            jSONObject.put(str, str2);
        } catch (JSONException e4) {
            e4.printStackTrace();
        }
    }
}
