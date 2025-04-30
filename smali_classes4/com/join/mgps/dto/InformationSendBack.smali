.class public Lcom/join/mgps/dto/InformationSendBack;
.super Ljava/lang/Object;
.source "InformationSendBack.java"


# instance fields
.field private is_reward:Lcom/join/mgps/dto/RewardBean;

.field private val:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIs_reward()Lcom/join/mgps/dto/RewardBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/InformationSendBack;->is_reward:Lcom/join/mgps/dto/RewardBean;

    return-object v0
.end method

.method public isVal()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/InformationSendBack;->val:Z

    return v0
.end method

.method public setIs_reward(Lcom/join/mgps/dto/RewardBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/InformationSendBack;->is_reward:Lcom/join/mgps/dto/RewardBean;

    return-void
.end method

.method public setVal(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/InformationSendBack;->val:Z

    return-void
.end method
