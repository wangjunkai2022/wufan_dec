package com.join.mgps.service;

import android.app.Service;
import android.content.Intent;
import android.os.Binder;
import android.os.IBinder;
import androidx.annotation.Nullable;
import com.join.mgps.socket.entity.f;
import java.io.IOException;
import java.net.InetSocketAddress;
import java.net.ServerSocket;
import java.net.Socket;
import org.greenrobot.eventbus.c;
/* loaded from: classes4.dex */
public class SocketServerService extends Service {

    /* renamed from: b  reason: collision with root package name */
    private static final String f51981b = SocketServerService.class.getSimpleName();

    /* renamed from: a  reason: collision with root package name */
    private a f51982a = new a();

    /* loaded from: classes4.dex */
    public class a extends Binder {
        private ServerSocket mSocketService;
        private boolean mointor = true;
        private Socket mSocket = null;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: com.join.mgps.service.SocketServerService$a$a  reason: collision with other inner class name */
        /* loaded from: classes4.dex */
        public class RunnableC0223a implements Runnable {
            RunnableC0223a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                String unused = SocketServerService.f51981b;
                while (a.this.mointor) {
                    try {
                        a aVar = a.this;
                        aVar.mSocket = aVar.mSocketService.accept();
                        a.this.mointor = false;
                        a.this.postSocketConnectedStatus(1);
                        String unused2 = SocketServerService.f51981b;
                    } catch (IOException e4) {
                        a.this.postSocketConnectedStatus(2);
                        a.this.mointor = false;
                        e4.printStackTrace();
                    }
                }
            }
        }

        public a() {
        }

        private void acceptClient() {
            new Thread(new RunnableC0223a()).start();
        }

        public Socket getSocket() {
            return this.mSocket;
        }

        public void newServerSocket() {
            try {
                String unused = SocketServerService.f51981b;
                ServerSocket serverSocket = new ServerSocket();
                this.mSocketService = serverSocket;
                serverSocket.setReceiveBufferSize(1048576);
                this.mSocketService.bind(new InetSocketAddress(4000));
                acceptClient();
            } catch (IOException e4) {
                postSocketConnectedStatus(2);
                e4.printStackTrace();
            }
        }

        void postSocketConnectedStatus(int i2) {
            f fVar = new f();
            fVar.f52117a = i2;
            c.f().o(fVar);
        }

        public void setMonitor(boolean z3) {
            this.mointor = z3;
        }
    }

    void b() {
        a aVar = this.f51982a;
        if (aVar == null) {
            return;
        }
        if (aVar.mSocketService != null && !this.f51982a.mSocketService.isClosed()) {
            try {
                this.f51982a.mSocketService.close();
            } catch (IOException e4) {
                e4.printStackTrace();
            }
        }
        if (this.f51982a.mSocket == null || this.f51982a.mSocket.isClosed()) {
            return;
        }
        try {
            this.f51982a.mSocket.close();
        } catch (IOException e5) {
            e5.printStackTrace();
        }
    }

    @Override // android.app.Service
    @Nullable
    public IBinder onBind(Intent intent) {
        return this.f51982a;
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
        return 1;
    }

    @Override // android.app.Service
    public boolean onUnbind(Intent intent) {
        return true;
    }
}
