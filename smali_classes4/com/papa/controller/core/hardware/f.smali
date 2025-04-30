.class public Lcom/papa/controller/core/hardware/f;
.super Lcom/papa/controller/core/hardware/a;
.source "GamepadState.java"


# instance fields
.field private p:I

.field private q:I

.field private r:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa/controller/core/hardware/a;-><init>()V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    .line 2
    invoke-direct {p0, p1}, Lcom/papa/controller/core/hardware/a;-><init>([B)V

    .line 3
    iget v0, p0, Lcom/papa/controller/core/hardware/a;->d:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    return-void

    .line 4
    :cond_0
    iget v0, p0, Lcom/papa/controller/core/hardware/a;->c:I

    if-le v0, v1, :cond_1

    .line 5
    aget-byte v0, p1, v1

    invoke-virtual {p0, v0}, Lcom/papa/controller/core/hardware/a;->d(B)I

    move-result v0

    iput v0, p0, Lcom/papa/controller/core/hardware/f;->p:I

    .line 6
    :cond_1
    iget v0, p0, Lcom/papa/controller/core/hardware/a;->c:I

    const/4 v1, 0x6

    if-le v0, v1, :cond_2

    .line 7
    aget-byte p1, p1, v1

    and-int/lit8 v0, p1, 0x1

    .line 8
    iput v0, p0, Lcom/papa/controller/core/hardware/f;->q:I

    and-int/lit8 p1, p1, 0x2

    .line 9
    iput p1, p0, Lcom/papa/controller/core/hardware/f;->r:I

    :cond_2
    return-void
.end method


# virtual methods
.method public a()[B
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/4 v2, 0x3

    aput-byte v2, v0, v1

    .line 1
    invoke-super {p0, v0}, Lcom/papa/controller/core/hardware/a;->b([B)[B

    move-result-object v0

    return-object v0
.end method

.method public k()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa/controller/core/hardware/f;->p:I

    return v0
.end method

.method public l()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa/controller/core/hardware/f;->r:I

    return v0
.end method

.method public m()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa/controller/core/hardware/f;->q:I

    return v0
.end method

.method public n(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa/controller/core/hardware/f;->p:I

    return-void
.end method

.method public o(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa/controller/core/hardware/f;->r:I

    return-void
.end method

.method public p(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa/controller/core/hardware/f;->q:I

    return-void
.end method
