.class public Lcom/papa/controller/core/hardware/d;
.super Lcom/papa/controller/core/hardware/a;
.source "GamepadInput.java"


# instance fields
.field private A:I

.field private B:I

.field private C:I

.field private D:I

.field private E:I

.field private F:I

.field private G:I

.field private H:[I

.field private I:[I

.field private J:[I

.field private K:[I

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa/controller/core/hardware/a;-><init>()V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 5

    .line 2
    invoke-direct {p0, p1}, Lcom/papa/controller/core/hardware/a;-><init>([B)V

    .line 3
    iget v0, p0, Lcom/papa/controller/core/hardware/a;->c:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    iget v0, p0, Lcom/papa/controller/core/hardware/a;->d:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 v0, 0x5

    .line 4
    aget-byte v0, p1, v0

    .line 5
    invoke-direct {p0, v0, v1}, Lcom/papa/controller/core/hardware/d;->H(BI)I

    move-result v2

    iput v2, p0, Lcom/papa/controller/core/hardware/d;->p:I

    const/4 v2, 0x2

    .line 6
    invoke-direct {p0, v0, v2}, Lcom/papa/controller/core/hardware/d;->H(BI)I

    move-result v3

    iput v3, p0, Lcom/papa/controller/core/hardware/d;->q:I

    const/4 v3, 0x4

    .line 7
    invoke-direct {p0, v0, v3}, Lcom/papa/controller/core/hardware/d;->H(BI)I

    move-result v3

    iput v3, p0, Lcom/papa/controller/core/hardware/d;->r:I

    const/16 v3, 0x8

    .line 8
    invoke-direct {p0, v0, v3}, Lcom/papa/controller/core/hardware/d;->H(BI)I

    move-result v4

    iput v4, p0, Lcom/papa/controller/core/hardware/d;->s:I

    const/16 v4, 0x10

    .line 9
    invoke-direct {p0, v0, v4}, Lcom/papa/controller/core/hardware/d;->H(BI)I

    move-result v4

    iput v4, p0, Lcom/papa/controller/core/hardware/d;->t:I

    const/16 v4, 0x20

    .line 10
    invoke-direct {p0, v0, v4}, Lcom/papa/controller/core/hardware/d;->H(BI)I

    move-result v4

    iput v4, p0, Lcom/papa/controller/core/hardware/d;->u:I

    const/16 v4, 0x40

    .line 11
    invoke-direct {p0, v0, v4}, Lcom/papa/controller/core/hardware/d;->H(BI)I

    move-result v4

    iput v4, p0, Lcom/papa/controller/core/hardware/d;->v:I

    const/16 v4, 0x80

    .line 12
    invoke-direct {p0, v0, v4}, Lcom/papa/controller/core/hardware/d;->H(BI)I

    move-result v0

    iput v0, p0, Lcom/papa/controller/core/hardware/d;->w:I

    const/4 v0, 0x6

    .line 13
    aget-byte v0, p1, v0

    .line 14
    invoke-direct {p0, v0, v1}, Lcom/papa/controller/core/hardware/d;->H(BI)I

    move-result v1

    iput v1, p0, Lcom/papa/controller/core/hardware/d;->x:I

    .line 15
    invoke-direct {p0, v0, v2}, Lcom/papa/controller/core/hardware/d;->H(BI)I

    move-result v0

    iput v0, p0, Lcom/papa/controller/core/hardware/d;->y:I

    const/4 v0, 0x7

    .line 16
    aget-byte v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/papa/controller/core/hardware/a;->d(B)I

    move-result v0

    iput v0, p0, Lcom/papa/controller/core/hardware/d;->z:I

    .line 17
    aget-byte v0, p1, v3

    invoke-virtual {p0, v0}, Lcom/papa/controller/core/hardware/a;->d(B)I

    move-result v0

    iput v0, p0, Lcom/papa/controller/core/hardware/d;->A:I

    const/16 v0, 0x9

    .line 18
    aget-byte v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/papa/controller/core/hardware/a;->d(B)I

    move-result v0

    iput v0, p0, Lcom/papa/controller/core/hardware/d;->B:I

    const/16 v0, 0xa

    .line 19
    aget-byte v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/papa/controller/core/hardware/a;->d(B)I

    move-result v0

    iput v0, p0, Lcom/papa/controller/core/hardware/d;->C:I

    const/16 v0, 0xb

    .line 20
    aget-byte v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/papa/controller/core/hardware/a;->d(B)I

    move-result v0

    iput v0, p0, Lcom/papa/controller/core/hardware/d;->D:I

    const/16 v0, 0xc

    .line 21
    aget-byte v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/papa/controller/core/hardware/a;->d(B)I

    move-result v0

    iput v0, p0, Lcom/papa/controller/core/hardware/d;->E:I

    const/16 v0, 0xd

    .line 22
    aget-byte v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/papa/controller/core/hardware/a;->d(B)I

    move-result v0

    iput v0, p0, Lcom/papa/controller/core/hardware/d;->F:I

    const/16 v0, 0xe

    .line 23
    aget-byte v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/papa/controller/core/hardware/a;->d(B)I

    move-result v0

    iput v0, p0, Lcom/papa/controller/core/hardware/d;->G:I

    const/16 v0, 0xf

    .line 24
    invoke-direct {p0, p1, v0}, Lcom/papa/controller/core/hardware/d;->p([BI)[I

    move-result-object v0

    iput-object v0, p0, Lcom/papa/controller/core/hardware/d;->H:[I

    const/16 v0, 0x11

    .line 25
    invoke-direct {p0, p1, v0}, Lcom/papa/controller/core/hardware/d;->p([BI)[I

    move-result-object v0

    iput-object v0, p0, Lcom/papa/controller/core/hardware/d;->I:[I

    const/16 v0, 0x13

    .line 26
    invoke-direct {p0, p1, v0}, Lcom/papa/controller/core/hardware/d;->p([BI)[I

    move-result-object v0

    iput-object v0, p0, Lcom/papa/controller/core/hardware/d;->J:[I

    const/16 v0, 0x15

    .line 27
    invoke-direct {p0, p1, v0}, Lcom/papa/controller/core/hardware/d;->p([BI)[I

    move-result-object p1

    iput-object p1, p0, Lcom/papa/controller/core/hardware/d;->K:[I

    :cond_1
    :goto_0
    return-void
.end method

.method private H(BI)I
    .locals 0

    and-int/lit16 p1, p1, 0xff

    and-int/2addr p1, p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private p([BI)[I
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    .line 1
    array-length v3, p1

    add-int/lit8 v4, p2, 0x2

    if-ge v3, v4, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    aget-byte v3, p1, p2

    and-int/lit16 v3, v3, 0xff

    aput v3, v0, v1

    add-int/2addr p2, v2

    .line 3
    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    aput p1, v0, v2

    return-object v0

    :cond_1
    :goto_0
    const/16 p1, 0x80

    aput p1, v0, v1

    aput p1, v0, v2

    return-object v0
.end method


# virtual methods
.method public A()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa/controller/core/hardware/d;->s:I

    return v0
.end method

.method public B()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa/controller/core/hardware/d;->t:I

    return v0
.end method

.method public C()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa/controller/core/hardware/d;->v:I

    return v0
.end method

.method public D()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa/controller/core/hardware/d;->w:I

    return v0
.end method

.method public E()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa/controller/core/hardware/d;->p:I

    return v0
.end method

.method public F()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa/controller/core/hardware/d;->B:I

    return v0
.end method

.method public G()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa/controller/core/hardware/d;->C:I

    return v0
.end method

.method public I(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa/controller/core/hardware/d;->z:I

    return-void
.end method

.method public J([I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/controller/core/hardware/d;->H:[I

    return-void
.end method

.method public K([I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/controller/core/hardware/d;->I:[I

    return-void
.end method

.method public L([I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/controller/core/hardware/d;->J:[I

    return-void
.end method

.method public M([I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/controller/core/hardware/d;->K:[I

    return-void
.end method

.method public N(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa/controller/core/hardware/d;->A:I

    return-void
.end method

.method public O(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa/controller/core/hardware/d;->u:I

    return-void
.end method

.method public P(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa/controller/core/hardware/d;->q:I

    return-void
.end method

.method public Q(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa/controller/core/hardware/d;->x:I

    return-void
.end method

.method public R(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa/controller/core/hardware/d;->y:I

    return-void
.end method

.method public S(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa/controller/core/hardware/d;->D:I

    return-void
.end method

.method public T(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa/controller/core/hardware/d;->F:I

    return-void
.end method

.method public U(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa/controller/core/hardware/d;->r:I

    return-void
.end method

.method public V(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa/controller/core/hardware/d;->E:I

    return-void
.end method

.method public W(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa/controller/core/hardware/d;->G:I

    return-void
.end method

.method public X(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa/controller/core/hardware/d;->s:I

    return-void
.end method

.method public Y(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa/controller/core/hardware/d;->t:I

    return-void
.end method

.method public Z(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa/controller/core/hardware/d;->v:I

    return-void
.end method

.method public a0(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa/controller/core/hardware/d;->w:I

    return-void
.end method

.method public b0(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa/controller/core/hardware/d;->p:I

    return-void
.end method

.method public c0(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa/controller/core/hardware/d;->B:I

    return-void
.end method

.method public d0(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa/controller/core/hardware/d;->C:I

    return-void
.end method

.method public k()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa/controller/core/hardware/d;->z:I

    return v0
.end method

.method public l()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa/controller/core/hardware/d;->H:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public m()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa/controller/core/hardware/d;->I:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public n()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa/controller/core/hardware/d;->J:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public o()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa/controller/core/hardware/d;->K:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public q()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa/controller/core/hardware/d;->A:I

    return v0
.end method

.method public r()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa/controller/core/hardware/d;->u:I

    return v0
.end method

.method public s()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa/controller/core/hardware/d;->q:I

    return v0
.end method

.method public t()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa/controller/core/hardware/d;->x:I

    return v0
.end method

.method public u()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa/controller/core/hardware/d;->y:I

    return v0
.end method

.method public v()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa/controller/core/hardware/d;->D:I

    return v0
.end method

.method public w()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa/controller/core/hardware/d;->F:I

    return v0
.end method

.method public x()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa/controller/core/hardware/d;->r:I

    return v0
.end method

.method public y()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa/controller/core/hardware/d;->E:I

    return v0
.end method

.method public z()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa/controller/core/hardware/d;->G:I

    return v0
.end method
