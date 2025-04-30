.class public Lcom/papa/controller/core/PadInfo;
.super Ljava/lang/Object;
.source "PadInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final A:B = 0x1t

.field public static final B:I = -0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/papa/controller/core/PadInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final y:B = -0x1t

.field public static final z:B


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Ljava/lang/String;

.field protected c:Ljava/lang/String;

.field protected d:Ljava/lang/String;

.field protected e:Ljava/lang/String;

.field protected f:Ljava/lang/String;

.field protected g:Ljava/lang/String;

.field protected h:Ljava/lang/String;

.field protected i:Ljava/lang/String;

.field protected j:Ljava/lang/String;

.field protected k:Ljava/lang/String;

.field protected l:Ljava/lang/String;

.field protected m:Ljava/lang/String;

.field protected n:Ljava/lang/String;

.field protected o:B

.field protected p:B

.field protected q:I

.field protected r:I

.field protected s:Z

.field protected t:Z

.field protected u:Z

.field protected v:Z

.field protected w:Ljava/lang/String;

.field protected x:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/papa/controller/core/PadInfo$a;

    invoke-direct {v0}, Lcom/papa/controller/core/PadInfo$a;-><init>()V

    sput-object v0, Lcom/papa/controller/core/PadInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/papa/controller/core/PadInfo;->a:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/papa/controller/core/PadInfo;->b:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/papa/controller/core/PadInfo;->c:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/papa/controller/core/PadInfo;->d:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/papa/controller/core/PadInfo;->e:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/papa/controller/core/PadInfo;->f:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/papa/controller/core/PadInfo;->g:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/papa/controller/core/PadInfo;->h:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/papa/controller/core/PadInfo;->i:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/papa/controller/core/PadInfo;->j:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Lcom/papa/controller/core/PadInfo;->k:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcom/papa/controller/core/PadInfo;->l:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lcom/papa/controller/core/PadInfo;->m:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lcom/papa/controller/core/PadInfo;->n:Ljava/lang/String;

    const/4 v1, -0x1

    .line 16
    iput-byte v1, p0, Lcom/papa/controller/core/PadInfo;->o:B

    .line 17
    iput-byte v1, p0, Lcom/papa/controller/core/PadInfo;->p:B

    .line 18
    iput v1, p0, Lcom/papa/controller/core/PadInfo;->q:I

    const/4 v1, 0x0

    .line 19
    iput v1, p0, Lcom/papa/controller/core/PadInfo;->r:I

    .line 20
    iput-boolean v1, p0, Lcom/papa/controller/core/PadInfo;->s:Z

    .line 21
    iput-boolean v1, p0, Lcom/papa/controller/core/PadInfo;->t:Z

    .line 22
    iput-boolean v1, p0, Lcom/papa/controller/core/PadInfo;->u:Z

    .line 23
    iput-boolean v1, p0, Lcom/papa/controller/core/PadInfo;->v:Z

    .line 24
    iput-object v0, p0, Lcom/papa/controller/core/PadInfo;->w:Ljava/lang/String;

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/papa/controller/core/PadInfo;->x:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 57
    iput-object v0, p0, Lcom/papa/controller/core/PadInfo;->a:Ljava/lang/String;

    .line 58
    iput-object v0, p0, Lcom/papa/controller/core/PadInfo;->b:Ljava/lang/String;

    .line 59
    iput-object v0, p0, Lcom/papa/controller/core/PadInfo;->c:Ljava/lang/String;

    .line 60
    iput-object v0, p0, Lcom/papa/controller/core/PadInfo;->d:Ljava/lang/String;

    .line 61
    iput-object v0, p0, Lcom/papa/controller/core/PadInfo;->e:Ljava/lang/String;

    .line 62
    iput-object v0, p0, Lcom/papa/controller/core/PadInfo;->f:Ljava/lang/String;

    .line 63
    iput-object v0, p0, Lcom/papa/controller/core/PadInfo;->g:Ljava/lang/String;

    .line 64
    iput-object v0, p0, Lcom/papa/controller/core/PadInfo;->h:Ljava/lang/String;

    .line 65
    iput-object v0, p0, Lcom/papa/controller/core/PadInfo;->i:Ljava/lang/String;

    .line 66
    iput-object v0, p0, Lcom/papa/controller/core/PadInfo;->j:Ljava/lang/String;

    .line 67
    iput-object v0, p0, Lcom/papa/controller/core/PadInfo;->k:Ljava/lang/String;

    .line 68
    iput-object v0, p0, Lcom/papa/controller/core/PadInfo;->l:Ljava/lang/String;

    .line 69
    iput-object v0, p0, Lcom/papa/controller/core/PadInfo;->m:Ljava/lang/String;

    .line 70
    iput-object v0, p0, Lcom/papa/controller/core/PadInfo;->n:Ljava/lang/String;

    const/4 v1, -0x1

    .line 71
    iput-byte v1, p0, Lcom/papa/controller/core/PadInfo;->o:B

    .line 72
    iput-byte v1, p0, Lcom/papa/controller/core/PadInfo;->p:B

    .line 73
    iput v1, p0, Lcom/papa/controller/core/PadInfo;->q:I

    const/4 v1, 0x0

    .line 74
    iput v1, p0, Lcom/papa/controller/core/PadInfo;->r:I

    .line 75
    iput-boolean v1, p0, Lcom/papa/controller/core/PadInfo;->s:Z

    .line 76
    iput-boolean v1, p0, Lcom/papa/controller/core/PadInfo;->t:Z

    .line 77
    iput-boolean v1, p0, Lcom/papa/controller/core/PadInfo;->u:Z

    .line 78
    iput-boolean v1, p0, Lcom/papa/controller/core/PadInfo;->v:Z

    .line 79
    iput-object v0, p0, Lcom/papa/controller/core/PadInfo;->w:Ljava/lang/String;

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/papa/controller/core/PadInfo;->x:Ljava/util/HashMap;

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/papa/controller/core/PadInfo;->a:Ljava/lang/String;

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/papa/controller/core/PadInfo;->b:Ljava/lang/String;

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/papa/controller/core/PadInfo;->c:Ljava/lang/String;

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/papa/controller/core/PadInfo;->d:Ljava/lang/String;

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/papa/controller/core/PadInfo;->e:Ljava/lang/String;

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/papa/controller/core/PadInfo;->f:Ljava/lang/String;

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/papa/controller/core/PadInfo;->g:Ljava/lang/String;

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/papa/controller/core/PadInfo;->h:Ljava/lang/String;

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/papa/controller/core/PadInfo;->i:Ljava/lang/String;

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/papa/controller/core/PadInfo;->j:Ljava/lang/String;

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/papa/controller/core/PadInfo;->k:Ljava/lang/String;

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/papa/controller/core/PadInfo;->l:Ljava/lang/String;

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/papa/controller/core/PadInfo;->m:Ljava/lang/String;

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/papa/controller/core/PadInfo;->n:Ljava/lang/String;

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/papa/controller/core/PadInfo;->o:B

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/papa/controller/core/PadInfo;->p:B

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/papa/controller/core/PadInfo;->q:I

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/papa/controller/core/PadInfo;->r:I

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/papa/controller/core/PadInfo;->s:Z

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcom/papa/controller/core/PadInfo;->t:Z

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    iput-boolean v0, p0, Lcom/papa/controller/core/PadInfo;->u:Z

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    :cond_3
    iput-boolean v1, p0, Lcom/papa/controller/core/PadInfo;->v:Z

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/papa/controller/core/PadInfo;->w:Ljava/lang/String;

    const/4 v0, 0x0

    .line 104
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object p1

    iput-object p1, p0, Lcom/papa/controller/core/PadInfo;->x:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 27
    iput-object v0, p0, Lcom/papa/controller/core/PadInfo;->a:Ljava/lang/String;

    .line 28
    iput-object v0, p0, Lcom/papa/controller/core/PadInfo;->b:Ljava/lang/String;

    .line 29
    iput-object v0, p0, Lcom/papa/controller/core/PadInfo;->c:Ljava/lang/String;

    .line 30
    iput-object v0, p0, Lcom/papa/controller/core/PadInfo;->d:Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lcom/papa/controller/core/PadInfo;->e:Ljava/lang/String;

    .line 32
    iput-object v0, p0, Lcom/papa/controller/core/PadInfo;->f:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lcom/papa/controller/core/PadInfo;->g:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lcom/papa/controller/core/PadInfo;->h:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lcom/papa/controller/core/PadInfo;->i:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lcom/papa/controller/core/PadInfo;->j:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lcom/papa/controller/core/PadInfo;->k:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Lcom/papa/controller/core/PadInfo;->l:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lcom/papa/controller/core/PadInfo;->m:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Lcom/papa/controller/core/PadInfo;->n:Ljava/lang/String;

    const/4 v1, -0x1

    .line 41
    iput-byte v1, p0, Lcom/papa/controller/core/PadInfo;->o:B

    .line 42
    iput-byte v1, p0, Lcom/papa/controller/core/PadInfo;->p:B

    .line 43
    iput v1, p0, Lcom/papa/controller/core/PadInfo;->q:I

    const/4 v1, 0x0

    .line 44
    iput v1, p0, Lcom/papa/controller/core/PadInfo;->r:I

    .line 45
    iput-boolean v1, p0, Lcom/papa/controller/core/PadInfo;->s:Z

    .line 46
    iput-boolean v1, p0, Lcom/papa/controller/core/PadInfo;->t:Z

    .line 47
    iput-boolean v1, p0, Lcom/papa/controller/core/PadInfo;->u:Z

    .line 48
    iput-boolean v1, p0, Lcom/papa/controller/core/PadInfo;->v:Z

    .line 49
    iput-object v0, p0, Lcom/papa/controller/core/PadInfo;->w:Ljava/lang/String;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/papa/controller/core/PadInfo;->x:Ljava/util/HashMap;

    .line 51
    iput-object p1, p0, Lcom/papa/controller/core/PadInfo;->a:Ljava/lang/String;

    .line 52
    iput-object p2, p0, Lcom/papa/controller/core/PadInfo;->b:Ljava/lang/String;

    .line 53
    iput-object p3, p0, Lcom/papa/controller/core/PadInfo;->c:Ljava/lang/String;

    .line 54
    iput-object p4, p0, Lcom/papa/controller/core/PadInfo;->d:Ljava/lang/String;

    .line 55
    iput-object p5, p0, Lcom/papa/controller/core/PadInfo;->e:Ljava/lang/String;

    return-void
