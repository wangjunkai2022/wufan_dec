package com.join.mgps.socket;

import android.content.Context;
import com.join.mgps.Util.g0;
import com.join.mgps.Util.q1;
import com.join.mgps.socket.entity.g;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.DataInputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.net.Socket;
import java.net.SocketException;
/* compiled from: SocketReceiverService.java */
/* loaded from: classes4.dex */
public class c implements Runnable {

    /* renamed from: n  reason: collision with root package name */
    private static final String f52020n = c.class.getSimpleName();

    /* renamed from: a  reason: collision with root package name */
    Socket f52021a;

    /* renamed from: d  reason: collision with root package name */
    Context f52024d;

    /* renamed from: l  reason: collision with root package name */
    a f52032l;

    /* renamed from: b  reason: collision with root package name */
    DataInputStream f52022b = null;

    /* renamed from: c  reason: collision with root package name */
    BufferedOutputStream f52023c = null;

    /* renamed from: e  reason: collision with root package name */
    long f52025e = 0;

    /* renamed from: f  reason: collision with root package name */
    long f52026f = 0;

    /* renamed from: g  reason: collision with root package name */
    String f52027g = null;

    /* renamed from: h  reason: collision with root package name */
    String f52028h = null;

    /* renamed from: i  reason: collision with root package name */
    String f52029i = null;

    /* renamed from: j  reason: collision with root package name */
    int f52030j = 0;

    /* renamed from: k  reason: collision with root package name */
    int f52031k = 1;

    /* renamed from: m  reason: collision with root package name */
    boolean f52033m = true;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SocketReceiverService.java */
    /* loaded from: classes4.dex */
    public class a extends Thread {

        /* renamed from: a  reason: collision with root package name */
        volatile boolean f52034a = true;

        a() {
        }

        public void a(boolean z3) {
            this.f52034a = z3;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            super.run();
            while (this.f52034a) {
                try {
                    c.this.d();
                    Thread.sleep(1000L);
                } catch (InterruptedException e4) {
                    e4.printStackTrace();
                }
            }
        }
    }

    public c(Socket socket, Context context) {
        this.f52021a = socket;
        this.f52024d = context;
    }

