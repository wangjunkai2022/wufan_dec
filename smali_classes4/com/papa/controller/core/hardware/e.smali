.class public Lcom/papa/controller/core/hardware/e;
.super Lcom/papa/controller/core/hardware/a;
.source "GamepadSppSwitch.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa/controller/core/hardware/a;-><init>()V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/papa/controller/core/hardware/a;-><init>([B)V

    return-void
.end method


# virtual methods
.method public k(I)[B
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    int-to-byte p1, p1

    const/4 v1, 0x1

    aput-byte p1, v0, v1

    .line 1
    invoke-super {p0, v0}, Lcom/papa/controller/core/hardware/a;->b([B)[B

    move-result-object p1

    return-object p1
.end method
