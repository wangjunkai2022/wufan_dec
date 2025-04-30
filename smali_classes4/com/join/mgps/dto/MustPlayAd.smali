.class public Lcom/join/mgps/dto/MustPlayAd;
.super Ljava/lang/Object;
.source "MustPlayAd.java"


# instance fields
.field private main:Lcom/join/mgps/dto/MustPlayAdMain;

.field private sub:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/MustPlayAdSub;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMain()Lcom/join/mgps/dto/MustPlayAdMain;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/MustPlayAd;->main:Lcom/join/mgps/dto/MustPlayAdMain;

    return-object v0
.end method

.method public getSub()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/MustPlayAdSub;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/MustPlayAd;->sub:Ljava/util/List;

    return-object v0
.end method

.method public setMain(Lcom/join/mgps/dto/MustPlayAdMain;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/MustPlayAd;->main:Lcom/join/mgps/dto/MustPlayAdMain;

    return-void
.end method

.method public setSub(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/MustPlayAdSub;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/MustPlayAd;->sub:Ljava/util/List;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MustPlayAd{main="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/mgps/dto/MustPlayAd;->main:Lcom/join/mgps/dto/MustPlayAdMain;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sub="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/mgps/dto/MustPlayAd;->sub:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
