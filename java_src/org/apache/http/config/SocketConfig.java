package org.apache.http.config;

import org.apache.http.annotation.Immutable;
import org.apache.http.util.Args;
@Immutable
/* loaded from: classes5.dex */
public class SocketConfig implements Cloneable {
    public static final SocketConfig DEFAULT = new Builder().build();
    private final boolean soKeepAlive;
    private final int soLinger;
    private final boolean soReuseAddress;
    private final int soTimeout;
    private final boolean tcpNoDelay;

    /* loaded from: classes5.dex */
    public static class Builder {
        private boolean soKeepAlive;
        private boolean soReuseAddress;
        private int soTimeout;
        private int soLinger = -1;
        private boolean tcpNoDelay = true;

        Builder() {
        }

        public SocketConfig build() {
            return new SocketConfig(this.soTimeout, this.soReuseAddress, this.soLinger, this.soKeepAlive, this.tcpNoDelay);
        }

        public Builder setSoKeepAlive(boolean z3) {
            this.soKeepAlive = z3;
            return this;
        }

        public Builder setSoLinger(int i2) {
            this.soLinger = i2;
            return this;
        }

        public Builder setSoReuseAddress(boolean z3) {
            this.soReuseAddress = z3;
            return this;
        }

        public Builder setSoTimeout(int i2) {
            this.soTimeout = i2;
            return this;
        }

        public Builder setTcpNoDelay(boolean z3) {
            this.tcpNoDelay = z3;
            return this;
        }
    }

    SocketConfig(int i2, boolean z3, int i4, boolean z4, boolean z5) {
        this.soTimeout = i2;
        this.soReuseAddress = z3;
        this.soLinger = i4;
        this.soKeepAlive = z4;
        this.tcpNoDelay = z5;
    }

    public static Builder copy(SocketConfig socketConfig) {
        Args.notNull(socketConfig, "Socket config");
        return new Builder().setSoTimeout(socketConfig.getSoTimeout()).setSoReuseAddress(socketConfig.isSoReuseAddress()).setSoLinger(socketConfig.getSoLinger()).setSoKeepAlive(socketConfig.isSoKeepAlive()).setTcpNoDelay(socketConfig.isTcpNoDelay());
    }

    public static Builder custom() {
        return new Builder();
    }

    public int getSoLinger() {
        return this.soLinger;
    }

    public int getSoTimeout() {
        return this.soTimeout;
    }

    public boolean isSoKeepAlive() {
        return this.soKeepAlive;
    }

    public boolean isSoReuseAddress() {
        return this.soReuseAddress;
    }

    public boolean isTcpNoDelay() {
        return this.tcpNoDelay;
    }

    public String toString() {
        return "[soTimeout=" + this.soTimeout + ", soReuseAddress=" + this.soReuseAddress + ", soLinger=" + this.soLinger + ", soKeepAlive=" + this.soKeepAlive + ", tcpNoDelay=" + this.tcpNoDelay + "]";
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public SocketConfig clone() throws CloneNotSupportedException {
        return (SocketConfig) super.clone();
    }
}
