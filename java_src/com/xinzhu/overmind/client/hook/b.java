package com.xinzhu.overmind.client.hook;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.xinzhu.haunted.android.os.q;
import java.io.FileDescriptor;
import java.lang.reflect.Method;
/* compiled from: BinderInvocationStub.java */
/* loaded from: classes.dex */
public abstract class b extends c implements IBinder {

    /* renamed from: e  reason: collision with root package name */
    private IBinder f64072e;

    /* compiled from: BinderInvocationStub.java */
    /* loaded from: classes.dex */
    class a extends g {
        a() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public String c() {
            return "asBinder";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            return b.this.f64072e;
        }
    }

    public b(IBinder baseBinder) {
        this.f64072e = baseBinder;
    }

    @Override // android.os.IBinder
    public void dump(@NonNull FileDescriptor fd, @Nullable String[] args) throws RemoteException {
        this.f64072e.dump(fd, args);
    }

    @Override // android.os.IBinder
    public void dumpAsync(@NonNull FileDescriptor fd, @Nullable String[] args) throws RemoteException {
        this.f64072e.dumpAsync(fd, args);
    }

    @Override // android.os.IBinder
    @Nullable
    public String getInterfaceDescriptor() throws RemoteException {
        return this.f64072e.getInterfaceDescriptor();
    }

    @Override // android.os.IBinder
    public boolean isBinderAlive() {
        return this.f64072e.isBinderAlive();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.xinzhu.overmind.client.hook.c
    public void k() {
        d(new a());
    }

    @Override // android.os.IBinder
    public void linkToDeath(@NonNull IBinder.DeathRecipient recipient, int flags) throws RemoteException {
        this.f64072e.linkToDeath(recipient, flags);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void m(String name) {
        q.i().put(name, this);
    }

    @Override // android.os.IBinder
    public boolean pingBinder() {
        return this.f64072e.pingBinder();
    }

    @Override // android.os.IBinder
    @Nullable
    public IInterface queryLocalInterface(@NonNull String descriptor) {
        return (IInterface) g();
    }

    @Override // android.os.IBinder
    public boolean transact(int code, @NonNull Parcel data, @Nullable Parcel reply, int flags) throws RemoteException {
        return this.f64072e.transact(code, data, reply, flags);
    }

    @Override // android.os.IBinder
    public boolean unlinkToDeath(@NonNull IBinder.DeathRecipient recipient, int flags) {
        return this.f64072e.unlinkToDeath(recipient, flags);
    }
}
