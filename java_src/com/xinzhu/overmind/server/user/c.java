package com.xinzhu.overmind.server.user;

import android.os.Parcel;
import android.os.RemoteException;
import androidx.core.util.AtomicFile;
import com.xinzhu.overmind.server.pm.h;
import com.xinzhu.overmind.server.user.a;
import com.xinzhu.overmind.utils.j;
import com.xinzhu.overmind.utils.l;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
/* compiled from: MindUserManagerService.java */
/* loaded from: classes.dex */
public class c extends a.b implements com.xinzhu.overmind.server.c {
    private static c sService = new c();
    public final HashMap<Integer, MindUserInfo> mUsers = new HashMap<>();
    public final Object mUserLock = new Object();
    private List<b> mUserListeners = new ArrayList();

    private MindUserInfo createUserLocked(int userId) {
        MindUserInfo mindUserInfo = new MindUserInfo();
        mindUserInfo.f64670a = userId;
        mindUserInfo.f64671b = MindUserStatus.ENABLE;
        this.mUsers.put(Integer.valueOf(userId), mindUserInfo);
        synchronized (this.mUsers) {
            saveUserInfoLocked();
        }
        for (b bVar : this.mUserListeners) {
            bVar.b(userId);
        }
        if (com.xinzhu.overmind.client.hook.env.b.a()) {
            com.xinzhu.overmind.client.hook.env.b.d(userId);
        }
        return mindUserInfo;
    }

    public static c get() {
        return sService;
    }

    private void saveUserInfoLocked() {
        Parcel obtain = Parcel.obtain();
        AtomicFile atomicFile = new AtomicFile(com.xinzhu.overmind.a.R());
        try {
            obtain.writeTypedList(new ArrayList(this.mUsers.values()));
            FileOutputStream fileOutputStream = null;
            try {
                fileOutputStream = atomicFile.startWrite();
                j.z(obtain, fileOutputStream);
                atomicFile.finishWrite(fileOutputStream);
                l.a(fileOutputStream);
            } catch (IOException e4) {
                e4.printStackTrace();
                atomicFile.failWrite(fileOutputStream);
                l.a(fileOutputStream);
            }
        } finally {
            obtain.recycle();
        }
    }

    private void scanUserL() {
        Throwable th;
        FileInputStream fileInputStream;
        Exception e4;
        ArrayList createTypedArrayList;
        synchronized (this.mUserLock) {
            Parcel obtain = Parcel.obtain();
            try {
                try {
                } catch (Throwable th2) {
                    th = th2;
                    obtain.recycle();
                    l.a(null);
                    throw th;
                }
            } catch (Exception e5) {
                fileInputStream = null;
                e4 = e5;
            } catch (Throwable th3) {
                th = th3;
                obtain.recycle();
                l.a(null);
                throw th;
            }
            if (!com.xinzhu.overmind.a.R().exists()) {
                obtain.recycle();
                l.a(null);
                return;
            }
            fileInputStream = new FileInputStream(com.xinzhu.overmind.a.R());
            try {
                byte[] w3 = j.w(fileInputStream);
                obtain.unmarshall(w3, 0, w3.length);
                obtain.setDataPosition(0);
                createTypedArrayList = obtain.createTypedArrayList(MindUserInfo.CREATOR);
            } catch (Exception e6) {
                e4 = e6;
                e4.printStackTrace();
                obtain.recycle();
                l.a(fileInputStream);
            }
            if (createTypedArrayList == null) {
                obtain.recycle();
                l.a(fileInputStream);
                return;
            }
            synchronized (this.mUsers) {
                this.mUsers.clear();
                Iterator it2 = createTypedArrayList.iterator();
                while (it2.hasNext()) {
                    MindUserInfo mindUserInfo = (MindUserInfo) it2.next();
                    this.mUsers.put(Integer.valueOf(mindUserInfo.f64670a), mindUserInfo);
                }
            }
            obtain.recycle();
            l.a(fileInputStream);
        }
    }

    @Override // com.xinzhu.overmind.server.user.a
    public MindUserInfo createUser(int userId) throws RemoteException {
        synchronized (this.mUserLock) {
            if (exists(userId)) {
                return getUserInfo(userId);
            }
            return createUserLocked(userId);
        }
    }

    @Override // com.xinzhu.overmind.server.user.a
    public void deleteUser(int userId) throws RemoteException {
        synchronized (this.mUserLock) {
            synchronized (this.mUsers) {
                h.get().deleteUser(userId);
                this.mUsers.remove(Integer.valueOf(userId));
                saveUserInfoLocked();
                j.j(com.xinzhu.overmind.a.P(userId));
                for (b bVar : this.mUserListeners) {
                    bVar.c(userId);
                    bVar.a(userId);
                }
            }
        }
    }

    @Override // com.xinzhu.overmind.server.user.a
    public boolean exists(int userId) {
        boolean z3;
        synchronized (this.mUsers) {
            z3 = this.mUsers.get(Integer.valueOf(userId)) != null;
        }
        return z3;
    }

    public List<MindUserInfo> getAllUsers() {
        ArrayList arrayList;
        synchronized (this.mUsers) {
            arrayList = new ArrayList(this.mUsers.values());
        }
        return arrayList;
    }

    @Override // com.xinzhu.overmind.server.user.a
    public MindUserInfo getUserInfo(int userId) {
        MindUserInfo mindUserInfo;
        synchronized (this.mUserLock) {
            mindUserInfo = this.mUsers.get(Integer.valueOf(userId));
        }
        return mindUserInfo;
    }

    @Override // com.xinzhu.overmind.server.user.a
    public List<MindUserInfo> getUsers() {
        ArrayList arrayList;
        synchronized (this.mUsers) {
            arrayList = new ArrayList();
            for (MindUserInfo mindUserInfo : this.mUsers.values()) {
                if (mindUserInfo.f64670a >= 0) {
                    arrayList.add(mindUserInfo);
                }
            }
        }
        return arrayList;
    }

    public void registerListener(b listener) {
        synchronized (this.mUserLock) {
            this.mUserListeners.add(listener);
        }
    }

    public void removeListener(b listener) {
        synchronized (this.mUserLock) {
            this.mUserListeners.remove(listener);
        }
    }

    @Override // com.xinzhu.overmind.server.c
    public void systemReady() {
        scanUserL();
    }
}
