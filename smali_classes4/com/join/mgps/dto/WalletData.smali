.class public Lcom/join/mgps/dto/WalletData;
.super Ljava/lang/Object;
.source "WalletData.java"


# instance fields
.field private money:Ljava/lang/String;

.field private red_envelope:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMoney()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/WalletData;->money:Ljava/lang/String;

    return-object v0
.end method

.method public getRed_envelope()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/WalletData;->red_envelope:Ljava/lang/String;

    return-object v0
.end method

.method public setMoney(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/WalletData;->money:Ljava/lang/String;

    return-void
.end method

.method public setRed_envelope(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/WalletData;->red_envelope:Ljava/lang/String;

    return-void
.end method
