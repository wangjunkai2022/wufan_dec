.class public Lcom/join/mgps/dto/PapaMainGameBespeak;
.super Ljava/lang/Object;
.source "PapaMainGameBespeak.java"


# instance fields
.field private info:Lcom/join/mgps/dto/PapaMainGameBespeakInfo;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecomDatabean;",
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
.method public getInfo()Lcom/join/mgps/dto/PapaMainGameBespeakInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PapaMainGameBespeak;->info:Lcom/join/mgps/dto/PapaMainGameBespeakInfo;

    return-object v0
.end method

.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecomDatabean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PapaMainGameBespeak;->list:Ljava/util/List;

    return-object v0
.end method

.method public setInfo(Lcom/join/mgps/dto/PapaMainGameBespeakInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PapaMainGameBespeak;->info:Lcom/join/mgps/dto/PapaMainGameBespeakInfo;

    return-void
.end method

.method public setList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecomDatabean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PapaMainGameBespeak;->list:Ljava/util/List;

    return-void
.end method
