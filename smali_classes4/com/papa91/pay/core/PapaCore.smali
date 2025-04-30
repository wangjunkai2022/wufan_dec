.class public Lcom/papa91/pay/core/PapaCore;
.super Ljava/lang/Object;
.source "PapaCore.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "papa"

    .line 1
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0}, Lcom/join/mgps/Util/k;->b([B)Ljava/lang/String;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0}, Lcom/papa91/pay/core/PapaCore;->encrypt([B)[B

    move-result-object p0

    .line 4
    invoke-static {p0}, Lcom/join/mgps/Util/k;->b([B)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public static native encrypt([B)[B
.end method

.method public static native nativeDecrypt([B)[B
.end method

.method public static native nativeEncrypt([B)[B
.end method
