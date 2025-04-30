.class public Lcom/join/kotlin/ui/findgame/data/GameTypeData;
.super Ljava/lang/Object;
.source "GameTypeData.java"


# instance fields
.field private id:I

.field private isSelected:Z

.field private sub_game_type:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private title:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;ILjava/util/List;Z)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "title"

    .line 2
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput p1, p0, Lcom/join/kotlin/ui/findgame/data/GameTypeData;->id:I

    .line 4
    iput-object p2, p0, Lcom/join/kotlin/ui/findgame/data/GameTypeData;->title:Ljava/lang/String;

    .line 5
    iput p3, p0, Lcom/join/kotlin/ui/findgame/data/GameTypeData;->type:I

    .line 6
    iput-object p4, p0, Lcom/join/kotlin/ui/findgame/data/GameTypeData;->sub_game_type:Ljava/util/List;

    .line 7
    iput-boolean p5, p0, Lcom/join/kotlin/ui/findgame/data/GameTypeData;->isSelected:Z

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/kotlin/ui/findgame/data/GameTypeData;->id:I

    return v0
.end method

.method public getSub_game_type()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/data/GameTypeData;->sub_game_type:Ljava/util/List;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/data/GameTypeData;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/kotlin/ui/findgame/data/GameTypeData;->type:I

    return v0
.end method

.method public isSelected()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/kotlin/ui/findgame/data/GameTypeData;->isSelected:Z

    return v0
.end method

.method public setId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/kotlin/ui/findgame/data/GameTypeData;->id:I

    return-void
.end method

.method public setSelected(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/kotlin/ui/findgame/data/GameTypeData;->isSelected:Z

    return-void
.end method

.method public setSub_game_type(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/findgame/data/GameTypeData;->sub_game_type:Ljava/util/List;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    .line 1
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/join/kotlin/ui/findgame/data/GameTypeData;->title:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/kotlin/ui/findgame/data/GameTypeData;->type:I

    return-void
.end method
