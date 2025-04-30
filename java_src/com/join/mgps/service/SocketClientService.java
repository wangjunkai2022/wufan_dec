package com.join.mgps.service;

import android.app.Service;
import android.content.Intent;
import android.os.Binder;
import android.os.IBinder;
import androidx.annotation.Nullable;
import com.join.mgps.Util.r1;
import com.join.mgps.socket.entity.f;
import java.io.IOException;
import java.net.InetSocketAddress;
import java.net.Socket;
import org.greenrobot.eventbus.c;
/* loaded from: classes4.dex */
public class SocketClientService extends Service {

    /* renamed from: d  reason: collision with root package name */
    private static final String f51976d = SocketClientService.class.getSimpleName();

    /* renamed from: a  reason: collision with root package name */
    String f51977a;

    /* renamed from: b  reason: collision with root package name */
    public a f51978b = new a();

    /* renamed from: c  reason: collision with root package name */
    int f51979c = 3;

    /* loaded from: classes4.dex */
    public class a extends Binder {
        public Socket socket = null;

        /* renamed from: com.join.mgps.service.SocketClientService$a$a  reason: collision with other inner class name */
        /* loaded from: classes4.dex */
        class RunnableC0222a implements Runnable {
            RunnableC0222a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                while (SocketClientService.this.f51979c > 0) {
                    try {
                        r1.b(1000);
                        a.this.socket = new Socket();
                        a.this.socket.setKeepAlive(true);
                        a.this.socket.setTcpNoDelay(true);
                        a.this.socket.setSoLinger(true, 0);
                        a.this.socket.setSendBufferSize(1048576);
                        a.this.socket.setReceiveBufferSize(1048576);
                        a.this.socket.connect(new InetSocketAddress(SocketClientService.this.f51977a, 4000), 10000);
                        a.this.postSocketConnectedStatus(1);
                        String unused = SocketClientService.f51976d;
                        SocketClientService.this.f51979c = 0;
                    } catch (Exception e4) {
                        SocketClientService socketClientService = SocketClientService.this;
                        int i2 = socketClientService.f51979c - 1;
                        socketClientService.f51979c = i2;
                        if (i2 <= 0) {
                            String unused2 = SocketClientService.f51976d;
                            a.this.postSocketConnectedStatus(2);
                        }
                        e4.printStackTrace();
                    }
                }
            }
        }

        public a() {
        }

        public Socket getSocket() {
            return this.socket;
        }

        public void newSocket() {
            new Thread(new RunnableC0222a()).start();
        }

        void postSocketConnectedStatus(int i2) {
            f fVar = new f();
            fVar.f52117a = i2;
            c.f().o(fVar);
        }
    }

    void b() {
        Socket socket;
        a aVar = this.f51978b;
        if (aVar == null || (socket = aVar.socket) == null || socket.isClosed()) {
            return;
        }
        try {
            this.f51978b.socket.close();
        } catch (IOException e4) {
            e4.printStackTrace();
        }
    }

    @Override // android.app.Service
    @Nullable
    public IBinder onBind(Intent intent) {
        this.f51977a = intent.getStringExtra(com.alipay.sdk.cons.c.f9731f);
        return this.f51978b;
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        b();
    }

    @Override // android.app.Service
    public void onRebind(Intent intent) {
        super.onRebind(intent);
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i2, int i4) {
        this.f51979c = 3;
        return 1;
    }

    @Override // android.app.Service
    public boolean onUnbind(Intent intent) {
        return true;
    }
}
