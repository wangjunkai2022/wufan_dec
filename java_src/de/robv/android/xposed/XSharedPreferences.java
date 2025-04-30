package de.robv.android.xposed;

import android.annotation.SuppressLint;
import android.content.SharedPreferences;
import android.os.Environment;
import de.robv.android.xposed.services.FileResult;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
/* loaded from: classes3.dex */
public final class XSharedPreferences implements SharedPreferences {
    private static final String TAG = "XSharedPreferences";
    private final File mFile;
    private long mFileSize;
    private final String mFilename;
    private long mLastModified;
    private boolean mLoaded;
    private Map<String, Object> mMap;

    public XSharedPreferences(File prefFile) {
        this.mLoaded = false;
        this.mFile = prefFile;
        this.mFilename = prefFile.getAbsolutePath();
        startLoadFromDisk();
    }

    private void awaitLoadedLocked() {
        while (!this.mLoaded) {
            try {
                wait();
            } catch (InterruptedException unused) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0081  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x008c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void loadFromDiskLocked() {
        /*
            r8 = this;
            boolean r0 = r8.mLoaded
            if (r0 == 0) goto L5
            return
        L5:
            r0 = 0
            de.robv.android.xposed.services.BaseService r1 = de.robv.android.xposed.SELinuxHelper.getAppDataFileService()     // Catch: java.lang.Throwable -> L40 java.io.IOException -> L51 java.io.FileNotFoundException -> L5e org.xmlpull.v1.XmlPullParserException -> L6f
            java.lang.String r2 = r8.mFilename     // Catch: java.lang.Throwable -> L40 java.io.IOException -> L51 java.io.FileNotFoundException -> L5e org.xmlpull.v1.XmlPullParserException -> L6f
            long r3 = r8.mFileSize     // Catch: java.lang.Throwable -> L40 java.io.IOException -> L51 java.io.FileNotFoundException -> L5e org.xmlpull.v1.XmlPullParserException -> L6f
            long r5 = r8.mLastModified     // Catch: java.lang.Throwable -> L40 java.io.IOException -> L51 java.io.FileNotFoundException -> L5e org.xmlpull.v1.XmlPullParserException -> L6f
            de.robv.android.xposed.services.FileResult r1 = r1.getFileInputStream(r2, r3, r5)     // Catch: java.lang.Throwable -> L40 java.io.IOException -> L51 java.io.FileNotFoundException -> L5e org.xmlpull.v1.XmlPullParserException -> L6f
            java.io.InputStream r2 = r1.stream     // Catch: java.lang.Throwable -> L32 java.io.IOException -> L34 java.io.FileNotFoundException -> L38 org.xmlpull.v1.XmlPullParserException -> L3c
            if (r2 == 0) goto L22
            java.util.HashMap r0 = com.android.internal.util.XmlUtils.readMapXml(r2)     // Catch: java.lang.Throwable -> L32 java.io.IOException -> L34 java.io.FileNotFoundException -> L38 org.xmlpull.v1.XmlPullParserException -> L3c
            java.io.InputStream r2 = r1.stream     // Catch: java.lang.Throwable -> L32 java.io.IOException -> L34 java.io.FileNotFoundException -> L38 org.xmlpull.v1.XmlPullParserException -> L3c
            r2.close()     // Catch: java.lang.Throwable -> L32 java.io.IOException -> L34 java.io.FileNotFoundException -> L38 org.xmlpull.v1.XmlPullParserException -> L3c
            goto L24
        L22:
            java.util.Map<java.lang.String, java.lang.Object> r0 = r8.mMap     // Catch: java.lang.Throwable -> L32 java.io.IOException -> L34 java.io.FileNotFoundException -> L38 org.xmlpull.v1.XmlPullParserException -> L3c
        L24:
            java.io.InputStream r2 = r1.stream
            if (r2 == 0) goto L7c
            r2.close()     // Catch: java.lang.Exception -> L2d java.lang.RuntimeException -> L30
            goto L7c
        L2d:
            goto L7c
        L30:
            r0 = move-exception
            throw r0
        L32:
            r0 = move-exception
            goto L44
        L34:
            r7 = r1
            r1 = r0
            r0 = r7
            goto L52
        L38:
            r7 = r1
            r1 = r0
            r0 = r7
            goto L5f
        L3c:
            r7 = r1
            r1 = r0
            r0 = r7
            goto L70
        L40:
            r1 = move-exception
            r7 = r1
            r1 = r0
            r0 = r7
        L44:
            if (r1 == 0) goto L50
            java.io.InputStream r1 = r1.stream
            if (r1 == 0) goto L50
            r1.close()     // Catch: java.lang.RuntimeException -> L4e java.lang.Exception -> L50
            goto L50
        L4e:
            r0 = move-exception
            throw r0
        L50:
            throw r0
        L51:
            r1 = r0
        L52:
            if (r0 == 0) goto L6b
            java.io.InputStream r2 = r0.stream
            if (r2 == 0) goto L6b
            r2.close()     // Catch: java.lang.RuntimeException -> L5c java.lang.Exception -> L6b
            goto L6b
        L5c:
            r0 = move-exception
            throw r0
        L5e:
            r1 = r0
        L5f:
            if (r0 == 0) goto L6b
            java.io.InputStream r2 = r0.stream
            if (r2 == 0) goto L6b
            r2.close()     // Catch: java.lang.RuntimeException -> L69 java.lang.Exception -> L6b
            goto L6b
        L69:
            r0 = move-exception
            throw r0
        L6b:
            r7 = r1
            r1 = r0
            r0 = r7
            goto L7c
        L6f:
            r1 = r0
        L70:
            if (r0 == 0) goto L6b
            java.io.InputStream r2 = r0.stream
            if (r2 == 0) goto L6b
            r2.close()     // Catch: java.lang.Exception -> L6b java.lang.RuntimeException -> L7a
            goto L6b
        L7a:
            r0 = move-exception
            throw r0
        L7c:
            r2 = 1
            r8.mLoaded = r2
            if (r0 == 0) goto L8c
            r8.mMap = r0
            long r2 = r1.mtime
            r8.mLastModified = r2
            long r0 = r1.size
            r8.mFileSize = r0
            goto L93
        L8c:
            java.util.HashMap r0 = new java.util.HashMap
            r0.<init>()
            r8.mMap = r0
        L93:
            r8.notifyAll()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: de.robv.android.xposed.XSharedPreferences.loadFromDiskLocked():void");
    }

    private void startLoadFromDisk() {
        synchronized (this) {
            this.mLoaded = false;
        }
        new Thread("XSharedPreferences-load") { // from class: de.robv.android.xposed.XSharedPreferences.1
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                synchronized (XSharedPreferences.this) {
                    XSharedPreferences.this.loadFromDiskLocked();
                }
            }
        }.start();
    }

    @Override // android.content.SharedPreferences
    public boolean contains(String key) {
        boolean containsKey;
        synchronized (this) {
            awaitLoadedLocked();
            containsKey = this.mMap.containsKey(key);
        }
        return containsKey;
    }

    @Override // android.content.SharedPreferences
    @Deprecated
    public SharedPreferences.Editor edit() {
        throw new UnsupportedOperationException("read-only implementation");
    }

    @Override // android.content.SharedPreferences
    public Map<String, ?> getAll() {
        HashMap hashMap;
        synchronized (this) {
            awaitLoadedLocked();
            hashMap = new HashMap(this.mMap);
        }
        return hashMap;
    }

    @Override // android.content.SharedPreferences
    public boolean getBoolean(String key, boolean defValue) {
        synchronized (this) {
            awaitLoadedLocked();
            Boolean bool = (Boolean) this.mMap.get(key);
            if (bool != null) {
                defValue = bool.booleanValue();
            }
        }
        return defValue;
    }

    public File getFile() {
        return this.mFile;
    }

    @Override // android.content.SharedPreferences
    public float getFloat(String key, float defValue) {
        synchronized (this) {
            awaitLoadedLocked();
            Float f4 = (Float) this.mMap.get(key);
            if (f4 != null) {
                defValue = f4.floatValue();
            }
        }
        return defValue;
    }

    @Override // android.content.SharedPreferences
    public int getInt(String key, int defValue) {
        synchronized (this) {
            awaitLoadedLocked();
            Integer num = (Integer) this.mMap.get(key);
            if (num != null) {
                defValue = num.intValue();
            }
        }
        return defValue;
    }

    @Override // android.content.SharedPreferences
    public long getLong(String key, long defValue) {
        synchronized (this) {
            awaitLoadedLocked();
            Long l4 = (Long) this.mMap.get(key);
            if (l4 != null) {
                defValue = l4.longValue();
            }
        }
        return defValue;
    }

    @Override // android.content.SharedPreferences
    public String getString(String key, String defValue) {
        synchronized (this) {
            awaitLoadedLocked();
            String str = (String) this.mMap.get(key);
            if (str != null) {
                defValue = str;
            }
        }
        return defValue;
    }

    @Override // android.content.SharedPreferences
    public Set<String> getStringSet(String key, Set<String> defValues) {
        synchronized (this) {
            awaitLoadedLocked();
            Set<String> set = (Set) this.mMap.get(key);
            if (set != null) {
                defValues = set;
            }
        }
        return defValues;
    }

    public synchronized boolean hasFileChanged() {
        boolean z3;
        z3 = true;
        try {
            FileResult statFile = SELinuxHelper.getAppDataFileService().statFile(this.mFilename);
            if (this.mLastModified == statFile.mtime) {
                if (this.mFileSize == statFile.size) {
                    z3 = false;
                }
            }
        } catch (FileNotFoundException unused) {
            return true;
        } catch (IOException unused2) {
            return true;
        }
        return z3;
    }

    @SuppressLint({"SetWorldReadable"})
    public boolean makeWorldReadable() {
        if (SELinuxHelper.getAppDataFileService().hasDirectFileAccess() && this.mFile.exists()) {
            return this.mFile.setReadable(true, false);
        }
        return false;
    }

    @Override // android.content.SharedPreferences
    @Deprecated
    public void registerOnSharedPreferenceChangeListener(SharedPreferences.OnSharedPreferenceChangeListener listener) {
        throw new UnsupportedOperationException("listeners are not supported in this implementation");
    }

    public synchronized void reload() {
        if (hasFileChanged()) {
            startLoadFromDisk();
        }
    }

    @Override // android.content.SharedPreferences
    @Deprecated
    public void unregisterOnSharedPreferenceChangeListener(SharedPreferences.OnSharedPreferenceChangeListener listener) {
        throw new UnsupportedOperationException("listeners are not supported in this implementation");
    }

    public XSharedPreferences(String packageName) {
        this(packageName, packageName + "_preferences");
    }

    public XSharedPreferences(String packageName, String prefFileName) {
        this.mLoaded = false;
        File dataDirectory = Environment.getDataDirectory();
        File file = new File(dataDirectory, "data/" + packageName + "/shared_prefs/" + prefFileName + ".xml");
        this.mFile = file;
        this.mFilename = file.getAbsolutePath();
        startLoadFromDisk();
    }
}
