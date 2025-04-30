.class public Lcom/join/mgps/dto/CommentDetailBean;
.super Ljava/lang/Object;
.source "CommentDetailBean.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;,
        Lcom/join/mgps/dto/CommentDetailBean$GameInfoBean;
    }
.end annotation


# instance fields
.field private game_info:Lcom/join/mgps/dto/CommentDetailBean$GameInfoBean;

.field private main_comment:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;",
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
.method public getGame_info()Lcom/join/mgps/dto/CommentDetailBean$GameInfoBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommentDetailBean;->game_info:Lcom/join/mgps/dto/CommentDetailBean$GameInfoBean;

    return-object v0
.end method

.method public getMain_comment()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommentDetailBean;->main_comment:Ljava/util/List;

    return-object v0
.end method

.method public setGame_info(Lcom/join/mgps/dto/CommentDetailBean$GameInfoBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CommentDetailBean;->game_info:Lcom/join/mgps/dto/CommentDetailBean$GameInfoBean;

    return-void
.end method

.method public setMain_comment(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CommentDetailBean;->main_comment:Ljava/util/List;

    return-void
.end method
