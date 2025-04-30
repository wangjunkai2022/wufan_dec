.class public Lcom/join/mgps/dto/ClassifyBean;
.super Ljava/lang/Object;
.source "ClassifyBean.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private game_tag_type:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ClassifyGameTagBean;",
            ">;"
        }
    .end annotation
.end field

.field private game_type:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ClassifyGameTypeBean;",
            ">;"
        }
    .end annotation
.end field

.field private game_type_recommend:Ljava/util/List;
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

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ClassifyGameTagBean;",
            ">;)V"
        }
    .end annotation

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/join/mgps/dto/ClassifyBean;->game_tag_type:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecomDatabean;",
            ">;",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ClassifyGameTypeBean;",
            ">;",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ClassifyGameTagBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/join/mgps/dto/ClassifyBean;->game_type_recommend:Ljava/util/List;

    .line 3
    iput-object p2, p0, Lcom/join/mgps/dto/ClassifyBean;->game_type:Ljava/util/List;

    .line 4
    iput-object p3, p0, Lcom/join/mgps/dto/ClassifyBean;->game_tag_type:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getGame_tag_type()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ClassifyGameTagBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ClassifyBean;->game_tag_type:Ljava/util/List;

    return-object v0
.end method

.method public getGame_type()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ClassifyGameTypeBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ClassifyBean;->game_type:Ljava/util/List;

    return-object v0
.end method

.method public getGame_type_recommend()Ljava/util/List;
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
    iget-object v0, p0, Lcom/join/mgps/dto/ClassifyBean;->game_type_recommend:Ljava/util/List;

    return-object v0
.end method

.method public setGame_tag_type(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ClassifyGameTagBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ClassifyBean;->game_tag_type:Ljava/util/List;

    return-void
.end method

.method public setGame_type(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ClassifyGameTypeBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ClassifyBean;->game_type:Ljava/util/List;

    return-void
.end method

.method public setGame_type_recommend(Ljava/util/List;)V
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
    iput-object p1, p0, Lcom/join/mgps/dto/ClassifyBean;->game_type_recommend:Ljava/util/List;

    return-void
.end method
