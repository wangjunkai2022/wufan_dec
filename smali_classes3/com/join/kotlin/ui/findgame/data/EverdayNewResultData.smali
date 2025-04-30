.class public Lcom/join/kotlin/ui/findgame/data/EverdayNewResultData;
.super Ljava/lang/Object;
.source "EverdayNewResultData.java"


# instance fields
.field game_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/kotlin/ui/findgame/data/EverdayNewListItem;",
            ">;"
        }
    .end annotation
.end field

.field game_type:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;",
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
.method public getGame_list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/kotlin/ui/findgame/data/EverdayNewListItem;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/data/EverdayNewResultData;->game_list:Ljava/util/List;

    return-object v0
.end method

.method public getGame_type()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/data/EverdayNewResultData;->game_type:Ljava/util/List;

    return-object v0
.end method

.method public setGame_list(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/kotlin/ui/findgame/data/EverdayNewListItem;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/findgame/data/EverdayNewResultData;->game_list:Ljava/util/List;

    return-void
.end method

.method public setGame_type(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/findgame/data/EverdayNewResultData;->game_type:Ljava/util/List;

    return-void
.end method
