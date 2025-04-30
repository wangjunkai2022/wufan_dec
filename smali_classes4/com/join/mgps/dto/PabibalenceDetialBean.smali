.class public Lcom/join/mgps/dto/PabibalenceDetialBean;
.super Ljava/lang/Object;
.source "PabibalenceDetialBean.java"


# instance fields
.field private is_reward:Z

.field private reward_exp:Ljava/lang/String;

.field private reward_money:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getReward_exp()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PabibalenceDetialBean;->reward_exp:Ljava/lang/String;

    return-object v0
.end method

.method public getReward_money()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PabibalenceDetialBean;->reward_money:Ljava/lang/String;

    return-object v0
.end method

.method public isIs_reward()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/PabibalenceDetialBean;->is_reward:Z

    return v0
.end method

.method public setIs_reward(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/PabibalenceDetialBean;->is_reward:Z

    return-void
.end method

.method public setReward_exp(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PabibalenceDetialBean;->reward_exp:Ljava/lang/String;

    return-void
.end method

.method public setReward_money(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PabibalenceDetialBean;->reward_money:Ljava/lang/String;

    return-void
.end method
