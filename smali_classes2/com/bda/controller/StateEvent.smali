.class public Lcom/bda/controller/StateEvent;
.super Lcom/bda/controller/BaseEvent;
.source "StateEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bda/controller/StateEvent$a;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/bda/controller/StateEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:I = 0x0

.field public static final f:I = 0x1

.field public static final g:I = 0x2

.field public static final h:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final i:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final j:I = 0x3

.field public static final k:I = 0x4

.field public static final l:I = 0x0

.field public static final m:I = 0x1

.field public static final n:I = 0x0

.field public static final o:I = 0x1

.field public static final p:I = 0x0

.field public static final q:I = 0x1

.field public static final r:I = 0x2


# instance fields
.field final c:I

.field final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/bda/controller/StateEvent$a;

    invoke-direct {v0}, Lcom/bda/controller/StateEvent$a;-><init>()V

    sput-object v0, Lcom/bda/controller/StateEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JIII)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/bda/controller/BaseEvent;-><init>(JI)V

    .line 2
    iput p4, p0, Lcom/bda/controller/StateEvent;->c:I

    .line 3
    iput p5, p0, Lcom/bda/controller/StateEvent;->d:I

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 4
    invoke-direct {p0, p1}, Lcom/bda/controller/BaseEvent;-><init>(Landroid/os/Parcel;)V

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/bda/controller/StateEvent;->c:I

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/bda/controller/StateEvent;->d:I

    return-void
.end method


# virtual methods
.method public final c()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bda/controller/StateEvent;->d:I

    return v0
.end method

.method public final d()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bda/controller/StateEvent;->c:I

    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/bda/controller/BaseEvent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2
    iget p2, p0, Lcom/bda/controller/StateEvent;->c:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    iget p2, p0, Lcom/bda/controller/StateEvent;->d:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
