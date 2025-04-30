.class public Lcom/join/mgps/dto/ListUserCustomGameTagBean;
.super Ljava/lang/Object;
.source "ListUserCustomGameTagBean.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private gameTags:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/join/mgps/dto/GameTagsBean;",
            ">;"
        }
    .end annotation
.end field

.field private personalTags:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/join/mgps/dto/GameTagsBean;",
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
.method public getGameTags()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/join/mgps/dto/GameTagsBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ListUserCustomGameTagBean;->gameTags:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPersonalTags()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/join/mgps/dto/GameTagsBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ListUserCustomGameTagBean;->personalTags:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setGameTags(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/join/mgps/dto/GameTagsBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ListUserCustomGameTagBean;->gameTags:Ljava/util/ArrayList;

    return-void
.end method

.method public setPersonalTags(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/join/mgps/dto/GameTagsBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ListUserCustomGameTagBean;->personalTags:Ljava/util/ArrayList;

    return-void
.end method
