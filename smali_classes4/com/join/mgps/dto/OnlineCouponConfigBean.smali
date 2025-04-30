.class public Lcom/join/mgps/dto/OnlineCouponConfigBean;
.super Ljava/lang/Object;
.source "OnlineCouponConfigBean.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/join/mgps/dto/OnlineCouponConfigBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private gameExitSwitch:Z

.field private gameStartUpSwitch:Z

.field private homePageSwitch:Z

.field private inTimePeriod:Z

.field private locType:I

.field private popup:Z

.field private received:Z

.field private redPacketHint:Ljava/lang/String;

.field private redPacketJumpUrl:Ljava/lang/String;

.field private redPacketSubHint:Ljava/lang/String;

.field private tabHint:Ljava/lang/String;

.field private tabJumpUrl:Ljava/lang/String;

.field private tabSwitch:Z

.field private timePeriodMark:Ljava/lang/String;

.field private uid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/dto/OnlineCouponConfigBean$1;

    invoke-direct {v0}, Lcom/join/mgps/dto/OnlineCouponConfigBean$1;-><init>()V

    sput-object v0, Lcom/join/mgps/dto/OnlineCouponConfigBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/dto/OnlineCouponConfigBean;->locType:I

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/join/mgps/dto/OnlineCouponConfigBean;->popup:Z

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/dto/OnlineCouponConfigBean;->redPacketHint:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/dto/OnlineCouponConfigBean;->redPacketSubHint:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/dto/OnlineCouponConfigBean;->redPacketJumpUrl:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/dto/OnlineCouponConfigBean;->tabJumpUrl:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/dto/OnlineCouponConfigBean;->tabHint:Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/dto/OnlineCouponConfigBean;->uid:I

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcom/join/mgps/dto/OnlineCouponConfigBean;->gameExitSwitch:Z

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    iput-boolean v0, p0, Lcom/join/mgps/dto/OnlineCouponConfigBean;->gameStartUpSwitch:Z

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    iput-boolean v0, p0, Lcom/join/mgps/dto/OnlineCouponConfigBean;->homePageSwitch:Z

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    :goto_4
    iput-boolean v0, p0, Lcom/join/mgps/dto/OnlineCouponConfigBean;->tabSwitch:Z

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    goto :goto_5

    :cond_5
    const/4 v0, 0x0

    :goto_5
    iput-boolean v0, p0, Lcom/join/mgps/dto/OnlineCouponConfigBean;->inTimePeriod:Z

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/dto/OnlineCouponConfigBean;->timePeriodMark:Ljava/lang/String;

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_6

    :cond_6
    const/4 v1, 0x0

    :goto_6
    iput-boolean v1, p0, Lcom/join/mgps/dto/OnlineCouponConfigBean;->received:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getLocType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/OnlineCouponConfigBean;->locType:I

    return v0
.end method

.method public getRedPacketHint()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/OnlineCouponConfigBean;->redPacketHint:Ljava/lang/String;

    return-object v0
.end method

.method public getRedPacketJumpUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/OnlineCouponConfigBean;->redPacketJumpUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getRedPacketSubHint()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/OnlineCouponConfigBean;->redPacketSubHint:Ljava/lang/String;

    return-object v0
.end method

.method public getTabHint()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/OnlineCouponConfigBean;->tabHint:Ljava/lang/String;

    return-object v0
.end method

.method public getTabJumpUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/OnlineCouponConfigBean;->tabJumpUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTimePeriodMark()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/OnlineCouponConfigBean;->timePeriodMark:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/OnlineCouponConfigBean;->uid:I

    return v0
.end method

.method public isGameExitSwitch()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/OnlineCouponConfigBean;->gameExitSwitch:Z

    return v0
.end method

.method public isGameStartUpSwitch()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/OnlineCouponConfigBean;->gameStartUpSwitch:Z

    return v0
.end method

.method public isHomePageSwitch()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/OnlineCouponConfigBean;->homePageSwitch:Z

    return v0
.end method

