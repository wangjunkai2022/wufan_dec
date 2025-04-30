.class public Lcom/join/mgps/dto/PayActivityRebate;
.super Ljava/lang/Object;
.source "PayActivityRebate.java"


# instance fields
.field private min_money:I

.field private rebate_money:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/join/mgps/dto/PayActivityRebate;->min_money:I

    .line 4
    iput p2, p0, Lcom/join/mgps/dto/PayActivityRebate;->rebate_money:I

    return-void
.end method


# virtual methods
.method public getMin_money()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/PayActivityRebate;->min_money:I

    return v0
.end method

.method public getRebate_money()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/PayActivityRebate;->rebate_money:I

    return v0
.end method

.method public setMin_money(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/PayActivityRebate;->min_money:I

    return-void
.end method

.method public setRebate_money(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/PayActivityRebate;->rebate_money:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PayActivityRebate{min_money="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/join/mgps/dto/PayActivityRebate;->min_money:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rebate_money="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/join/mgps/dto/PayActivityRebate;->rebate_money:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
