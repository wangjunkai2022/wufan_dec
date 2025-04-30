.class public Lcom/papa/controller/core/hardware/c;
.super Lcom/papa/controller/core/hardware/a;
.source "GamepadHardwareInfo.java"


# instance fields
.field private p:Ljava/lang/String;

.field private q:[B

.field private r:[B

.field private s:I

.field private t:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa/controller/core/hardware/a;-><init>()V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 8

    .line 2
    invoke-direct {p0, p1}, Lcom/papa/controller/core/hardware/a;-><init>([B)V

    .line 3
    iget v0, p0, Lcom/papa/controller/core/hardware/a;->d:I

    const/16 v1, 0xf6

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x10

    new-array v1, v0, [B

    const/4 v2, 0x2

    new-array v3, v2, [B

    new-array v4, v2, [B

    .line 4
    iget v5, p0, Lcom/papa/controller/core/hardware/a;->c:I

    const/16 v6, 0x14

    const/4 v7, 0x0

    if-le v5, v6, :cond_3

    const/4 v5, 0x5

    .line 5
    invoke-static {p1, v5, v1, v7, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v5, 0xf

    :goto_0
    if-ltz v5, :cond_2

    .line 6
    aget-byte v6, v1, v5

    if-eqz v6, :cond_1

    add-int/lit8 v0, v5, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 7
    :cond_2
    :goto_1
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v1, v7, v0}, Ljava/lang/String;-><init>([BII)V

    iput-object v5, p0, Lcom/papa/controller/core/hardware/c;->p:Ljava/lang/String;

    .line 8
    :cond_3
    iget v0, p0, Lcom/papa/controller/core/hardware/a;->c:I

    const/16 v1, 0x16

    if-le v0, v1, :cond_4

    const/16 v0, 0x15

    .line 9
    invoke-static {p1, v0, v3, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 10
    iput-object v3, p0, Lcom/papa/controller/core/hardware/c;->q:[B

    .line 11
    :cond_4
    iget v0, p0, Lcom/papa/controller/core/hardware/a;->c:I

    const/16 v1, 0x18

    if-le v0, v1, :cond_5

    const/16 v0, 0x17

    .line 12
    invoke-static {p1, v0, v4, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 13
    iput-object v4, p0, Lcom/papa/controller/core/hardware/c;->r:[B

    .line 14
    :cond_5
    iget v0, p0, Lcom/papa/controller/core/hardware/a;->c:I

    const/16 v1, 0x19

    if-le v0, v1, :cond_6

    .line 15
    aget-byte p1, p1, v1

    and-int/lit8 v0, p1, 0x1

    .line 16
    iput v0, p0, Lcom/papa/controller/core/hardware/c;->s:I

    and-int/2addr p1, v2

    .line 17
    iput p1, p0, Lcom/papa/controller/core/hardware/c;->t:I

    :cond_6
    return-void
.end method


# virtual methods
.method public a()[B
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    .line 1
    invoke-super {p0, v0}, Lcom/papa/controller/core/hardware/a;->b([B)[B

    move-result-object v0

    return-object v0
.end method

.method public k()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa/controller/core/hardware/c;->s:I

    return v0
.end method

.method public l()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa/controller/core/hardware/c;->t:I

    return v0
.end method

.method public m()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/controller/core/hardware/c;->r:[B

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/controller/core/hardware/c;->p:Ljava/lang/String;

    return-object v0
.end method

.method public o()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/controller/core/hardware/c;->q:[B

    return-object v0
.end method

.method public p(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa/controller/core/hardware/c;->s:I

    return-void
.end method

.method public q(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa/controller/core/hardware/c;->t:I

    return-void
.end method

.method public r([B)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/controller/core/hardware/c;->r:[B

    return-void
.end method

.method public s(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/controller/core/hardware/c;->p:Ljava/lang/String;

    return-void
.end method

.method public t([B)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/controller/core/hardware/c;->q:[B

    return-void
.end method
