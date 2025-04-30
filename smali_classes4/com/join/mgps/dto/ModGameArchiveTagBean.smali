.class public Lcom/join/mgps/dto/ModGameArchiveTagBean;
.super Ljava/lang/Object;
.source "ModGameArchiveTagBean.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/join/mgps/dto/ModGameArchiveTagBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private count:I

.field private isSelected:Z

.field private name:Ljava/lang/String;

.field private tagId:Ljava/lang/String;

.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/dto/ModGameArchiveTagBean$1;

    invoke-direct {v0}, Lcom/join/mgps/dto/ModGameArchiveTagBean$1;-><init>()V

    sput-object v0, Lcom/join/mgps/dto/ModGameArchiveTagBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/dto/ModGameArchiveTagBean;->name:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/dto/ModGameArchiveTagBean;->count:I

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/dto/ModGameArchiveTagBean;->tagId:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/dto/ModGameArchiveTagBean;->type:I

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/join/mgps/dto/ModGameArchiveTagBean;->isSelected:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ModGameArchiveTagBean;->count:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ModGameArchiveTagBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getTagId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ModGameArchiveTagBean;->tagId:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ModGameArchiveTagBean;->type:I

    return v0
.end method

.method public isSelected()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/ModGameArchiveTagBean;->isSelected:Z

    return v0
.end method

.method public setCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ModGameArchiveTagBean;->count:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ModGameArchiveTagBean;->name:Ljava/lang/String;

    return-void
.end method

.method public setSelected(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/ModGameArchiveTagBean;->isSelected:Z

    return-void
.end method

.method public setTagId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ModGameArchiveTagBean;->tagId:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ModGameArchiveTagBean;->type:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/join/mgps/dto/ModGameArchiveTagBean;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget p2, p0, Lcom/join/mgps/dto/ModGameArchiveTagBean;->count:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    iget-object p2, p0, Lcom/join/mgps/dto/ModGameArchiveTagBean;->tagId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    iget p2, p0, Lcom/join/mgps/dto/ModGameArchiveTagBean;->type:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    iget-boolean p2, p0, Lcom/join/mgps/dto/ModGameArchiveTagBean;->isSelected:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
