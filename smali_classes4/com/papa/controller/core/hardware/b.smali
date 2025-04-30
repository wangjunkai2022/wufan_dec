.class public Lcom/papa/controller/core/hardware/b;
.super Lcom/papa/controller/core/hardware/a;
.source "GamepadHardwareId.java"


# instance fields
.field private p:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa/controller/core/hardware/a;-><init>()V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 4

    .line 2
    invoke-direct {p0, p1}, Lcom/papa/controller/core/hardware/a;-><init>([B)V

    .line 3
    iget v0, p0, Lcom/papa/controller/core/hardware/a;->d:I

    const/16 v1, 0x14

    if-ne v0, v1, :cond_0

    .line 4
    iget v0, p0, Lcom/papa/controller/core/hardware/a;->c:I

    const/4 v1, 0x5

    sub-int/2addr v0, v1

    .line 5
    new-array v2, v0, [B

    const/4 v3, 0x0

    .line 6
    invoke-static {p1, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7
    iput-object v2, p0, Lcom/papa/controller/core/hardware/b;->p:[B

    :cond_0
    return-void
.end method


# virtual methods
.method public a()[B
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x13

    aput-byte v2, v0, v1

    .line 1
    invoke-super {p0, v0}, Lcom/papa/controller/core/hardware/a;->b([B)[B

    move-result-object v0

    return-object v0
.end method

.method public k()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/controller/core/hardware/b;->p:[B

    return-object v0
.end method

.method public l([B)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/controller/core/hardware/b;->p:[B

    return-void
.end method
