package com.xinzhu.overmind.client.frameworks;

import android.os.RemoteException;
import com.xinzhu.overmind.Overmind;
import com.xinzhu.overmind.server.user.MindUserInfo;
import com.xinzhu.overmind.server.user.a;
import java.util.Collections;
import java.util.List;
/* compiled from: MindUserManager.java */
/* loaded from: classes.dex */
public class h {

    /* renamed from: b  reason: collision with root package name */
    private static h f64069b = new h();

    /* renamed from: a  reason: collision with root package name */
    private com.xinzhu.overmind.server.user.a f64070a;

    public static h d() {
        return f64069b;
    }

    private com.xinzhu.overmind.server.user.a e() {
        com.xinzhu.overmind.server.user.a aVar = this.f64070a;
        if (aVar != null && aVar.asBinder().isBinderAlive()) {
            return this.f64070a;
        }
        this.f64070a = a.b.asInterface(Overmind.get().getService(com.xinzhu.overmind.server.g.f64481h));
        return e();
    }

    public MindUserInfo a(int userId) {
        try {
            return e().createUser(userId);
        } catch (RemoteException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    public void b(int userId) {
        try {
            e().deleteUser(userId);
        } catch (RemoteException e4) {
            e4.printStackTrace();
        }
    }

    public boolean c(int userId) {
        try {
            return e().exists(userId);
        } catch (RemoteException e4) {
            e4.printStackTrace();
            return false;
        }
    }

    public List<MindUserInfo> f() {
        try {
            return e().getUsers();
        } catch (RemoteException e4) {
            e4.printStackTrace();
            return Collections.emptyList();
        }
    }
}
