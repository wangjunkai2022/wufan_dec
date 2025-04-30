.class public Lcom/join/kotlin/ui/findgame/data/CategoryListMain;
.super Ljava/lang/Object;
.source "CategoryListMain.java"


# instance fields
.field private game_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CollectionBeanSub;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private tag_list:Lcom/join/kotlin/ui/findgame/data/TagData;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/join/kotlin/ui/findgame/data/TagData;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/join/kotlin/ui/findgame/data/TagData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CollectionBeanSub;",
            ">;",
            "Lcom/join/kotlin/ui/findgame/data/TagData;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/join/kotlin/ui/findgame/data/CategoryListMain;->game_list:Ljava/util/List;

    .line 3
    iput-object p2, p0, Lcom/join/kotlin/ui/findgame/data/CategoryListMain;->tag_list:Lcom/join/kotlin/ui/findgame/data/TagData;

    return-void
.end method


# virtual methods
.method public getGame_list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CollectionBeanSub;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/data/CategoryListMain;->game_list:Ljava/util/List;

    return-object v0
.end method

.method public getTag_list()Lcom/join/kotlin/ui/findgame/data/TagData;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/data/CategoryListMain;->tag_list:Lcom/join/kotlin/ui/findgame/data/TagData;

    return-object v0
.end method

.method public setGame_list(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CollectionBeanSub;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/findgame/data/CategoryListMain;->game_list:Ljava/util/List;

    return-void
.end method

.method public setTag_list(Lcom/join/kotlin/ui/findgame/data/TagData;)V
    .locals 0
    .param p1    # Lcom/join/kotlin/ui/findgame/data/TagData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/findgame/data/CategoryListMain;->tag_list:Lcom/join/kotlin/ui/findgame/data/TagData;

    return-void
.end method
