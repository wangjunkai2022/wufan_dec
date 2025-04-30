.class public Lcom/papa/controller/core/PadKeyEvent;
.super Lcom/papa/controller/core/BaseEvent;
.source "PadKeyEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/papa/controller/core/PadKeyEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final J:I

.field final K:I

.field final n0:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/papa/controller/core/PadKeyEvent$a;

    invoke-direct {v0}, Lcom/papa/controller/core/PadKeyEvent$a;-><init>()V

    sput-object v0, Lcom/papa/controller/core/PadKeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JILjava/lang/String;IIF)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/papa/controller/core/BaseEvent;-><init>(JILjava/lang/String;)V

    .line 2
    iput p5, p0, Lcom/papa/controller/core/PadKeyEvent;->J:I

    .line 3
    iput p6, p0, Lcom/papa/controller/core/PadKeyEvent;->K:I

    .line 4
    iput p7, p0, Lcom/papa/controller/core/PadKeyEvent;->n0:F

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 5
    invoke-direct {p0, p1}, Lcom/papa/controller/core/BaseEvent;-><init>(Landroid/os/Parcel;)V

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/papa/controller/core/PadKeyEvent;->J:I

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/papa/controller/core/PadKeyEvent;->K:I

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/papa/controller/core/PadKeyEvent;->n0:F

    return-void
.end method


# virtual methods
.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa/controller/core/PadKeyEvent;->K:I

    return v0
.end method

.method public e()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa/controller/core/PadKeyEvent;->J:I

    return v0
.end method

.method public f()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa/controller/core/PadKeyEvent;->n0:F

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/papa/controller/core/BaseEvent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2
    iget p2, p0, Lcom/papa/controller/core/PadKeyEvent;->J:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    iget p2, p0, Lcom/papa/controller/core/PadKeyEvent;->K:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    iget p2, p0, Lcom/papa/controller/core/PadKeyEvent;->n0:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method
