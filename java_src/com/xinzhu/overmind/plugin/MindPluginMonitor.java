package com.xinzhu.overmind.plugin;

import android.app.ActivityManager;
import android.content.ContentProvider;
import android.content.ContentValues;
import android.database.Cursor;
import android.net.Uri;
import android.os.Binder;
import android.os.Bundle;
import android.os.ParcelFileDescriptor;
import android.os.Process;
import android.os.RemoteException;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.xinzhu.overmind.Overmind;
import com.xinzhu.overmind.client.frameworks.c;
import com.xinzhu.overmind.plugin.a;
import com.xinzhu.overmind.server.os.MindShareFileInfo;
import com.xinzhu.overmind.server.pm.MindPackageSettings;
import com.xinzhu.overmind.utils.j;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class MindPluginMonitor extends ContentProvider {

    /* renamed from: b  reason: collision with root package name */
    private static final String f64332b = MindPluginMonitor.class.getSimpleName();

    /* renamed from: a  reason: collision with root package name */
    private Binder f64333a;

    /* loaded from: classes3.dex */
    class a extends a.b {
        a() {
        }

        private boolean isFileAccessible(File file) {
            try {
                if (file.exists()) {
                    new FileInputStream(file).close();
                    return true;
                }
                return false;
            } catch (Throwable unused) {
                return false;
            }
        }

        @Override // com.xinzhu.overmind.plugin.a
        public MindShareFileInfo checkFile(String path) throws RemoteException {
            return new MindShareFileInfo(new File(path));
        }

        @Override // com.xinzhu.overmind.plugin.a
        public void copyDir(String from, String target) throws RemoteException {
            String str = MindPluginMonitor.f64332b;
            com.xinzhu.overmind.b.a(str, "copyDir from :" + from + " to :" + target);
            c.c().b(from, target);
        }

        @Override // com.xinzhu.overmind.plugin.a
        public void copyFile(String from, String target) throws RemoteException {
            String str = MindPluginMonitor.f64332b;
            com.xinzhu.overmind.b.a(str, "copyFile from :" + from + " to :" + target);
            c.c().a(from, target);
        }

        @Override // com.xinzhu.overmind.plugin.a
        public void deleteAllPackages() throws RemoteException {
        }

        @Override // com.xinzhu.overmind.plugin.a
        public void deleteFileOrDir(String target) throws RemoteException {
            j.k(target);
        }

        @Override // com.xinzhu.overmind.plugin.a
        public void deletePackage(String pkgName, int userId) throws RemoteException {
        }

        @Override // com.xinzhu.overmind.plugin.a
        public void finishPlugin() throws RemoteException {
        }

        @Override // com.xinzhu.overmind.plugin.a
        public List<ActivityManager.RecentTaskInfo> getRecentTasks(int maxNum, int flags) throws RemoteException {
            return ((ActivityManager) Overmind.getContext().getSystemService(TTDownloadField.TT_ACTIVITY)).getRecentTasks(maxNum, flags);
        }

        @Override // com.xinzhu.overmind.plugin.a
        public List<ActivityManager.RunningAppProcessInfo> getRunningAppProcesses() throws RemoteException {
            return ((ActivityManager) Overmind.getContext().getSystemService(TTDownloadField.TT_ACTIVITY)).getRunningAppProcesses();
        }

        @Override // com.xinzhu.overmind.plugin.a
        public int initWorks() throws RemoteException {
            com.xinzhu.overmind.b.c(MindPluginMonitor.f64332b, "MindPluginMonitor encureConnected");
            return 0;
        }

        @Override // com.xinzhu.overmind.plugin.a
        public void killProcess(int target) throws RemoteException {
            Process.killProcess(target);
        }

        @Override // com.xinzhu.overmind.plugin.a
        public List<MindShareFileInfo> listFiles(String path) throws RemoteException {
            ArrayList arrayList = new ArrayList();
            File[] listFiles = new File(path).listFiles();
            if (listFiles != null && listFiles.length != 0) {
                for (File file : listFiles) {
                    arrayList.add(new MindShareFileInfo(file));
                }
            }
            return arrayList;
        }

        @Override // com.xinzhu.overmind.plugin.a
        public ParcelFileDescriptor openAsParcelFile(String path) throws RemoteException {
            try {
                return ParcelFileDescriptor.open(new File(path), 268435456);
            } catch (FileNotFoundException e4) {
                e4.printStackTrace();
                return null;
            }
        }

        @Override // com.xinzhu.overmind.plugin.a
        public void syncAllPackages() throws RemoteException {
            File[] listFiles;
            boolean z3;
            try {
                com.xinzhu.overmind.b.c(MindPluginMonitor.f64332b, "syncAllPackages invoked " + Overmind.getHostPkg() + " " + com.xinzhu.overmind.a.i().getAbsolutePath());
                List<MindShareFileInfo> e4 = c.c().e(com.xinzhu.overmind.a.h().getAbsolutePath());
                if (com.xinzhu.overmind.a.i().listFiles() != null) {
                    for (File file : com.xinzhu.overmind.a.i().listFiles()) {
                        if (e4 == null || e4.isEmpty()) {
                            z3 = false;
                        } else {
                            z3 = false;
                            for (MindShareFileInfo mindShareFileInfo : e4) {
                                if (file.getName().equals(new File(mindShareFileInfo.f64496a).getName())) {
                                    z3 = true;
                                }
                            }
                        }
                        if (!z3) {
                            j.j(file);
                            com.xinzhu.overmind.b.c(MindPluginMonitor.f64332b, "syncAllPackages delete unexist package " + file.getName());
                        }
                    }
                }
                if (e4 == null || e4.isEmpty()) {
                    return;
                }
                for (MindShareFileInfo mindShareFileInfo2 : e4) {
                    String name = new File(mindShareFileInfo2.f64496a).getName();
                    MindPackageSettings k4 = Overmind.getMindPackageManager().k(name);
                    if (k4 != null && k4.t()) {
                        File e5 = com.xinzhu.overmind.a.e(name);
                        if (!e5.exists()) {
                            com.xinzhu.overmind.b.c(MindPluginMonitor.f64332b, "syncAllPackages copy package " + name);
                            c.c().b(mindShareFileInfo2.f64496a, e5.getAbsolutePath());
                        }
                    }
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }

        @Override // com.xinzhu.overmind.plugin.a
        public void syncPackage(String pkgName, int userId) throws RemoteException {
            try {
                String str = MindPluginMonitor.f64332b;
                com.xinzhu.overmind.b.c(str, "syncPackage invoked " + pkgName + " " + userId);
                j.j(com.xinzhu.overmind.a.e(pkgName));
                c.c().b(com.xinzhu.overmind.a.d(pkgName).getAbsolutePath(), com.xinzhu.overmind.a.e(pkgName).getAbsolutePath());
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    @Override // android.content.ContentProvider
    public Bundle call(@NonNull String method, @Nullable String arg, @Nullable Bundle extras) {
        if (method.equals("init")) {
            Bundle bundle = new Bundle();
            com.xinzhu.overmind.utils.helpers.b.d(bundle, "PluginMonitor", this.f64333a);
            return bundle;
        }
        return null;
    }

    @Override // android.content.ContentProvider
    public int delete(@NonNull Uri uri, @Nullable String selection, @Nullable String[] selectionArgs) {
        return 0;
    }

    @Override // android.content.ContentProvider
    @Nullable
    public String getType(@NonNull Uri uri) {
        return null;
    }

    @Override // android.content.ContentProvider
    @Nullable
    public Uri insert(@NonNull Uri uri, @Nullable ContentValues values) {
        return null;
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        this.f64333a = new a();
        return true;
    }

    @Override // android.content.ContentProvider
    @Nullable
    public Cursor query(@NonNull Uri uri, @Nullable String[] projection, @Nullable String selection, @Nullable String[] selectionArgs, @Nullable String sortOrder) {
        return null;
    }

    @Override // android.content.ContentProvider
    public int update(@NonNull Uri uri, @Nullable ContentValues values, @Nullable String selection, @Nullable String[] selectionArgs) {
        return 0;
    }
}
