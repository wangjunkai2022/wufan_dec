.class public Lcom/join/mgps/dto/GameBbsPostListBean;
.super Ljava/lang/Object;
.source "GameBbsPostListBean.java"


# instance fields
.field private game_bbs_post_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/BbsListBean;",
            ">;"
        }
    .end annotation
.end field

.field private next_page:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGame_bbs_post_list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/BbsListBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameBbsPostListBean;->game_bbs_post_list:Ljava/util/List;

    return-object v0
.end method

.method public getNext_page()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameBbsPostListBean;->next_page:Ljava/lang/Integer;

    return-object v0
.end method

.method public setGame_bbs_post_list(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/BbsListBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameBbsPostListBean;->game_bbs_post_list:Ljava/util/List;

    return-void
.end method

.method public setNext_page(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameBbsPostListBean;->next_page:Ljava/lang/Integer;

    return-void
.end method
