.class public Lcom/join/mgps/dto/JPushIntentData;
.super Ljava/lang/Object;
.source "JPushIntentData.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private jumpInfo:Lcom/join/mgps/dto/GameHeadAd;

.field private subType:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getJumpInfo()Lcom/join/mgps/dto/GameHeadAd;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/JPushIntentData;->jumpInfo:Lcom/join/mgps/dto/GameHeadAd;

    return-object v0
.end method

.method public getSubType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/JPushIntentData;->subType:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/JPushIntentData;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setJumpInfo(Lcom/join/mgps/dto/GameHeadAd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/JPushIntentData;->jumpInfo:Lcom/join/mgps/dto/GameHeadAd;

    return-void
.end method

.method public setSubType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/JPushIntentData;->subType:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/JPushIntentData;->type:Ljava/lang/String;

    return-void
.end method
