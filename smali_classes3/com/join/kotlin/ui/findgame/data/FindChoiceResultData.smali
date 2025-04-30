.class public Lcom/join/kotlin/ui/findgame/data/FindChoiceResultData;
.super Ljava/lang/Object;
.source "FindChoiceResultData.java"


# instance fields
.field banner:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/kotlin/ui/findgame/data/FindChoiceBannerData;",
            ">;"
        }
    .end annotation
.end field

.field collection_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/kotlin/ui/findgame/data/FindChoiceColloctionListData;",
            ">;"
        }
    .end annotation
.end field

.field game_type:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/kotlin/ui/findgame/data/GameTypeData;",
            ">;"
        }
    .end annotation
.end field

.field guess_you_like:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/kotlin/ui/findgame/data/TagData;",
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

.method public constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/kotlin/ui/findgame/data/FindChoiceBannerData;",
            ">;",
            "Ljava/util/List<",
            "Lcom/join/kotlin/ui/findgame/data/FindChoiceColloctionListData;",
            ">;",
            "Ljava/util/List<",
            "Lcom/join/kotlin/ui/findgame/data/TagData;",
            ">;",
            "Ljava/util/List<",
            "Lcom/join/kotlin/ui/findgame/data/GameTypeData;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/join/kotlin/ui/findgame/data/FindChoiceResultData;->banner:Ljava/util/List;

    .line 4
    iput-object p2, p0, Lcom/join/kotlin/ui/findgame/data/FindChoiceResultData;->collection_list:Ljava/util/List;

    .line 5
    iput-object p3, p0, Lcom/join/kotlin/ui/findgame/data/FindChoiceResultData;->guess_you_like:Ljava/util/List;

    .line 6
    iput-object p4, p0, Lcom/join/kotlin/ui/findgame/data/FindChoiceResultData;->game_type:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getBanner()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/kotlin/ui/findgame/data/FindChoiceBannerData;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/data/FindChoiceResultData;->banner:Ljava/util/List;

    return-object v0
.end method

.method public getCollection_list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/kotlin/ui/findgame/data/FindChoiceColloctionListData;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/data/FindChoiceResultData;->collection_list:Ljava/util/List;

    return-object v0
.end method

.method public getGame_type()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/kotlin/ui/findgame/data/GameTypeData;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/data/FindChoiceResultData;->game_type:Ljava/util/List;

    return-object v0
.end method

.method public getGuess_you_like()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/kotlin/ui/findgame/data/TagData;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/data/FindChoiceResultData;->guess_you_like:Ljava/util/List;

    return-object v0
.end method

.method public setBanner(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/kotlin/ui/findgame/data/FindChoiceBannerData;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/findgame/data/FindChoiceResultData;->banner:Ljava/util/List;

    return-void
.end method

.method public setCollection_list(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/kotlin/ui/findgame/data/FindChoiceColloctionListData;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/findgame/data/FindChoiceResultData;->collection_list:Ljava/util/List;

    return-void
.end method

.method public setGame_type(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/kotlin/ui/findgame/data/GameTypeData;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/findgame/data/FindChoiceResultData;->game_type:Ljava/util/List;

    return-void
.end method

.method public setGuess_you_like(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/kotlin/ui/findgame/data/TagData;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/findgame/data/FindChoiceResultData;->guess_you_like:Ljava/util/List;

    return-void
.end method
