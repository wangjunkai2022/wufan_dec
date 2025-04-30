.class public Lcom/join/mgps/activity/vipzone/bean/PrizeBean;
.super Ljava/lang/Object;
.source "PrizeBean.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private hasAddAddress:Z

.field private id:I

.field private name:Ljava/lang/String;

.field private pic:Ljava/lang/String;

.field private prize_type:I

.field private time:J

.field private title:Ljava/lang/String;

.field private type:I

.field private uid:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/activity/vipzone/bean/PrizeBean;->hasAddAddress:Z

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/vipzone/bean/PrizeBean;->id:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/bean/PrizeBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPic()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/bean/PrizeBean;->pic:Ljava/lang/String;

    return-object v0
.end method

.method public getPrize_type()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/vipzone/bean/PrizeBean;->prize_type:I

    return v0
.end method

.method public getTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/activity/vipzone/bean/PrizeBean;->time:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/bean/PrizeBean;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/vipzone/bean/PrizeBean;->type:I

    return v0
.end method

.method public getUid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/vipzone/bean/PrizeBean;->uid:I

    return v0
.end method

.method public isHasAddAddress()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/vipzone/bean/PrizeBean;->hasAddAddress:Z

    return v0
.end method

.method public setHasAddAddress(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/activity/vipzone/bean/PrizeBean;->hasAddAddress:Z

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/vipzone/bean/PrizeBean;->id:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/bean/PrizeBean;->name:Ljava/lang/String;

    return-void
.end method

.method public setPic(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/bean/PrizeBean;->pic:Ljava/lang/String;

    return-void
.end method

.method public setPrize_type(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/vipzone/bean/PrizeBean;->prize_type:I

    return-void
.end method

.method public setTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/activity/vipzone/bean/PrizeBean;->time:J

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/bean/PrizeBean;->title:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/vipzone/bean/PrizeBean;->type:I

    return-void
.end method

.method public setUid(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/vipzone/bean/PrizeBean;->uid:I

    return-void
.end method