    public void a() {
        try {
            DataInputStream dataInputStream = this.f52022b;
            if (dataInputStream != null) {
                dataInputStream.close();
            }
            BufferedOutputStream bufferedOutputStream = this.f52023c;
            if (bufferedOutputStream != null) {
                bufferedOutputStream.close();
            }
        } catch (IOException e4) {
            e4.printStackTrace();
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
        a aVar = this.f52032l;
        if (aVar != null) {
            aVar.a(false);
        }
        this.f52031k = i2;
        d();
    }

    void d() {
        int b4 = b(this.f52026f, this.f52025e);
        com.join.mgps.socket.entity.c cVar = new com.join.mgps.socket.entity.c();
        cVar.f52103u = b4;
        cVar.f52101s = this.f52028h;
        int i2 = this.f52031k;
        cVar.f52104v = i2;
        cVar.f52106x = this.f52029i;
        cVar.f52102t = this.f52027g;
        cVar.f52080a = 1;
        cVar.f52105w = 1;
        if (i2 == 3 || i2 == 4) {
            StringBuilder sb = new StringBuilder();
            sb.append("receiverFile: 接收完成:::");
            sb.append(this.f52032l.f52034a);
            a aVar = this.f52032l;
            if (aVar != null && aVar.f52034a) {
                return;
            }
        }
        org.greenrobot.eventbus.c.f().o(cVar);
    }

    void e(String str) {
        g gVar = new g();
        gVar.f52118s = str;
        gVar.f52080a = 0;
        org.greenrobot.eventbus.c.f().o(gVar);
    }

    void f(DataInputStream dataInputStream) {
        if (dataInputStream == null) {
            return;
        }
        byte[] bArr = new byte[1048576];
        this.f52025e = 0L;
        this.f52026f = 0L;
        this.f52027g = null;
        this.f52028h = null;
        this.f52029i = null;
        this.f52030j = 0;
        try {
            try {
                try {
                    this.f52026f = dataInputStream.readLong();
                    StringBuilder sb = new StringBuilder();
                    sb.append("receiverFile: 文件大小 ");
                    sb.append(this.f52026f);
                    this.f52028h = dataInputStream.readUTF();
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("receiverFile: 文件保存名称 ");
                    sb2.append(this.f52028h);
                    this.f52029i = dataInputStream.readUTF();
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append("receiverFile: 文件编号 ");
                    sb3.append(this.f52029i);
                    String str = q1.h(this.f52024d) + File.separator + this.f52028h;
                    this.f52027g = str;
                    if (!g0.y(str)) {
                        g0.B(this.f52027g);
                    }
                    StringBuilder sb4 = new StringBuilder();
                    sb4.append("receiverFile: 文件完整名 ");
                    sb4.append(this.f52027g);
                    this.f52023c = new BufferedOutputStream(new FileOutputStream(new File(this.f52027g)));
                    StringBuilder sb5 = new StringBuilder();
                    sb5.append("saveFile: 文件大小：");
                    sb5.append(this.f52026f);
                    sb5.append("::::::文件完整路径：：");
                    sb5.append(this.f52027g);
                    a aVar = new a();
                    this.f52032l = aVar;
                    aVar.start();
                    while (true) {
                        if (!this.f52033m) {
                            break;
                        }
                        long j4 = this.f52025e;
                        long j5 = this.f52026f;
                        if (1048576 + j4 > j5) {
                            int read = dataInputStream.read(bArr, 0, (int) (j5 - j4));
                            this.f52030j = read;
                            if (read != -1) {
                                this.f52023c.write(bArr, 0, read);
                                this.f52025e += this.f52030j;
                                StringBuilder sb6 = new StringBuilder();
                                sb6.append("receiverFile: 接收了多少");
                                sb6.append(this.f52030j);
                                sb6.append("----bufferSize-----");
                                if (this.f52026f > this.f52025e) {
                                    this.f52031k = 2;
                                } else {
                                    c(3);
                                    break;
                                }
                            } else {
                                c(4);
                                break;
                            }
                        } else {
                            int read2 = dataInputStream.read(bArr, 0, 1048576);
                            this.f52030j = read2;
                            if (read2 != -1) {
                                this.f52023c.write(bArr, 0, read2);
                                this.f52025e += this.f52030j;
                                StringBuilder sb7 = new StringBuilder();
                                sb7.append("receiverFile000000: 接收了多少");
                                sb7.append(this.f52030j);
                                sb7.append("-----bufferSize------");
                                sb7.append(1048576);
                                if (this.f52026f > this.f52025e) {
                                    this.f52031k = 2;
                                } else {
                                    c(3);
                                    break;
                                }
                            } else {
                                c(4);
                                break;
                            }
                        }
                    }
                    this.f52023c.flush();
                    a aVar2 = this.f52032l;
                    if (aVar2 != null) {
                        aVar2.a(false);
                    }
                    if (this.f52023c != null) {
                        this.f52023c.close();
                    }
                } catch (IOException e4) {
                    e4.printStackTrace();
                }
            } catch (IOException e5) {
                g0.i(this.f52027g);
                c(4);
                e5.printStackTrace();
                a aVar3 = this.f52032l;
                if (aVar3 != null) {
                    aVar3.a(false);
                }
                if (this.f52023c != null) {
                    this.f52023c.close();
                }
            }
        } catch (Throwable th) {
            try {
                a aVar4 = this.f52032l;
                if (aVar4 != null) {
                    aVar4.a(false);
                }
                if (this.f52023c != null) {
                    this.f52023c.close();
                }
            } catch (IOException e6) {
                e6.printStackTrace();
            }
            throw th;
        }
    }

    void g(DataInputStream dataInputStream) {
        if (dataInputStream == null) {
            return;
        }
        try {
            String readUTF = dataInputStream.readUTF();
            e(readUTF);
            StringBuilder sb = new StringBuilder();
            sb.append("receiverText: 接收的文本数据为");
            sb.append(readUTF);
        } catch (IOException e4) {
            e4.printStackTrace();
        }
    }

    public void h(boolean z3) {
        this.f52033m = z3;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            StringBuilder sb = new StringBuilder();
            sb.append("SocketReceiverService: 接收大小");
            sb.append(this.f52021a.getReceiveBufferSize());
            this.f52022b = new DataInputStream(new BufferedInputStream(this.f52021a.getInputStream()));
            while (this.f52033m) {
                Socket socket = this.f52021a;
                if (socket != null && this.f52022b != null && !socket.isClosed()) {
                    int readInt = this.f52022b.readInt();
                    if (readInt == 1) {
                        g(this.f52022b);
                    } else if (readInt == 2) {
                        f(this.f52022b);
                    }
                    try {
                        Thread.sleep(1000L);
                    } catch (InterruptedException e4) {
                        Thread.currentThread().interrupt();
                        e4.printStackTrace();
                    }
                }
            }
        } catch (SocketException e5) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(e5.getClass().getName());
            sb2.append(":");
            sb2.append(e5.getMessage());
        } catch (IOException e6) {
            e6.printStackTrace();
        }
    }
}
