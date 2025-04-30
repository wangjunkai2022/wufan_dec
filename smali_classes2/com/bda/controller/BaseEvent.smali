.class Lcom/bda/controller/BaseEvent;
.super Ljava/lang/Object;
.source "BaseEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bda/controller/BaseEvent$a;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/bda/controller/BaseEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final a:J

.field final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/bda/controller/BaseEvent$a;

    invoke-direct {v0}, Lcom/bda/controller/BaseEvent$a;-><init>()V

    sput-object v0, Lcom/bda/controller/BaseEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/bda/controller/BaseEvent;->a:J

    .line 3
    iput p3, p0, Lcom/bda/controller/BaseEvent;->b:I

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bda/controller/BaseEvent;->a:J

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/bda/controller/BaseEvent;->b:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bda/controller/BaseEvent;->b:I

    return v0
.end method

.method public final b()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bda/controller/BaseEvent;->a:J

    return-wide v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bda/controller/BaseEvent;->a:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 2
    iget p2, p0, Lcom/bda/controller/BaseEvent;->b:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
