package com.join.mgps.aidl;

import com.join.mgps.aidl.WifiServerThread;
/* loaded from: classes3.dex */
public class Client {
    private long lastResponseTime;
    private long lastSendTime;
    private int retry;
    private WifiServerThread.b sClient;
    private ClientStatus status = ClientStatus.UNBOUND;
    private String sync = "";
    private String uuid;

    /* loaded from: classes3.dex */
    public enum ClientStatus {
        BOUND,
        UNBOUND
    }

    public long getLastResponseTime() {
        return this.lastResponseTime;
    }

    public long getLastSendTime() {
        return this.lastSendTime;
    }

    public int getRetry() {
        return this.retry;
    }

    public ClientStatus getStatus() {
        return this.status;
    }

    public String getSync() {
        return this.sync;
    }

    public String getUuid() {
        return this.uuid;
    }

    public WifiServerThread.b getsClient() {
        return this.sClient;
    }

    public void setLastResponseTime(long j4) {
        this.lastResponseTime = j4;
    }

    public void setLastSendTime(long j4) {
        this.lastSendTime = j4;
    }

    public void setRetry(int i2) {
        this.retry = i2;
    }

    public void setStatus(ClientStatus clientStatus) {
        this.status = clientStatus;
    }

    public void setSync(String str) {
        this.sync = str;
    }

    public void setUuid(String str) {
        this.uuid = str;
    }

    public void setsClient(WifiServerThread.b bVar) {
        this.sClient = bVar;
    }
}
