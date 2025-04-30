package com.join.mgps.socket;

import android.content.Context;
import com.join.mgps.Util.d2;
import com.join.mgps.Util.g0;
import com.join.mgps.socket.entity.e;
import com.join.mgps.socket.entity.h;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.net.Socket;
import java.net.SocketException;
/* compiled from: SocketSendService.java */
/* loaded from: classes4.dex */
public class d implements Runnable {

    /* renamed from: m  reason: collision with root package name */
    private static final String f52048m = d.class.getSimpleName();

    /* renamed from: c  reason: collision with root package name */
    Socket f52051c;

    /* renamed from: d  reason: collision with root package name */
    Context f52052d;

    /* renamed from: j  reason: collision with root package name */
    a f52058j;

    /* renamed from: a  reason: collision with root package name */
    DataOutputStream f52049a = null;

    /* renamed from: b  reason: collision with root package name */
    BufferedInputStream f52050b = null;

    /* renamed from: e  reason: collision with root package name */
    long f52053e = 0;

    /* renamed from: f  reason: collision with root package name */
    long f52054f = 0;

    /* renamed from: g  reason: collision with root package name */
    String f52055g = null;

    /* renamed from: h  reason: collision with root package name */
    String f52056h = null;

    /* renamed from: i  reason: collision with root package name */
    int f52057i = 2;

    /* renamed from: k  reason: collision with root package name */
    boolean f52059k = true;

    /* renamed from: l  reason: collision with root package name */
    String f52060l = null;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SocketSendService.java */
    /* loaded from: classes4.dex */
    public class a extends Thread {

        /* renamed from: a  reason: collision with root package name */
        volatile boolean f52061a = true;

        a() {
        }

        public void a(boolean z3) {
            this.f52061a = z3;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            super.run();
            while (this.f52061a) {
                try {
                    d.this.d();
                    Thread.sleep(1000L);
                } catch (InterruptedException e4) {
                    e4.printStackTrace();
                }
            }
        }
    }

    public d(Socket socket, Context context) {
        this.f52051c = socket;
        this.f52052d = context;
    }

    public void a() {
        try {
            DataOutputStream dataOutputStream = this.f52049a;
            if (dataOutputStream != null) {
                dataOutputStream.close();
            }
            BufferedInputStream bufferedInputStream = this.f52050b;
            if (bufferedInputStream != null) {
                bufferedInputStream.close();
            }
        } catch (SocketException e4) {
            StringBuilder sb = new StringBuilder();
            sb.append(e4.getClass().getName());
            sb.append(":");
            sb.append(e4.getMessage());
        } catch (IOException e5) {
            e5.printStackTrace();
        }
    }

    int b(long j4, long j5) {
        int i2 = (int) ((((float) j5) / ((float) j4)) * 100.0f);
        StringBuilder sb = new StringBuilder();
        sb.append("getReceiverProgress: ");
        sb.append(i2);
        sb.append(":::size::::");
        sb.append(j5);
        return i2;
    }

    void c(int i2) {
        a aVar = this.f52058j;
        if (aVar != null) {
            aVar.a(false);
        }
        this.f52057i = i2;
        d();
    }

    void d() {
        a aVar;
        int b4 = b(this.f52054f, this.f52053e);
        com.join.mgps.socket.entity.c cVar = new com.join.mgps.socket.entity.c();
        cVar.f52103u = b4;
        cVar.f52101s = this.f52055g;
        cVar.f52102t = this.f52060l;
        int i2 = this.f52057i;
        cVar.f52104v = i2;
        cVar.f52080a = 1;
        cVar.f52106x = this.f52056h;
        cVar.f52105w = 0;
        if ((i2 == 3 || i2 == 4) && (aVar = this.f52058j) != null && aVar.f52061a) {
            return;
        }
        org.greenrobot.eventbus.c.f().o(cVar);
    }

    void e(com.join.mgps.socket.entity.d dVar) {
        a aVar;
        if (this.f52049a == null || dVar == null) {
            return;
        }
        this.f52053e = 0L;
        this.f52054f = 0L;
        this.f52055g = null;
        String b4 = dVar.b();
        this.f52060l = b4;
        this.f52056h = null;
        if (g0.x(b4)) {
            try {
                try {
                    this.f52050b = new BufferedInputStream(new FileInputStream(new File(this.f52060l)));
                    this.f52049a.writeInt(2);
                    this.f52049a.flush();
                    long c4 = dVar.c();
                    this.f52054f = c4;
                    this.f52049a.writeLong(c4);
                    this.f52049a.flush();
                    String a4 = dVar.a();
                    this.f52055g = a4;
                    this.f52049a.writeUTF(a4);
                    this.f52049a.flush();
                    String d4 = dVar.d();
                    this.f52056h = d4;
                    this.f52049a.writeUTF(d4);
                    this.f52049a.flush();
                    byte[] bArr = new byte[1048576];
                    a aVar2 = new a();
                    this.f52058j = aVar2;
                    aVar2.start();
                    while (true) {
                        int read = this.f52050b.read(bArr, 0, 1048576);
                        if (read == -1) {
                            break;
                        }
                        this.f52049a.write(bArr, 0, read);
                        long j4 = this.f52053e + read;
                        this.f52053e = j4;
                        if (j4 < this.f52054f) {
                            this.f52057i = 2;
                        } else {
                            c(3);
                        }
                    }
                    this.f52049a.flush();
                    this.f52050b.close();
                    aVar = this.f52058j;
                    if (aVar == null) {
                        return;
                    }
                } catch (Exception e4) {
                    c(4);
                    e4.printStackTrace();
                    aVar = this.f52058j;
                    if (aVar == null) {
                        return;
                    }
                }
                aVar.a(false);
            } catch (Throwable th) {
                a aVar3 = this.f52058j;
                if (aVar3 != null) {
                    aVar3.a(false);
                }
                throw th;
            }
        }
    }

    void f(h hVar) {
        String a4 = hVar.a();
        if (this.f52049a == null || d2.h(a4)) {
            return;
        }
        try {
            if (!a4.equals(com.join.mgps.socket.entity.a.f52067f)) {
                a4.equals(com.join.mgps.socket.entity.a.f52068g);
            }
            this.f52049a.writeInt(1);
            this.f52049a.flush();
            this.f52049a.writeUTF(a4);
            this.f52049a.flush();
            StringBuilder sb = new StringBuilder();
            sb.append("receiverText: 发送的文本数据为");
            sb.append(a4);
        } catch (SocketException e4) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(e4.getClass().getName());
            sb2.append(":");
            sb2.append(e4.getMessage());
        } catch (IOException e5) {
            e5.printStackTrace();
        }
    }

    public void g(boolean z3) {
        this.f52059k = z3;
    }

    @Override // java.lang.Runnable
    public void run() {
        e c4;
        try {
            this.f52049a = new DataOutputStream(new BufferedOutputStream(this.f52051c.getOutputStream()));
            while (this.f52059k) {
                Socket socket = this.f52051c;
                if (socket != null && this.f52049a != null && !socket.isClosed() && (c4 = com.join.mgps.socket.a.b().c()) != null) {
                    if (c4 instanceof h) {
                        f((h) c4);
                    } else if (c4 instanceof com.join.mgps.socket.entity.d) {
                        e((com.join.mgps.socket.entity.d) c4);
                    }
                    try {
                        Thread.sleep(1000L);
                    } catch (InterruptedException e4) {
                        Thread.currentThread().interrupt();
                        e4.printStackTrace();
                    }
                }
            }
        } catch (IOException e5) {
            e5.printStackTrace();
        }
    }
}