.end method

.method private j(Lcom/papa/controller/core/hardware/d;)Ljava/util/HashMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/papa/controller/core/hardware/d;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/16 v1, 0x14

    new-array v2, v1, [I

    .line 2
    fill-array-data v2, :array_0

    new-array v3, v1, [I

    .line 3
    invoke-virtual {p1}, Lcom/papa/controller/core/hardware/d;->r()I

    move-result v4

    const/4 v5, 0x0

    aput v4, v3, v5

    .line 4
    invoke-virtual {p1}, Lcom/papa/controller/core/hardware/d;->E()I

    move-result v4

    const/4 v6, 0x1

    aput v4, v3, v6

    .line 5
    invoke-virtual {p1}, Lcom/papa/controller/core/hardware/d;->s()I

    move-result v4

    const/4 v6, 0x2

    aput v4, v3, v6

    .line 6
    invoke-virtual {p1}, Lcom/papa/controller/core/hardware/d;->x()I

    move-result v4

    const/4 v6, 0x3

    aput v4, v3, v6

    .line 7
    invoke-virtual {p1}, Lcom/papa/controller/core/hardware/d;->A()I

    move-result v4

    const/4 v6, 0x4

    aput v4, v3, v6

    .line 8
    invoke-virtual {p1}, Lcom/papa/controller/core/hardware/d;->k()I

    move-result v4

    const/4 v6, 0x5

    aput v4, v3, v6

    .line 9
    invoke-virtual {p1}, Lcom/papa/controller/core/hardware/d;->q()I

    move-result v4

    const/4 v6, 0x6

    aput v4, v3, v6

    .line 10
    invoke-virtual {p1}, Lcom/papa/controller/core/hardware/d;->F()I

    move-result v4

    const/4 v6, 0x7

    aput v4, v3, v6

    .line 11
    invoke-virtual {p1}, Lcom/papa/controller/core/hardware/d;->G()I

    move-result v4

    const/16 v6, 0x8

    aput v4, v3, v6

    .line 12
    invoke-virtual {p1}, Lcom/papa/controller/core/hardware/d;->v()I

    move-result v4

    const/16 v7, 0x9

    aput v4, v3, v7

    .line 13
    invoke-virtual {p1}, Lcom/papa/controller/core/hardware/d;->y()I

    move-result v4

    const/16 v7, 0xa

    aput v4, v3, v7

    .line 14
    invoke-virtual {p1}, Lcom/papa/controller/core/hardware/d;->w()I

    move-result v4

    const/16 v7, 0xb

    aput v4, v3, v7

    .line 15
    invoke-virtual {p1}, Lcom/papa/controller/core/hardware/d;->z()I

    move-result v4

    const/16 v7, 0xc

    aput v4, v3, v7

    .line 16
    invoke-virtual {p1}, Lcom/papa/controller/core/hardware/d;->C()I

    move-result v4

    const/16 v7, 0xd

    aput v4, v3, v7

    .line 17
    invoke-virtual {p1}, Lcom/papa/controller/core/hardware/d;->D()I

    move-result v4

    const/16 v7, 0xe

    aput v4, v3, v7

    .line 18
    invoke-virtual {p1}, Lcom/papa/controller/core/hardware/d;->B()I

    move-result v4

    const/16 v7, 0xf

    aput v4, v3, v7

    .line 19
    invoke-virtual {p1}, Lcom/papa/controller/core/hardware/d;->t()I

    move-result v4

    const/16 v7, 0x10

    aput v4, v3, v7

    .line 20
    invoke-virtual {p1}, Lcom/papa/controller/core/hardware/d;->u()I

    move-result v4

    const/16 v7, 0x11

    aput v4, v3, v7

    .line 21
    invoke-virtual {p1}, Lcom/papa/controller/core/hardware/d;->l()I

    move-result v4

    shl-int/2addr v4, v6

    invoke-virtual {p1}, Lcom/papa/controller/core/hardware/d;->m()I

    move-result v7

    or-int/2addr v4, v7

    const/16 v7, 0x12

    aput v4, v3, v7

    .line 22
    invoke-virtual {p1}, Lcom/papa/controller/core/hardware/d;->n()I

    move-result v4

    shl-int/2addr v4, v6

    invoke-virtual {p1}, Lcom/papa/controller/core/hardware/d;->o()I

    move-result p1

    or-int/2addr p1, v4

    const/16 v4, 0x13

    aput p1, v3, v4

    .line 23
    iget-object p1, p0, Lcom/papa/controller/core/PadInfo;->x:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    :goto_0
    if-ge p1, v1, :cond_0

    .line 24
    aget v4, v2, p1

    .line 25
    iget-object v6, p0, Lcom/papa/controller/core/PadInfo;->x:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v6, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v5, v1, :cond_1

    .line 26
    aget p1, v2, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aget v4, v3, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    return-object v0

    nop

    :array_0
    .array-data 4
        0x6d
        0x13
        0x14
        0x15
        0x16
        0x60
        0x61
        0x63
        0x64
        0x66
        0x67
        0x68
        0x69
        0x6a
        0x6b
        0x6c
        0xc6
        0xc7
        0xc8
        0xc9
    .end array-data
.end method

.method private n(Lcom/papa/controller/core/hardware/d;)Lcom/papa/controller/core/PadMotionEvent;
    .locals 11

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/papa/controller/core/hardware/d;->l()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Lcom/papa/controller/core/hardware/d;->m()I

    move-result p1

    add-int/lit8 v0, v0, -0x80

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float v0, v0, v1

    const/high16 v2, 0x43000000    # 128.0f

    div-float v9, v0, v2

    add-int/lit8 p1, p1, -0x80

    int-to-float p1, p1

    mul-float p1, p1, v1

    div-float v10, p1, v2

    .line 3
    new-instance p1, Lcom/papa/controller/core/PadMotionEvent;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget v6, p0, Lcom/papa/controller/core/PadInfo;->q:I

    iget-object v7, p0, Lcom/papa/controller/core/PadInfo;->a:Ljava/lang/String;

    const/16 v8, 0xc8

    move-object v3, p1

    invoke-direct/range {v3 .. v10}, Lcom/papa/controller/core/PadMotionEvent;-><init>(JILjava/lang/String;IFF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private o(Lcom/papa/controller/core/hardware/d;)Lcom/papa/controller/core/PadMotionEvent;
    .locals 11

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/papa/controller/core/hardware/d;->n()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Lcom/papa/controller/core/hardware/d;->o()I

    move-result p1

    add-int/lit8 v0, v0, -0x80

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float v0, v0, v1

    const/high16 v2, 0x43000000    # 128.0f

    div-float v9, v0, v2

    add-int/lit8 p1, p1, -0x80

    int-to-float p1, p1

    mul-float p1, p1, v1

    div-float v10, p1, v2

    .line 3
    new-instance p1, Lcom/papa/controller/core/PadMotionEvent;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget v6, p0, Lcom/papa/controller/core/PadInfo;->q:I

    iget-object v7, p0, Lcom/papa/controller/core/PadInfo;->a:Ljava/lang/String;

    const/16 v8, 0xc9

    move-object v3, p1

    invoke-direct/range {v3 .. v10}, Lcom/papa/controller/core/PadMotionEvent;-><init>(JILjava/lang/String;IFF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method


# virtual methods
.method public B()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa/controller/core/PadInfo;->v:Z

    return v0
.end method

.method public C()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa/controller/core/PadInfo;->t:Z

    return v0
.end method

.method public D()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa/controller/core/PadInfo;->s:Z

    return v0
.end method

.method public E(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa/controller/core/PadInfo;->r:I

    return-void
.end method

.method public F(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa/controller/core/PadInfo;->q:I

    return-void
.end method

.method public G(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/controller/core/PadInfo;->e:Ljava/lang/String;

    return-void
.end method

.method public H(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/controller/core/PadInfo;->h:Ljava/lang/String;

    return-void
.end method

.method public I(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/controller/core/PadInfo;->f:Ljava/lang/String;

    return-void
.end method

.method public J(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/controller/core/PadInfo;->w:Ljava/lang/String;

    return-void
.end method

.method public K(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa/controller/core/PadInfo;->u:Z

    return-void
.end method

.method public L(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa/controller/core/PadInfo;->v:Z

    return-void
.end method

.method public M(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/controller/core/PadInfo;->g:Ljava/lang/String;

    return-void
.end method

.method public N(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/papa/controller/core/PadInfo;->x:Ljava/util/HashMap;

    return-void
.end method

.method public O(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/controller/core/PadInfo;->d:Ljava/lang/String;

    return-void
.end method

.method public P(B)V
    .locals 0

    .line 1
    iput-byte p1, p0, Lcom/papa/controller/core/PadInfo;->o:B

    return-void
.end method

.method public Q(B)V
    .locals 0

    .line 1
    iput-byte p1, p0, Lcom/papa/controller/core/PadInfo;->p:B

    return-void
.end method

.method public R(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/controller/core/PadInfo;->a:Ljava/lang/String;

    return-void
.end method

.method public S(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/controller/core/PadInfo;->i:Ljava/lang/String;

    return-void
.end method

.method public T(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/controller/core/PadInfo;->m:Ljava/lang/String;

    return-void
.end method

.method public V(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/controller/core/PadInfo;->n:Ljava/lang/String;

    return-void
.end method

.method public W(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa/controller/core/PadInfo;->t:Z

    return-void
.end method

.method public X(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/controller/core/PadInfo;->c:Ljava/lang/String;

    return-void
.end method

.method public Z(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/controller/core/PadInfo;->j:Ljava/lang/String;

    return-void
.end method

.method public a(Lcom/papa/controller/core/c;Lcom/papa/controller/core/hardware/d;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    invoke-direct {v0, v2}, Lcom/papa/controller/core/PadInfo;->j(Lcom/papa/controller/core/hardware/d;)Ljava/util/HashMap;

    move-result-object v3

    const/16 v4, 0xa

    new-array v5, v4, [I

    .line 2
    fill-array-data v5, :array_0

    const/4 v7, 0x0

    :goto_0
    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-ge v7, v4, :cond_7

    .line 3
    aget v15, v5, v7

    .line 4
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    iget-object v11, v0, Lcom/papa/controller/core/PadInfo;->x:Ljava/util/HashMap;

    .line 5
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 6
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    int-to-float v11, v11

    mul-float v19, v11, v8

    .line 7
    iget-object v11, v0, Lcom/papa/controller/core/PadInfo;->x:Ljava/util/HashMap;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    cmpl-float v11, v11, v19

    if-eqz v11, :cond_0

    const/4 v11, 0x1

    goto :goto_1

    :cond_0
    const/4 v11, 0x0

    :goto_1
    if-nez v11, :cond_1

    goto :goto_4

    :cond_1
    cmpl-float v8, v19, v8

    if-nez v8, :cond_2

    goto :goto_2

    :cond_2
    const/4 v10, 0x0

    .line 8
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 9
    iget v14, v0, Lcom/papa/controller/core/PadInfo;->q:I

    xor-int/lit8 v17, v10, 0x1

    if-eqz v10, :cond_3

    move/from16 v18, v19

    goto :goto_3

    :cond_3
    const/16 v18, 0x0

    .line 10
    :goto_3
    new-instance v8, Lcom/papa/controller/core/PadKeyEvent;

    iget-object v11, v0, Lcom/papa/controller/core/PadInfo;->a:Ljava/lang/String;

    move-object/from16 v16, v11

    move-object v11, v8

    move/from16 v20, v15

    move-object/from16 v15, v16

    move/from16 v16, v20

    invoke-direct/range {v11 .. v18}, Lcom/papa/controller/core/PadKeyEvent;-><init>(JILjava/lang/String;IIF)V

    .line 11
    iget-object v11, v0, Lcom/papa/controller/core/PadInfo;->x:Ljava/util/HashMap;

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    if-eqz v10, :cond_4

    move/from16 v9, v19

    :cond_4
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v11, v12, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v10, :cond_5

    move/from16 v9, v20

    .line 12
    invoke-interface {v1, v9, v8}, Lcom/papa/controller/core/c;->h(ILcom/papa/controller/core/PadKeyEvent;)V

    goto :goto_4

    :cond_5
    move/from16 v9, v20

    .line 13
    invoke-interface {v1, v9, v8}, Lcom/papa/controller/core/c;->R(ILcom/papa/controller/core/PadKeyEvent;)V

    :cond_6
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    :cond_7
    const/16 v4, 0x8

    new-array v5, v4, [I

    .line 14
    fill-array-data v5, :array_1

    const/4 v7, 0x0

    :goto_5
    if-ge v7, v4, :cond_d

    .line 15
    aget v15, v5, v7

    .line 16
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c

    iget-object v11, v0, Lcom/papa/controller/core/PadInfo;->x:Ljava/util/HashMap;

    .line 17
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 18
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    int-to-float v11, v11

    mul-float v11, v11, v8

    const/high16 v12, 0x437f0000    # 255.0f

    div-float v14, v11, v12

    .line 19
    iget-object v11, v0, Lcom/papa/controller/core/PadInfo;->x:Ljava/util/HashMap;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    cmpl-float v11, v11, v14

    if-eqz v11, :cond_8

    const/4 v11, 0x1

    goto :goto_6

    :cond_8
    const/4 v11, 0x0

    :goto_6
    if-nez v11, :cond_9

    goto :goto_9

    :cond_9
    cmpl-float v11, v14, v9

    if-lez v11, :cond_a

    const/16 v19, 0x1

    goto :goto_7

    :cond_a
    const/16 v19, 0x0

    .line 20
    :goto_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 21
    iget v11, v0, Lcom/papa/controller/core/PadInfo;->q:I

    xor-int/lit8 v17, v19, 0x1

    .line 22
    new-instance v6, Lcom/papa/controller/core/PadKeyEvent;

    iget-object v8, v0, Lcom/papa/controller/core/PadInfo;->a:Ljava/lang/String;

    move/from16 v16, v11

    move-object v11, v6

    move/from16 v21, v14

    move/from16 v14, v16

    move/from16 v22, v15

    move-object v15, v8

    move/from16 v16, v22

    move/from16 v18, v21

    invoke-direct/range {v11 .. v18}, Lcom/papa/controller/core/PadKeyEvent;-><init>(JILjava/lang/String;IIF)V

    .line 23
    iget-object v8, v0, Lcom/papa/controller/core/PadInfo;->x:Ljava/util/HashMap;

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    if-eqz v19, :cond_b

    move/from16 v14, v21

    goto :goto_8

    :cond_b
    const/4 v14, 0x0

    :goto_8
    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-virtual {v8, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v11, v21

    move/from16 v8, v22

    .line 24
    invoke-interface {v1, v8, v11, v6}, Lcom/papa/controller/core/c;->k0(IFLcom/papa/controller/core/PadKeyEvent;)V

    :cond_c
    :goto_9
    add-int/lit8 v7, v7, 0x1

    const/high16 v8, 0x3f800000    # 1.0f

    goto/16 :goto_5

    .line 25
    :cond_d
    invoke-direct {v0, v2}, Lcom/papa/controller/core/PadInfo;->n(Lcom/papa/controller/core/hardware/d;)Lcom/papa/controller/core/PadMotionEvent;

    move-result-object v3

    if-eqz v3, :cond_f

    .line 26
    invoke-virtual/range {p2 .. p2}, Lcom/papa/controller/core/hardware/d;->l()I

    move-result v5

    shl-int/2addr v5, v4

    invoke-virtual/range {p2 .. p2}, Lcom/papa/controller/core/hardware/d;->m()I

    move-result v6

    or-int/2addr v5, v6

    int-to-float v5, v5

    .line 27
    iget-object v6, v0, Lcom/papa/controller/core/PadInfo;->x:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/papa/controller/core/PadMotionEvent;->d()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    cmpl-float v6, v6, v5

    if-eqz v6, :cond_e

    const/4 v6, 0x1

    goto :goto_a

    :cond_e
    const/4 v6, 0x0

    :goto_a
    if-eqz v6, :cond_f

    .line 28
    iget-object v6, v0, Lcom/papa/controller/core/PadInfo;->x:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/papa/controller/core/PadMotionEvent;->d()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v6, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    invoke-virtual {v3}, Lcom/papa/controller/core/PadMotionEvent;->e()F

    move-result v5

    invoke-virtual {v3}, Lcom/papa/controller/core/PadMotionEvent;->f()F

    move-result v6

    invoke-interface {v1, v5, v6, v3}, Lcom/papa/controller/core/c;->F(FFLcom/papa/controller/core/PadMotionEvent;)V

    .line 30
    :cond_f
    invoke-direct {v0, v2}, Lcom/papa/controller/core/PadInfo;->o(Lcom/papa/controller/core/hardware/d;)Lcom/papa/controller/core/PadMotionEvent;

    move-result-object v3

    if-eqz v3, :cond_11

    .line 31
    invoke-virtual/range {p2 .. p2}, Lcom/papa/controller/core/hardware/d;->n()I

    move-result v5

    shl-int/lit8 v4, v5, 0x8

    invoke-virtual/range {p2 .. p2}, Lcom/papa/controller/core/hardware/d;->o()I

    move-result v2

    or-int/2addr v2, v4

    int-to-float v2, v2

    .line 32
    iget-object v4, v0, Lcom/papa/controller/core/PadInfo;->x:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/papa/controller/core/PadMotionEvent;->d()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    cmpl-float v4, v4, v2

    if-eqz v4, :cond_10

    const/4 v6, 0x1

    goto :goto_b

    :cond_10
    const/4 v6, 0x0

    :goto_b
    if-eqz v6, :cond_11

    .line 33
    iget-object v4, v0, Lcom/papa/controller/core/PadInfo;->x:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/papa/controller/core/PadMotionEvent;->d()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    invoke-virtual {v3}, Lcom/papa/controller/core/PadMotionEvent;->e()F

    move-result v2

    invoke-virtual {v3}, Lcom/papa/controller/core/PadMotionEvent;->f()F

    move-result v4

    invoke-interface {v1, v2, v4, v3}, Lcom/papa/controller/core/c;->G(FFLcom/papa/controller/core/PadMotionEvent;)V

    :cond_11
    return-void

    nop

    :array_0
    .array-data 4
        0x6d
        0x13
        0x14
        0x15
        0x16
        0x6a
        0x6b
        0x6c
        0xc6
        0xc7
    .end array-data

    :array_1
    .array-data 4
        0x60
        0x61
        0x63
        0x64
        0x66
        0x67
        0x68
        0x69
    .end array-data
.end method

.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa/controller/core/PadInfo;->r:I

    return v0
.end method

.method public b0(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/controller/core/PadInfo;->k:Ljava/lang/String;

    return-void
.end method

.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa/controller/core/PadInfo;->q:I

    return v0
.end method

.method public c0(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/controller/core/PadInfo;->l:Ljava/lang/String;

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/controller/core/PadInfo;->e:Ljava/lang/String;

    return-object v0
.end method

.method public d0(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/controller/core/PadInfo;->b:Ljava/lang/String;

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/controller/core/PadInfo;->h:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/controller/core/PadInfo;->f:Ljava/lang/String;

    return-object v0
.end method

.method public f0(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa/controller/core/PadInfo;->s:Z

    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/controller/core/PadInfo;->w:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/controller/core/PadInfo;->c:Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/controller/core/PadInfo;->g:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/papa/controller/core/PadInfo;->x:Ljava/util/HashMap;

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/controller/core/PadInfo;->d:Ljava/lang/String;

    return-object v0
.end method

.method public l()B
    .locals 1

    .line 1
    iget-byte v0, p0, Lcom/papa/controller/core/PadInfo;->o:B

    return v0
.end method

.method public p()B
    .locals 1

    .line 1
    iget-byte v0, p0, Lcom/papa/controller/core/PadInfo;->p:B

    return v0
.end method

.method public q()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/controller/core/PadInfo;->a:Ljava/lang/String;

    return-object v0
.end method

.method public r()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/controller/core/PadInfo;->i:Ljava/lang/String;

    return-object v0
.end method

.method public s()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/controller/core/PadInfo;->m:Ljava/lang/String;

    return-object v0
.end method

.method public t()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/controller/core/PadInfo;->n:Ljava/lang/String;

    return-object v0
.end method

.method public u()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/controller/core/PadInfo;->j:Ljava/lang/String;

    return-object v0
.end method

.method public v()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/controller/core/PadInfo;->k:Ljava/lang/String;

    return-object v0
.end method

.method public w()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/controller/core/PadInfo;->l:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/papa/controller/core/PadInfo;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lcom/papa/controller/core/PadInfo;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Lcom/papa/controller/core/PadInfo;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Lcom/papa/controller/core/PadInfo;->d:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    iget-object p2, p0, Lcom/papa/controller/core/PadInfo;->e:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6
    iget-object p2, p0, Lcom/papa/controller/core/PadInfo;->f:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7
    iget-object p2, p0, Lcom/papa/controller/core/PadInfo;->g:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8
    iget-object p2, p0, Lcom/papa/controller/core/PadInfo;->h:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    iget-object p2, p0, Lcom/papa/controller/core/PadInfo;->i:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10
    iget-object p2, p0, Lcom/papa/controller/core/PadInfo;->j:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 11
    iget-object p2, p0, Lcom/papa/controller/core/PadInfo;->k:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 12
    iget-object p2, p0, Lcom/papa/controller/core/PadInfo;->l:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 13
    iget-object p2, p0, Lcom/papa/controller/core/PadInfo;->m:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 14
    iget-object p2, p0, Lcom/papa/controller/core/PadInfo;->n:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 15
    iget-byte p2, p0, Lcom/papa/controller/core/PadInfo;->o:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 16
    iget-byte p2, p0, Lcom/papa/controller/core/PadInfo;->p:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 17
    iget p2, p0, Lcom/papa/controller/core/PadInfo;->q:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 18
    iget p2, p0, Lcom/papa/controller/core/PadInfo;->r:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    iget-boolean p2, p0, Lcom/papa/controller/core/PadInfo;->s:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 20
    iget-boolean p2, p0, Lcom/papa/controller/core/PadInfo;->t:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 21
    iget-boolean p2, p0, Lcom/papa/controller/core/PadInfo;->u:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 22
    iget-boolean p2, p0, Lcom/papa/controller/core/PadInfo;->v:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 23
    iget-object p2, p0, Lcom/papa/controller/core/PadInfo;->w:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 24
    iget-object p2, p0, Lcom/papa/controller/core/PadInfo;->x:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    return-void
.end method

.method public y()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/controller/core/PadInfo;->b:Ljava/lang/String;

    return-object v0
.end method

.method public z()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa/controller/core/PadInfo;->u:Z

    return v0
.end method
