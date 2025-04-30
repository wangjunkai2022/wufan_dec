.class public Lcom/join/mgps/dto/PayTagInfo;
.super Ljava/lang/Object;
.source "PayTagInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private amount_check:I

.field private game_app_key:Ljava/lang/String;

.field private pay_game_amount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAmount_check()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/PayTagInfo;->amount_check:I

    return v0
.end method

.method public getGame_app_key()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PayTagInfo;->game_app_key:Ljava/lang/String;

    return-object v0
.end method

.method public getPayGameAmount()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/PayTagInfo;->pay_game_amount:I

    int-to-double v0, v0

    invoke-static {v0, v1}, Lcom/join/mgps/Util/d2;->l(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPay_game_amount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/PayTagInfo;->pay_game_amount:I

    return v0
.end method

.method public setAmount_check(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/PayTagInfo;->amount_check:I

    return-void
.end method

.method public setGame_app_key(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PayTagInfo;->game_app_key:Ljava/lang/String;

    return-void
.end method

.method public setPay_game_amount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/PayTagInfo;->pay_game_amount:I

    return-void
.end method
