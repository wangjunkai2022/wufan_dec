.class public Lcom/join/mgps/dto/GameListAndCollectionInfo;
.super Lcom/join/mgps/dto/PaPaBean;
.source "GameListAndCollectionInfo.java"


# instance fields
.field private collection_info:Lcom/join/mgps/dto/CollectionInfo;

.field private game_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/AppBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/dto/PaPaBean;-><init>()V

    return-void
.end method


# virtual methods
.method public getCollection_info()Lcom/join/mgps/dto/CollectionInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameListAndCollectionInfo;->collection_info:Lcom/join/mgps/dto/CollectionInfo;

    return-object v0
.end method

.method public getGame_list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/AppBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameListAndCollectionInfo;->game_list:Ljava/util/List;

    return-object v0
.end method

.method public setCollection_info(Lcom/join/mgps/dto/CollectionInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameListAndCollectionInfo;->collection_info:Lcom/join/mgps/dto/CollectionInfo;

    return-void
.end method

.method public setGame_list(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/AppBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameListAndCollectionInfo;->game_list:Ljava/util/List;

    return-void
.end method
