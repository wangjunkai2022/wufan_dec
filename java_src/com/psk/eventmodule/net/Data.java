package com.psk.eventmodule.net;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: Data.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u000f\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u000f\u0010\u0010R\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\t\u0010\u0004\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\"\u0010\f\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\f\u0010\u0004\u001a\u0004\b\r\u0010\u0006\"\u0004\b\u000e\u0010\b¨\u0006\u0011"}, d2 = {"Lcom/psk/eventmodule/net/Data;", "", "", "appVersion", "Ljava/lang/String;", "getAppVersion", "()Ljava/lang/String;", "setAppVersion", "(Ljava/lang/String;)V", "model", "getModel", "setModel", "brand", "getBrand", "setBrand", "<init>", "()V", "EventModule_release"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes4.dex */
public final class Data {
    @NotNull
    private String appVersion = "";
    @NotNull
    private String brand = "";
    @NotNull
    private String model = "";

    @NotNull
    public final String getAppVersion() {
        return this.appVersion;
    }

    @NotNull
    public final String getBrand() {
        return this.brand;
    }

    @NotNull
    public final String getModel() {
        return this.model;
    }

    public final void setAppVersion(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.appVersion = str;
    }

    public final void setBrand(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.brand = str;
    }

    public final void setModel(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.model = str;
    }
}
