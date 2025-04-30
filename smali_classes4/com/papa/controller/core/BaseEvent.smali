.class public Lcom/papa/controller/core/BaseEvent;
.super Ljava/lang/Object;
.source "BaseEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final A:I = -0x1

.field public static final B:I = 0x0

.field public static final C:I = 0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/papa/controller/core/BaseEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final D:I = 0x2

.field public static final E:I = 0x8

.field public static final F:I = 0x9

.field public static final G:I = 0x0

.field public static final H:I = 0x1

.field public static final I:I = 0x2

.field public static final d:I = 0x13

.field public static final e:I = 0x14

.field public static final f:I = 0x15

.field public static final g:I = 0x16

.field public static final h:I = 0x60

.field public static final i:I = 0x61

.field public static final j:I = 0x63

.field public static final k:I = 0x64

.field public static final l:I = 0x66

.field public static final m:I = 0x67

.field public static final n:I = 0x68

.field public static final o:I = 0x69

.field public static final p:I = 0x6a

.field public static final q:I = 0x6b

.field public static final r:I = 0x6c

.field public static final s:I = 0x6d

.field public static final t:I = 0xc6

.field public static final u:I = 0xc7

.field public static final v:I = 0xc8

.field public static final w:I = 0xc9

.field public static final x:I = 0x0

.field public static final y:I = 0x1

.field public static final z:I = -0x1


# instance fields
.field final a:J

.field final b:I

.field final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/papa/controller/core/BaseEvent$a;

    invoke-direct {v0}, Lcom/papa/controller/core/BaseEvent$a;-><init>()V

    sput-object v0, Lcom/papa/controller/core/BaseEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/papa/controller/core/BaseEvent;->a:J

    .line 3
    iput p3, p0, Lcom/papa/controller/core/BaseEvent;->b:I

    .line 4
    iput-object p4, p0, Lcom/papa/controller/core/BaseEvent;->c:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/papa/controller/core/BaseEvent;->a:J

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/papa/controller/core/BaseEvent;->b:I

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/papa/controller/core/BaseEvent;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa/controller/core/BaseEvent;->b:I

    return v0
.end method

.method public b()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/papa/controller/core/BaseEvent;->a:J

    return-wide v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/controller/core/BaseEvent;->c:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/papa/controller/core/BaseEvent;->a:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 2
    iget p2, p0, Lcom/papa/controller/core/BaseEvent;->b:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
