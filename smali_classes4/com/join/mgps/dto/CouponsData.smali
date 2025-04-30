.class public Lcom/join/mgps/dto/CouponsData;
.super Ljava/lang/Object;
.source "CouponsData.java"


# instance fields
.field private expire_date:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private money:I

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getExpire_date()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CouponsData;->expire_date:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CouponsData;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getMoney()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CouponsData;->money:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CouponsData;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setExpire_date(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CouponsData;->expire_date:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CouponsData;->id:Ljava/lang/String;

    return-void
.end method

.method public setMoney(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/CouponsData;->money:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CouponsData;->name:Ljava/lang/String;

    return-void
.end method
