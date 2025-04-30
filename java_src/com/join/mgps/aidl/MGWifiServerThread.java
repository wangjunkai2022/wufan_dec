package com.join.mgps.aidl;

import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.os.Message;
import com.join.android.app.common.utils.JsonMapper;
import com.join.mgps.Util.AccountUtil_;
import java.io.BufferedOutputStream;
import java.io.DataInputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.ServerSocket;
import java.net.Socket;
import java.net.SocketException;
import java.util.List;
import java.util.Vector;
/* loaded from: classes3.dex */
public class MGWifiServerThread {
    private static final int SERVERPORT = 8193;
    private Handler handler;
    private Context mContext;
    private ServerSocket mserverSocket;
    private String TAG = getClass().getSimpleName();
    private Boolean isrun = Boolean.TRUE;
    private Boolean shutDownPositive = Boolean.FALSE;
    private List<b> clientMap = new Vector(0);
    private boolean isDisconnected = false;
    long lastSyncTime = 0;
    boolean monitoring = true;

    /* loaded from: classes3.dex */
    class a extends Thread {
        a() {
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            super.run();
            try {
                try {
                    MGWifiServerThread.this.clientMap.clear();
                    if (MGWifiServerThread.this.mserverSocket != null) {
                        MGWifiServerThread.this.mserverSocket.close();
                        MGWifiServerThread.this.mserverSocket = null;
                    }
                    MGWifiServerThread.this.mserverSocket = new ServerSocket(8193);
                    StringBuilder sb = new StringBuilder();
                    sb.append("tbl>>>isrun:");
                    sb.append(MGWifiServerThread.this.isrun);
                    MGWifiServerThread.this.handler.sendEmptyMessage(com.join.mgps.data.c.B);
                    while (MGWifiServerThread.this.isrun.booleanValue()) {
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("tbl>>>mserverSocket.isClosed():");
                        sb2.append(MGWifiServerThread.this.mserverSocket.isClosed());
                        if (MGWifiServerThread.this.mserverSocket.isClosed()) {
                            break;
                        }
                        String unused = MGWifiServerThread.this.TAG;
                        b bVar = new b(MGWifiServerThread.this.mserverSocket.accept());
                        MGWifiServerThread.this.clientMap.add(bVar);
                        new Thread(bVar).start();
                    }
                    String unused2 = MGWifiServerThread.this.TAG;
                    if (MGWifiServerThread.this.mserverSocket != null) {
                        try {
                            MGWifiServerThread.this.mserverSocket.close();
                        } catch (IOException e4) {
                            e4.printStackTrace();
                        }
                    }
                } catch (SocketException e5) {
                    e5.printStackTrace();
                }
            } catch (Exception e6) {
                e6.printStackTrace();
                String unused3 = MGWifiServerThread.this.TAG;
                if (MGWifiServerThread.this.shutDownPositive.booleanValue()) {
                    return;
                }
                MGWifiServerThread.this.handler.sendEmptyMessage(com.join.mgps.data.c.C);
            }
        }
    }

    /* loaded from: classes3.dex */
    public class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private Socket f44703a;

        /* renamed from: b  reason: collision with root package name */
        private BufferedOutputStream f44704b;

        /* renamed from: c  reason: collision with root package name */
        private DataInputStream f44705c;

        /* renamed from: d  reason: collision with root package name */
        private boolean f44706d = false;

