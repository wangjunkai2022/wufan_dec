package com.mob.commons.cc;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import java.util.ArrayList;
/* loaded from: classes4.dex */
public class m implements ServiceConnection, t<m> {

    /* renamed from: a  reason: collision with root package name */
    private p f52917a;

    @Override // android.content.ServiceConnection
    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        if (this.f52917a != null) {
            try {
                ArrayList<Object> arrayList = new ArrayList<>(2);
                arrayList.add(componentName);
                arrayList.add(iBinder);
                this.f52917a.a("onServiceConnected", arrayList);
            } catch (Throwable unused) {
            }
        }
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
        if (this.f52917a != null) {
            ArrayList<Object> arrayList = new ArrayList<>(1);
            arrayList.add(componentName);
            this.f52917a.a("onServiceDisconnected", arrayList);
        }
    }

    public void a(p pVar) {
        this.f52917a = pVar;
    }

    @Override // com.mob.commons.cc.t
    public boolean a(m mVar, Class<m> cls, String str, Object[] objArr, boolean[] zArr, Object[] objArr2, Throwable[] thArr) {
        if ("setHandler".equals(str) && objArr.length == 1) {
            mVar.a((p) objArr[0]);
            return true;
        }
        return false;
    }
}
