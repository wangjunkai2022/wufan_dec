.class public Lcom/join/mgps/dto/RewardBean;
.super Ljava/lang/Object;
.source "RewardBean.java"


# instance fields
.field private exp:Ljava/lang/String;

.field private money:Ljava/lang/String;

.field private on_off:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/join/mgps/dto/RewardBean;->money:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/join/mgps/dto/RewardBean;->exp:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 5
    iput-object v0, p0, Lcom/join/mgps/dto/RewardBean;->money:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/join/mgps/dto/RewardBean;->exp:Ljava/lang/String;

    .line 7
    iput-object p1, p0, Lcom/join/mgps/dto/RewardBean;->money:Ljava/lang/String;

    .line 8
    iput-object p2, p0, Lcom/join/mgps/dto/RewardBean;->exp:Ljava/lang/String;

    .line 9
    iput p3, p0, Lcom/join/mgps/dto/RewardBean;->on_off:I

    return-void
.end method


# virtual methods
.method public getExp()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RewardBean;->exp:Ljava/lang/String;

    return-object v0
.end method

.method public getMoney()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RewardBean;->money:Ljava/lang/String;

    return-object v0
.end method

.method public getOn_off()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/RewardBean;->on_off:I

    return v0
.end method

.method public setExp(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RewardBean;->exp:Ljava/lang/String;

    return-void
.end method

.method public setMoney(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RewardBean;->money:Ljava/lang/String;

    return-void
.end method

.method public setOn_off(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/RewardBean;->on_off:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RewardBean{money="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/mgps/dto/RewardBean;->money:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", exp=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/mgps/dto/RewardBean;->exp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", on_off="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/join/mgps/dto/RewardBean;->on_off:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