.method public isInTimePeriod()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/OnlineCouponConfigBean;->inTimePeriod:Z

    return v0
.end method

.method public isPopup()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/OnlineCouponConfigBean;->popup:Z

    return v0
.end method

.method public isReceived()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/OnlineCouponConfigBean;->received:Z

    return v0
.end method

.method public isTabSwitch()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/OnlineCouponConfigBean;->tabSwitch:Z

    return v0
.end method

.method public setGameExitSwitch(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/OnlineCouponConfigBean;->gameExitSwitch:Z

    return-void
.end method

.method public setGameStartUpSwitch(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/OnlineCouponConfigBean;->gameStartUpSwitch:Z

    return-void
.end method

.method public setHomePageSwitch(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/OnlineCouponConfigBean;->homePageSwitch:Z

    return-void
.end method

.method public setInTimePeriod(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/OnlineCouponConfigBean;->inTimePeriod:Z

    return-void
.end method

.method public setLocType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/OnlineCouponConfigBean;->locType:I

    return-void
.end method

.method public setPopup(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/OnlineCouponConfigBean;->popup:Z

    return-void
.end method

.method public setReceived(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/OnlineCouponConfigBean;->received:Z

    return-void
.end method

.method public setRedPacketHint(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/OnlineCouponConfigBean;->redPacketHint:Ljava/lang/String;

    return-void
.end method

.method public setRedPacketJumpUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/OnlineCouponConfigBean;->redPacketJumpUrl:Ljava/lang/String;

    return-void
.end method

.method public setRedPacketSubHint(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/OnlineCouponConfigBean;->redPacketSubHint:Ljava/lang/String;

    return-void
.end method

.method public setTabHint(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/OnlineCouponConfigBean;->tabHint:Ljava/lang/String;

    return-void
.end method

.method public setTabJumpUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/OnlineCouponConfigBean;->tabJumpUrl:Ljava/lang/String;

    return-void
.end method

.method public setTabSwitch(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/OnlineCouponConfigBean;->tabSwitch:Z

    return-void
.end method

.method public setTimePeriodMark(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/OnlineCouponConfigBean;->timePeriodMark:Ljava/lang/String;

    return-void
.end method

.method public setUid(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/OnlineCouponConfigBean;->uid:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget p2, p0, Lcom/join/mgps/dto/OnlineCouponConfigBean;->locType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2
    iget-boolean p2, p0, Lcom/join/mgps/dto/OnlineCouponConfigBean;->popup:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 3
    iget-object p2, p0, Lcom/join/mgps/dto/OnlineCouponConfigBean;->redPacketHint:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Lcom/join/mgps/dto/OnlineCouponConfigBean;->redPacketSubHint:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    iget-object p2, p0, Lcom/join/mgps/dto/OnlineCouponConfigBean;->redPacketJumpUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6
    iget-object p2, p0, Lcom/join/mgps/dto/OnlineCouponConfigBean;->tabJumpUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7
    iget-object p2, p0, Lcom/join/mgps/dto/OnlineCouponConfigBean;->tabHint:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8
    iget p2, p0, Lcom/join/mgps/dto/OnlineCouponConfigBean;->uid:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    iget-boolean p2, p0, Lcom/join/mgps/dto/OnlineCouponConfigBean;->gameExitSwitch:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 10
    iget-boolean p2, p0, Lcom/join/mgps/dto/OnlineCouponConfigBean;->gameStartUpSwitch:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 11
    iget-boolean p2, p0, Lcom/join/mgps/dto/OnlineCouponConfigBean;->homePageSwitch:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 12
    iget-boolean p2, p0, Lcom/join/mgps/dto/OnlineCouponConfigBean;->tabSwitch:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 13
    iget-boolean p2, p0, Lcom/join/mgps/dto/OnlineCouponConfigBean;->inTimePeriod:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 14
    iget-object p2, p0, Lcom/join/mgps/dto/OnlineCouponConfigBean;->timePeriodMark:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 15
    iget-boolean p2, p0, Lcom/join/mgps/dto/OnlineCouponConfigBean;->received:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
