.class public Lcom/papa/controller/core/PadStateEvent;
.super Lcom/papa/controller/core/BaseEvent;
.source "PadStateEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/papa/controller/core/PadStateEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final J:I

.field final K:I

.field protected n0:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/papa/controller/core/PadStateEvent$a;

    invoke-direct {v0}, Lcom/papa/controller/core/PadStateEvent$a;-><init>()V

    sput-object v0, Lcom/papa/controller/core/PadStateEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JILjava/lang/String;IILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/papa/controller/core/BaseEvent;-><init>(JILjava/lang/String;)V

    const-string p1, ""

    .line 2
    iput-object p1, p0, Lcom/papa/controller/core/PadStateEvent;->n0:Ljava/lang/String;

    .line 3
    iput p5, p0, Lcom/papa/controller/core/PadStateEvent;->J:I

    .line 4
    iput p6, p0, Lcom/papa/controller/core/PadStateEvent;->K:I

    .line 5
    iput-object p7, p0, Lcom/papa/controller/core/PadStateEvent;->n0:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 6
    invoke-direct {p0, p1}, Lcom/papa/controller/core/BaseEvent;-><init>(Landroid/os/Parcel;)V

    const-string v0, ""

    .line 7
    iput-object v0, p0, Lcom/papa/controller/core/PadStateEvent;->n0:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/papa/controller/core/PadStateEvent;->J:I

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/papa/controller/core/PadStateEvent;->K:I

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/papa/controller/core/PadStateEvent;->n0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa/controller/core/PadStateEvent;->K:I

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/controller/core/PadStateEvent;->n0:Ljava/lang/String;

    return-object v0
.end method

.method public f()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa/controller/core/PadStateEvent;->J:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PadStateEvent{state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/papa/controller/core/PadStateEvent;->J:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/papa/controller/core/PadStateEvent;->K:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mac=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/papa/controller/core/PadStateEvent;->n0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/papa/controller/core/BaseEvent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2
    iget p2, p0, Lcom/papa/controller/core/PadStateEvent;->J:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    iget p2, p0, Lcom/papa/controller/core/PadStateEvent;->K:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    iget-object p2, p0, Lcom/papa/controller/core/PadStateEvent;->n0:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