        /* loaded from: classes3.dex */
        class a extends Thread {
            a() {
            }

            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                super.run();
                while (true) {
                    try {
                        Thread.sleep(1000L);
                        b.this.f44704b.write(FightProtocalManager.ackSync().getBytes());
                        b.this.f44704b.flush();
                    } catch (Exception e4) {
                        e4.printStackTrace();
                        return;
                    }
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: com.join.mgps.aidl.MGWifiServerThread$b$b  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        public class C0185b extends Thread {
            C0185b() {
            }

            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                super.run();
                try {
                    b.this.f44704b.write(FightProtocalManager.startGame().getBytes());
                    b.this.f44704b.flush();
                } catch (IOException e4) {
                    e4.printStackTrace();
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes3.dex */
        public class c extends Thread {
            c() {
            }

            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                super.run();
                try {
                    MGWifiServerThread.this.monitoring = false;
                    String disconnect = FightProtocalManager.disconnect();
                    String unused = MGWifiServerThread.this.TAG;
                    StringBuilder sb = new StringBuilder();
                    sb.append("disconnect ");
                    sb.append(disconnect);
                    b.this.f44704b.write(disconnect.getBytes());
                    b.this.f44704b.flush();
                } catch (IOException e4) {
                    e4.printStackTrace();
                    MGWifiServerThread.this.shutDown();
                }
            }
        }

        public b(Socket socket) {
            this.f44703a = null;
            this.f44703a = socket;
            try {
                this.f44704b = new BufferedOutputStream(this.f44703a.getOutputStream());
                this.f44705c = new DataInputStream(this.f44703a.getInputStream());
            } catch (IOException e4) {
                e4.printStackTrace();
            }
        }

        private void d(byte[] bArr) {
            try {
                String str = new String(bArr, "gbk");
                String unused = MGWifiServerThread.this.TAG;
                StringBuilder sb = new StringBuilder();
                sb.append("server send=");
                sb.append(str);
                this.f44704b.write(bArr);
                this.f44704b.flush();
            } catch (Exception e4) {
                e4.printStackTrace();
                MGWifiServerThread.this.handler.sendEmptyMessage(9002);
                MGWifiServerThread.this.isrun = Boolean.FALSE;
            }
        }

        public void b(boolean z3) {
            Socket socket = this.f44703a;
            if (socket != null) {
                try {
                    if (!socket.isClosed()) {
                        this.f44703a.shutdownInput();
                        this.f44703a.shutdownOutput();
                        this.f44703a.close();
                    }
                } catch (IOException e4) {
                    e4.printStackTrace();
                }
            }
            if (z3) {
                MGWifiServerThread.this.handler.sendEmptyMessage(com.join.mgps.data.c.D);
            } else {
                MGWifiServerThread.this.handler.sendEmptyMessage(9002);
            }
        }

        public void c() {
            new c().start();
        }

        public void e() {
            new C0185b().start();
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.f44704b.write(FightProtocalManager.ackSignal("", "", AccountUtil_.getInstance_(MGWifiServerThread.this.mContext).getAccountData().getAvatarSrc()).getBytes());
                this.f44704b.flush();
            } catch (IOException e4) {
                e4.printStackTrace();
            }
            while (!this.f44703a.isClosed()) {
                try {
                    int available = this.f44705c.available();
                    while (available == 0) {
                        available = this.f44705c.available();
                    }
                    byte[] bArr = new byte[available];
                    this.f44705c.read(bArr);
                    String str = new String(bArr, "gbk");
                    String unused = MGWifiServerThread.this.TAG;
                    StringBuilder sb = new StringBuilder();
                    sb.append("tbl>>>server receive:");
                    sb.append(available);
                    FightProtocal fightProtocal = null;
                    try {
                        fightProtocal = (FightProtocal) JsonMapper.getInstance().fromJson(str, FightProtocal.class);
                    } catch (Exception e5) {
                        e5.printStackTrace();
                    }
                    if (fightProtocal != null) {
                        if (fightProtocal.getType() == FightProtocal.TYPE_ACK && FightProtocalManager.ackReceivedSignal(fightProtocal)) {
                            String unused2 = MGWifiServerThread.this.TAG;
                            Message message = new Message();
                            message.what = 9001;
                            message.obj = fightProtocal.getBrand() + "-" + fightProtocal.getOpponent();
                            MGWifiServerThread.this.handler.sendMessage(message);
                            fightProtocal.setBrand(Build.BRAND);
                            fightProtocal.setOpponent(AccountUtil_.getInstance_(MGWifiServerThread.this.mContext).getAccountData().getAvatarSrc());
                            d(JsonMapper.getInstance().toJson(fightProtocal).getBytes());
                            new c().start();
                            new a().start();
                        } else if (fightProtocal.getType() == FightProtocal.TYPE_DISCONNECT) {
                            String unused3 = MGWifiServerThread.this.TAG;
                            MGWifiServerThread.this.monitoring = false;
                            d(FightProtocalManager.ackDisconnect(fightProtocal).getBytes());
                            b(false);
                            MGWifiServerThread.this.shutDown();
                        } else if (fightProtocal.getType() == FightProtocal.TYPE_AckDISCONNECT) {
                            String unused4 = MGWifiServerThread.this.TAG;
                            MGWifiServerThread.this.monitoring = false;
                            b(true);
                            MGWifiServerThread.this.shutDown();
                        } else if (fightProtocal.getType() == FightProtocal.TYPE_SYNC) {
                            MGWifiServerThread.this.lastSyncTime = System.currentTimeMillis();
                        }
                    }
                } catch (IOException e6) {
                    e6.printStackTrace();
                }
            }
        }
    }

    /* loaded from: classes3.dex */
    class c extends Thread {
        c() {
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            super.run();
            while (MGWifiServerThread.this.monitoring) {
                try {
                    Thread.sleep(500L);
                    if (MGWifiServerThread.this.lastSyncTime != 0) {
                        long currentTimeMillis = System.currentTimeMillis();
                        MGWifiServerThread mGWifiServerThread = MGWifiServerThread.this;
                        if (currentTimeMillis - mGWifiServerThread.lastSyncTime > 4000) {
                            if (mGWifiServerThread.monitoring) {
                                mGWifiServerThread.handler.sendEmptyMessage(9002);
                                return;
                            }
                            return;
                        }
                        continue;
                    }
                } catch (InterruptedException e4) {
                    e4.printStackTrace();
                }
            }
        }
    }

    public MGWifiServerThread(Context context, Handler handler) {
        this.mContext = context;
        this.handler = handler;
    }

    public void disConnect() {
        if (this.clientMap.size() == 0) {
            shutDown();
            return;
        }
        for (b bVar : this.clientMap) {
            bVar.c();
        }
    }

    public byte[] getData() {
        return this.clientMap.size() == 0 ? new byte[0] : new byte[0];
    }

    public void run() {
        if (this.mserverSocket != null) {
            shutDown();
        }
        new a().start();
    }

    public void send(byte[] bArr) {
        if (this.clientMap.size() == 0) {
            return;
        }
        try {
            StringBuilder sb = new StringBuilder();
            sb.append("server send:");
            sb.append(new String(bArr, "gbk"));
        } catch (UnsupportedEncodingException e4) {
            e4.printStackTrace();
        }
    }

    public void shutDown() {
        try {
            this.shutDownPositive = Boolean.TRUE;
            if (this.mserverSocket != null) {
                this.clientMap.clear();
                this.mserverSocket.close();
            }
            this.isrun = Boolean.FALSE;
            this.mserverSocket = null;
            System.gc();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public void startGame() {
        if (this.clientMap.size() == 0) {
            shutDown();
            return;
        }
        for (b bVar : this.clientMap) {
            bVar.e();
        }
    }
}
