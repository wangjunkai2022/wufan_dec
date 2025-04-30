package com.xinzhu.overmind.client.hook.proxies.os.storage;

import android.os.IInterface;
import android.os.Process;
import android.os.storage.StorageManager;
import com.xinzhu.haunted.android.os.q;
import com.xinzhu.haunted.android.os.storage.a;
import com.xinzhu.haunted.android.os.storage.b;
import com.xinzhu.overmind.Overmind;
import com.xinzhu.overmind.client.e;
import com.xinzhu.overmind.client.hook.common.d;
import com.xinzhu.overmind.client.hook.g;
import java.io.File;
import java.lang.reflect.Method;
/* compiled from: StorageManagerStub.java */
/* loaded from: classes.dex */
public class a extends com.xinzhu.overmind.client.hook.b {

    /* compiled from: StorageManagerStub.java */
    /* renamed from: com.xinzhu.overmind.client.hook.proxies.os.storage.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    static class C0416a extends g {
        C0416a() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public String c() {
            return "fixupAppDir";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            if (args != null && args.length == 1) {
                String str = (String) args[0];
                args[0] = Overmind.getContext().getExternalCacheDir().getAbsolutePath();
                return method.invoke(who, args);
            }
            return method.invoke(who, args);
        }
    }

    /* compiled from: StorageManagerStub.java */
    /* loaded from: classes3.dex */
    static class b extends g {
        b() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public String c() {
            return "getVolumeList";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            if (args == null) {
                return Overmind.getMindStorageManager().d(Process.myUid(), null, 0, e.getUserId());
            }
            int intValue = ((Integer) args[2]).intValue();
            return Overmind.getMindStorageManager().d(((Integer) args[0]).intValue(), (String) args[1], intValue, e.getUserId());
        }
    }

    /* compiled from: StorageManagerStub.java */
    /* loaded from: classes.dex */
    static class c extends g {
        c() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public String c() {
            return "mkdirs";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            File file = new File((String) args[args.length == 1 ? (char) 0 : (char) 1]);
            if (file.exists()) {
                return 0;
            }
            return Integer.valueOf(file.mkdirs() ? 0 : -1);
        }
    }

    public a() {
        super(q.h("mount"));
    }

    @Override // com.xinzhu.overmind.client.hook.e
    public boolean a() {
        return false;
    }

    @Override // com.xinzhu.overmind.client.hook.c
    protected Object h() {
        if (com.xinzhu.overmind.utils.e.v()) {
            return b.a.a(q.h("mount"));
        }
        return a.C0382a.a(q.h("mount"));
    }

    @Override // com.xinzhu.overmind.client.hook.c
    protected void i(Object baseInvocation, Object proxyInvocation) {
        m("mount");
        try {
            com.xinzhu.haunted.android.os.storage.c cVar = new com.xinzhu.haunted.android.os.storage.c((StorageManager) Overmind.getContext().getSystemService("storage"));
            if (cVar.a()) {
                cVar.g((IInterface) proxyInvocation);
            }
            if (com.xinzhu.haunted.android.os.storage.c.b()) {
                com.xinzhu.haunted.android.os.storage.c.h((IInterface) proxyInvocation);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // com.xinzhu.overmind.client.hook.c, java.lang.reflect.InvocationHandler
    public Object invoke(Object proxy, Method method, Object[] args) throws Throwable {
        com.xinzhu.overmind.utils.helpers.a.c(args);
        return super.invoke(proxy, method, args);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.xinzhu.overmind.client.hook.b, com.xinzhu.overmind.client.hook.c
    public void k() {
        super.k();
        d(new com.xinzhu.overmind.client.hook.common.e("getVolumeList", 0));
        d(new d("createUserKey", d.f64083e, 0));
        d(new d("destroyUserKey", d.f64083e, 0));
        d(new d("unlockUserKey", d.f64083e, 0));
        d(new d("lockUserKey", d.f64083e, 0));
        d(new d("isUserKeyUnlocked", d.f64083e, 0));
        d(new d("prepareUserStorage", d.f64083e, 1));
        d(new d("destroyUserStorage", d.f64083e, 1));
        d(new d("addUserKeyAuth", d.f64083e, 0));
        d(new d("fixateNewestUserKeyAuth", d.f64083e, 0));
        d(new d("clearUserKeyAuth", d.f64083e, 0));
        d(new c());
        d(new C0416a());
    }
}
