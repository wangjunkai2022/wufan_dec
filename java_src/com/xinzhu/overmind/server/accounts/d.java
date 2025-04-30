package com.xinzhu.overmind.server.accounts;

import android.accounts.AuthenticatorDescription;
import android.os.Handler;
import com.xinzhu.overmind.server.pm.l;
import com.xinzhu.overmind.server.pm.m;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.Collection;
/* compiled from: IAccountAuthenticatorCache.java */
/* loaded from: classes3.dex */
public interface d {
    void a(int userId);

    void b(int userId);

    void c(m<AuthenticatorDescription> listener, Handler handler);

    l.d<AuthenticatorDescription> d(AuthenticatorDescription type, int userId);

    Collection<l.d<AuthenticatorDescription>> e(int userId);

    void f(FileDescriptor fd, PrintWriter fout, String[] args, int userId);
}
