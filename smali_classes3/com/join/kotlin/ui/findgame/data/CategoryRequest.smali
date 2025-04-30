.class public Lcom/join/kotlin/ui/findgame/data/CategoryRequest;
.super Ljava/lang/Object;
.source "CategoryRequest.java"


# instance fields
.field private featureType:I

.field private gameSortType:I

.field private gameType:I

.field private limit:I

.field private modelType:I

.field private page:I

.field private playType:I

.field private tagId:I

.field private themeType:I

.field private uid:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 15
    iput v0, p0, Lcom/join/kotlin/ui/findgame/data/CategoryRequest;->gameSortType:I

    .line 16
    iput v0, p0, Lcom/join/kotlin/ui/findgame/data/CategoryRequest;->page:I

    const/16 v0, 0xa

    .line 17
    iput v0, p0, Lcom/join/kotlin/ui/findgame/data/CategoryRequest;->limit:I

    return-void
.end method

.method public constructor <init>(IIIIIIIII)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/join/kotlin/ui/findgame/data/CategoryRequest;->gameSortType:I

    .line 3
    iput v0, p0, Lcom/join/kotlin/ui/findgame/data/CategoryRequest;->page:I

    const/16 v0, 0xa

    .line 4
    iput v0, p0, Lcom/join/kotlin/ui/findgame/data/CategoryRequest;->limit:I

    .line 5
    iput p1, p0, Lcom/join/kotlin/ui/findgame/data/CategoryRequest;->featureType:I

    .line 6
    iput p2, p0, Lcom/join/kotlin/ui/findgame/data/CategoryRequest;->gameSortType:I

    .line 7
    iput p3, p0, Lcom/join/kotlin/ui/findgame/data/CategoryRequest;->gameType:I

    .line 8
    iput p4, p0, Lcom/join/kotlin/ui/findgame/data/CategoryRequest;->modelType:I

    .line 9
    iput p5, p0, Lcom/join/kotlin/ui/findgame/data/CategoryRequest;->page:I

    .line 10
    iput p6, p0, Lcom/join/kotlin/ui/findgame/data/CategoryRequest;->playType:I

    .line 11
    iput p7, p0, Lcom/join/kotlin/ui/findgame/data/CategoryRequest;->tagId:I

    .line 12
    iput p8, p0, Lcom/join/kotlin/ui/findgame/data/CategoryRequest;->themeType:I

    .line 13
    iput p9, p0, Lcom/join/kotlin/ui/findgame/data/CategoryRequest;->uid:I

    return-void
.end method


# virtual methods
.method public getFeatureType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/kotlin/ui/findgame/data/CategoryRequest;->featureType:I

    return v0
.end method

.method public getGameSortType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/kotlin/ui/findgame/data/CategoryRequest;->gameSortType:I

    return v0
.end method

.method public getGameType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/kotlin/ui/findgame/data/CategoryRequest;->gameType:I

    return v0
.end method

.method public getLimit()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/kotlin/ui/findgame/data/CategoryRequest;->limit:I

    return v0
.end method

.method public getModelType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/kotlin/ui/findgame/data/CategoryRequest;->modelType:I

    return v0
.end method

.method public getPage()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/kotlin/ui/findgame/data/CategoryRequest;->page:I

    return v0
.end method

.method public getPlayType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/kotlin/ui/findgame/data/CategoryRequest;->playType:I

    return v0
.end method

.method public getTagId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/kotlin/ui/findgame/data/CategoryRequest;->tagId:I

    return v0
.end method

.method public getThemeType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/kotlin/ui/findgame/data/CategoryRequest;->themeType:I

    return v0
.end method

.method public getUid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/kotlin/ui/findgame/data/CategoryRequest;->uid:I

    return v0
.end method

.method public resetData()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/join/kotlin/ui/findgame/data/CategoryRequest;->featureType:I

    const/4 v1, 0x1

    .line 2
    iput v1, p0, Lcom/join/kotlin/ui/findgame/data/CategoryRequest;->gameSortType:I

    .line 3
    iput v0, p0, Lcom/join/kotlin/ui/findgame/data/CategoryRequest;->gameType:I

    .line 4
    iput v0, p0, Lcom/join/kotlin/ui/findgame/data/CategoryRequest;->modelType:I

    .line 5
    iput v1, p0, Lcom/join/kotlin/ui/findgame/data/CategoryRequest;->page:I

    .line 6
    iput v0, p0, Lcom/join/kotlin/ui/findgame/data/CategoryRequest;->playType:I

    .line 7
    iput v0, p0, Lcom/join/kotlin/ui/findgame/data/CategoryRequest;->tagId:I

    .line 8
    iput v0, p0, Lcom/join/kotlin/ui/findgame/data/CategoryRequest;->themeType:I

    .line 9
    iput v0, p0, Lcom/join/kotlin/ui/findgame/data/CategoryRequest;->uid:I

    const/16 v0, 0xa

    .line 10
    iput v0, p0, Lcom/join/kotlin/ui/findgame/data/CategoryRequest;->limit:I

    return-void
.end method

.method public setFeatureType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/kotlin/ui/findgame/data/CategoryRequest;->featureType:I

    return-void
.end method

.method public setGameSortType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/kotlin/ui/findgame/data/CategoryRequest;->gameSortType:I

    return-void
.end method

.method public setGameType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/kotlin/ui/findgame/data/CategoryRequest;->gameType:I

    return-void
.end method

.method public setLimit(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/kotlin/ui/findgame/data/CategoryRequest;->limit:I

    return-void
.end method

.method public setModelType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/kotlin/ui/findgame/data/CategoryRequest;->modelType:I

    return-void
.end method

.method public setPage(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/kotlin/ui/findgame/data/CategoryRequest;->page:I

    return-void
.end method

.method public setPlayType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/kotlin/ui/findgame/data/CategoryRequest;->playType:I

    return-void
.end method

.method public setTagId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/kotlin/ui/findgame/data/CategoryRequest;->tagId:I

    return-void
.end method

.method public setThemeType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/kotlin/ui/findgame/data/CategoryRequest;->themeType:I

    return-void
.end method

.method public setUid(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/kotlin/ui/findgame/data/CategoryRequest;->uid:I

    return-void
.end method
