.class public Lcom/join/mgps/activity/vipzone/bean/VipCenterRequestBean;
.super Ljava/lang/Object;
.source "VipCenterRequestBean.java"


# instance fields
.field boardId:I

.field uid:I

.field userToken:Ljava/lang/String;

.field vip:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBoardId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/vipzone/bean/VipCenterRequestBean;->boardId:I

    return v0
.end method

.method public getUid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/vipzone/bean/VipCenterRequestBean;->uid:I

    return v0
.end method

.method public getUserToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/bean/VipCenterRequestBean;->userToken:Ljava/lang/String;

    return-object v0
.end method

.method public getVip()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/vipzone/bean/VipCenterRequestBean;->vip:I

    return v0
.end method

.method public setBoardId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/vipzone/bean/VipCenterRequestBean;->boardId:I

    return-void
.end method

.method public setUid(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/vipzone/bean/VipCenterRequestBean;->uid:I

    return-void
.end method

.method public setUserToken(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/bean/VipCenterRequestBean;->userToken:Ljava/lang/String;

    return-void
.end method

.method public setVip(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/vipzone/bean/VipCenterRequestBean;->vip:I

    return-void
.end method
