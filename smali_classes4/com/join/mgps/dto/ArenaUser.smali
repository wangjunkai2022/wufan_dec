.class public Lcom/join/mgps/dto/ArenaUser;
.super Ljava/lang/Object;
.source "ArenaUser.java"


# instance fields
.field private create_money:I

.field private join_money:I

.field private money:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCreate_money()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ArenaUser;->create_money:I

    return v0
.end method

.method public getJoin_money()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ArenaUser;->join_money:I

    return v0
.end method

.method public getMoney()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ArenaUser;->money:I

    return v0
.end method

.method public setCreate_money(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ArenaUser;->create_money:I

    return-void
.end method

.method public setJoin_money(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ArenaUser;->join_money:I

    return-void
.end method

.method public setMoney(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ArenaUser;->money:I

    return-void
.end method
