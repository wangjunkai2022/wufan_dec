.class public Lcom/join/mgps/dto/GamelistRankingmainbean;
.super Ljava/lang/Object;
.source "GamelistRankingmainbean.java"


# instance fields
.field private fav_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean;",
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
.method public getFav_list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GamelistRankingmainbean;->fav_list:Ljava/util/List;

    return-object v0
.end method

.method public setFav_list(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GamelistRankingmainbean;->fav_list:Ljava/util/List;

    return-void
.end method
