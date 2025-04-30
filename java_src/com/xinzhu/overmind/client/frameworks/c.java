package com.xinzhu.overmind.client.frameworks;

import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
import com.xinzhu.overmind.Overmind;
import com.xinzhu.overmind.server.os.MindShareFileInfo;
import com.xinzhu.overmind.server.os.b;
import com.xinzhu.overmind.utils.j;
import java.io.File;
import java.util.List;
/* compiled from: MindFileShare.java */
/* loaded from: classes3.dex */
public class c {

    /* renamed from: b  reason: collision with root package name */
    private static final String f64057b = "c";

    /* renamed from: c  reason: collision with root package name */
    private static c f64058c = new c();

    /* renamed from: a  reason: collision with root package name */
    private com.xinzhu.overmind.server.os.b f64059a;

    public static c c() {
        return f64058c;
    }

    private com.xinzhu.overmind.server.os.b d() {
        com.xinzhu.overmind.server.os.b bVar = this.f64059a;
        if (bVar != null && bVar.asBinder().isBinderAlive()) {
            return this.f64059a;
        }
        this.f64059a = b.AbstractBinderC0433b.asInterface(Overmind.get().getService(com.xinzhu.overmind.server.g.f64482i));
        return d();
    }

    public void a(String from, String target) {
        try {
            j.p(new File(target).getParentFile());
            ParcelFileDescriptor f4 = f(from);
            if (f4 != null) {
                ParcelFileDescriptor.AutoCloseInputStream autoCloseInputStream = new ParcelFileDescriptor.AutoCloseInputStream(f4);
                j.e(autoCloseInputStream, new File(target));
                autoCloseInputStream.close();
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void b(String from, String target) {
        try {
            List<MindShareFileInfo> e4 = e(from);
            if (e4 != null && !e4.isEmpty()) {
                j.p(new File(target));
                for (MindShareFileInfo mindShareFileInfo : e4) {
                    File file = new File(mindShareFileInfo.f64496a);
                    File file2 = new File(target, file.getName());
                    if (mindShareFileInfo.f64498c.booleanValue()) {
                        if (!file.getName().equals("oat")) {
                            b(mindShareFileInfo.f64496a, file2.getAbsolutePath());
                        }
                    } else {
                        a(mindShareFileInfo.f64496a, file2.getAbsolutePath());
                    }
                }
                return;
            }
            com.xinzhu.overmind.b.c(f64057b, "copyDirectory get empty file list");
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public List<MindShareFileInfo> e(String path) {
        try {
            return d().listFiles(path);
        } catch (RemoteException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    public ParcelFileDescriptor f(String path) {
        try {
            return d().openAsParcelFile(path);
        } catch (RemoteException e4) {
            e4.printStackTrace();
            return null;
        }
    }
}
