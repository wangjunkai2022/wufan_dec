package com.xinzhu.overmind.server.pm;

import android.os.RemoteException;
import com.xinzhu.overmind.entity.pm.InstallOption;
import com.xinzhu.overmind.server.pm.c;
import com.xinzhu.overmind.utils.u;
import java.util.ArrayList;
/* compiled from: MindPackageInstallerService.java */
/* loaded from: classes.dex */
public class g extends c.b implements com.xinzhu.overmind.server.c {
    public static final String TAG = "MindPackageInstallerService";
    private static g sService = new g();

    public static g get() {
        return sService;
    }

    @Override // com.xinzhu.overmind.server.pm.c
    public int installPackageAsExist(MindPackageSettings ps, int userId) throws RemoteException {
        ArrayList<com.xinzhu.overmind.server.pm.installer.d> arrayList = new ArrayList();
        arrayList.add(new com.xinzhu.overmind.server.pm.installer.c());
        InstallOption installOption = ps.f64565c;
        for (com.xinzhu.overmind.server.pm.installer.d dVar : arrayList) {
            int a4 = dVar.a(ps, installOption, userId);
            u.a(TAG, "installPackageAsUser_Storage: " + dVar.getClass().getSimpleName() + " exec: " + a4);
            if (a4 != 0) {
                return a4;
            }
        }
        return 0;
    }

    @Override // com.xinzhu.overmind.server.pm.c
    public int installPackageAsUser(MindPackageSettings ps, int userId) throws RemoteException {
        ArrayList<com.xinzhu.overmind.server.pm.installer.d> arrayList = new ArrayList();
        arrayList.add(new com.xinzhu.overmind.server.pm.installer.c());
        arrayList.add(new com.xinzhu.overmind.server.pm.installer.b());
        arrayList.add(new com.xinzhu.overmind.server.pm.installer.a());
        InstallOption installOption = ps.f64565c;
        for (com.xinzhu.overmind.server.pm.installer.d dVar : arrayList) {
            int a4 = dVar.a(ps, installOption, userId);
            u.a(TAG, "installPackageAsUser_Storage: " + dVar.getClass().getSimpleName() + " exec: " + a4);
            if (a4 != 0) {
                return a4;
            }
        }
        return 0;
    }

    @Override // com.xinzhu.overmind.server.c
    public void systemReady() {
    }

    @Override // com.xinzhu.overmind.server.pm.c
    public int uninstallPackageAsUser(MindPackageSettings ps, boolean removeApp, int userId) {
        ArrayList<com.xinzhu.overmind.server.pm.installer.d> arrayList = new ArrayList();
        if (removeApp) {
            arrayList.add(new com.xinzhu.overmind.server.pm.installer.e());
        }
        arrayList.add(new com.xinzhu.overmind.server.pm.installer.f());
        InstallOption installOption = ps.f64565c;
        for (com.xinzhu.overmind.server.pm.installer.d dVar : arrayList) {
            int a4 = dVar.a(ps, installOption, userId);
            u.a(TAG, "uninstallPackageAsUser: " + dVar.getClass().getSimpleName() + " exec: " + a4);
            if (a4 != 0) {
                return a4;
            }
        }
        return 0;
    }

    @Override // com.xinzhu.overmind.server.pm.c
    public int updatePackage(MindPackageSettings ps) {
        ArrayList<com.xinzhu.overmind.server.pm.installer.d> arrayList = new ArrayList();
        arrayList.add(new com.xinzhu.overmind.server.pm.installer.b());
        arrayList.add(new com.xinzhu.overmind.server.pm.installer.a());
        InstallOption installOption = ps.f64565c;
        for (com.xinzhu.overmind.server.pm.installer.d dVar : arrayList) {
            int a4 = dVar.a(ps, installOption, -1);
            u.a(TAG, "updatePackage: " + dVar.getClass().getSimpleName() + " exec: " + a4);
            if (a4 != 0) {
                return a4;
            }
        }
        return 0;
    }
}
