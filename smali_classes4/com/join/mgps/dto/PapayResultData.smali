.class public Lcom/join/mgps/dto/PapayResultData;
.super Ljava/lang/Object;
.source "PapayResultData.java"


# instance fields
.field private ad:Lcom/join/mgps/dto/PayAdinfo;

.field private help:Lcom/join/mgps/dto/PayAdinfo;

.field private orders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/PapayHistoryInfo;",
            ">;"
        }
    .end annotation
.end field

.field private wallet:Lcom/join/mgps/dto/PapayInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAd()Lcom/join/mgps/dto/PayAdinfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PapayResultData;->ad:Lcom/join/mgps/dto/PayAdinfo;

    return-object v0
.end method

.method public getHelp()Lcom/join/mgps/dto/PayAdinfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PapayResultData;->help:Lcom/join/mgps/dto/PayAdinfo;

    return-object v0
.end method

.method public getOrders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/PapayHistoryInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PapayResultData;->orders:Ljava/util/List;

    return-object v0
.end method

.method public getWallet()Lcom/join/mgps/dto/PapayInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PapayResultData;->wallet:Lcom/join/mgps/dto/PapayInfo;

    return-object v0
.end method

.method public setAd(Lcom/join/mgps/dto/PayAdinfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PapayResultData;->ad:Lcom/join/mgps/dto/PayAdinfo;

    return-void
.end method

.method public setHelp(Lcom/join/mgps/dto/PayAdinfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PapayResultData;->help:Lcom/join/mgps/dto/PayAdinfo;

    return-void
.end method

.method public setOrders(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/PapayHistoryInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PapayResultData;->orders:Ljava/util/List;

    return-void
.end method

.method public setWallet(Lcom/join/mgps/dto/PapayInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PapayResultData;->wallet:Lcom/join/mgps/dto/PapayInfo;

    return-void
.end method
