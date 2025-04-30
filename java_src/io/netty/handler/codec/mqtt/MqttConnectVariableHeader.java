package io.netty.handler.codec.mqtt;

import io.netty.util.internal.StringUtil;
/* loaded from: classes5.dex */
public final class MqttConnectVariableHeader {
    private final boolean hasPassword;
    private final boolean hasUserName;
    private final boolean isCleanSession;
    private final boolean isWillFlag;
    private final boolean isWillRetain;
    private final int keepAliveTimeSeconds;
    private final String name;
    private final int version;
    private final int willQos;

    public MqttConnectVariableHeader(String str, int i2, boolean z3, boolean z4, boolean z5, int i4, boolean z6, boolean z7, int i5) {
        this.name = str;
        this.version = i2;
        this.hasUserName = z3;
        this.hasPassword = z4;
        this.isWillRetain = z5;
        this.willQos = i4;
        this.isWillFlag = z6;
        this.isCleanSession = z7;
        this.keepAliveTimeSeconds = i5;
    }

    public boolean hasPassword() {
        return this.hasPassword;
    }

    public boolean hasUserName() {
        return this.hasUserName;
    }

    public boolean isCleanSession() {
        return this.isCleanSession;
    }

    public boolean isWillFlag() {
        return this.isWillFlag;
    }

    public boolean isWillRetain() {
        return this.isWillRetain;
    }

    public int keepAliveTimeSeconds() {
        return this.keepAliveTimeSeconds;
    }

    public String name() {
        return this.name;
    }

    public String toString() {
        return StringUtil.simpleClassName(this) + "[name=" + this.name + ", version=" + this.version + ", hasUserName=" + this.hasUserName + ", hasPassword=" + this.hasPassword + ", isWillRetain=" + this.isWillRetain + ", isWillFlag=" + this.isWillFlag + ", isCleanSession=" + this.isCleanSession + ", keepAliveTimeSeconds=" + this.keepAliveTimeSeconds + ']';
    }

    public int version() {
        return this.version;
    }

    public int willQos() {
        return this.willQos;
    }
}
