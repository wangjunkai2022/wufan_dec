.class public Lcom/join/mgps/dto/PlayCfgBean;
.super Ljava/lang/Object;
.source "PlayCfgBean.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private ad_id:Ljava/lang/String;

.field private probability:Ljava/lang/String;

.field private reward_time:I

.field private sdk_key:Ljava/lang/String;

.field private sdk_type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAd_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PlayCfgBean;->ad_id:Ljava/lang/String;

    return-object v0
.end method

.method public getProbability()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PlayCfgBean;->probability:Ljava/lang/String;

    return-object v0
.end method

.method public getReward_time()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/PlayCfgBean;->reward_time:I

    return v0
.end method

.method public getSdk_key()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PlayCfgBean;->sdk_key:Ljava/lang/String;

    return-object v0
.end method

.method public getSdk_type()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/PlayCfgBean;->sdk_type:I

    return v0
.end method

.method public setAd_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PlayCfgBean;->ad_id:Ljava/lang/String;

    return-void
.end method

.method public setProbability(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PlayCfgBean;->probability:Ljava/lang/String;

    return-void
.end method

.method public setReward_time(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/PlayCfgBean;->reward_time:I

    return-void
.end method

.method public setSdk_key(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PlayCfgBean;->sdk_key:Ljava/lang/String;

    return-void
.end method

.method public setSdk_type(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/PlayCfgBean;->sdk_type:I

    return-void
.end method
