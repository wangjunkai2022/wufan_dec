.class public Lcom/join/mgps/dto/RankingBean;
.super Ljava/lang/Object;
.source "RankingBean.java"


# instance fields
.field hottest:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RankingGameBean;",
            ">;"
        }
    .end annotation
.end field

.field newest:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RankingGameBean;",
            ">;"
        }
    .end annotation
.end field

.field soar:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RankingGameBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RankingGameBean;",
            ">;",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RankingGameBean;",
            ">;",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RankingGameBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/join/mgps/dto/RankingBean;->hottest:Ljava/util/List;

    .line 3
    iput-object p2, p0, Lcom/join/mgps/dto/RankingBean;->newest:Ljava/util/List;

    .line 4
    iput-object p3, p0, Lcom/join/mgps/dto/RankingBean;->soar:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getHottest()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RankingGameBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RankingBean;->hottest:Ljava/util/List;

    return-object v0
.end method

.method public getNewest()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RankingGameBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RankingBean;->newest:Ljava/util/List;

    return-object v0
.end method

.method public getSoar()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RankingGameBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RankingBean;->soar:Ljava/util/List;

    return-object v0
.end method

.method public setHottest(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RankingGameBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RankingBean;->hottest:Ljava/util/List;

    return-void
.end method

.method public setNewest(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RankingGameBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RankingBean;->newest:Ljava/util/List;

    return-void
.end method

.method public setSoar(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RankingGameBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RankingBean;->soar:Ljava/util/List;

    return-void
.end method
