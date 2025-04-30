.class public Lcom/join/mgps/dto/CommentAllListBean;
.super Ljava/lang/Object;
.source "CommentAllListBean.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/dto/CommentAllListBean$GeneralCommentBean;,
        Lcom/join/mgps/dto/CommentAllListBean$HotCommentBean;,
        Lcom/join/mgps/dto/CommentAllListBean$SelfCommentBean;,
        Lcom/join/mgps/dto/CommentAllListBean$ScoringDetailsBean;
    }
.end annotation


# instance fields
.field private game_comment_count:Ljava/lang/String;

.field private game_score:Lcom/join/mgps/dto/GameScore;

.field private general_comment:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CommentAllListBean$GeneralCommentBean;",
            ">;"
        }
    .end annotation
.end field

.field private hot_comment:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CommentAllListBean$HotCommentBean;",
            ">;"
        }
    .end annotation
.end field

.field private scoring_details:Lcom/join/mgps/dto/CommentAllListBean$ScoringDetailsBean;

.field private self_comment:Lcom/join/mgps/dto/CommentAllListBean$SelfCommentBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGame_comment_count()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommentAllListBean;->game_comment_count:Ljava/lang/String;

    return-object v0
.end method

.method public getGame_score()Lcom/join/mgps/dto/GameScore;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommentAllListBean;->game_score:Lcom/join/mgps/dto/GameScore;

    return-object v0
.end method

.method public getGeneral_comment()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CommentAllListBean$GeneralCommentBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommentAllListBean;->general_comment:Ljava/util/List;

    return-object v0
.end method

.method public getHot_comment()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CommentAllListBean$HotCommentBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommentAllListBean;->hot_comment:Ljava/util/List;

    return-object v0
.end method

.method public getScoring_details()Lcom/join/mgps/dto/CommentAllListBean$ScoringDetailsBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommentAllListBean;->scoring_details:Lcom/join/mgps/dto/CommentAllListBean$ScoringDetailsBean;

    return-object v0
.end method

.method public getSelf_comment()Lcom/join/mgps/dto/CommentAllListBean$SelfCommentBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommentAllListBean;->self_comment:Lcom/join/mgps/dto/CommentAllListBean$SelfCommentBean;

    return-object v0
.end method

.method public setGame_comment_count(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CommentAllListBean;->game_comment_count:Ljava/lang/String;

    return-void
.end method

.method public setGame_score(Lcom/join/mgps/dto/GameScore;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CommentAllListBean;->game_score:Lcom/join/mgps/dto/GameScore;

    return-void
.end method

.method public setGeneral_comment(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CommentAllListBean$GeneralCommentBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CommentAllListBean;->general_comment:Ljava/util/List;

    return-void
.end method

.method public setHot_comment(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CommentAllListBean$HotCommentBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CommentAllListBean;->hot_comment:Ljava/util/List;

    return-void
.end method

.method public setScoring_details(Lcom/join/mgps/dto/CommentAllListBean$ScoringDetailsBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CommentAllListBean;->scoring_details:Lcom/join/mgps/dto/CommentAllListBean$ScoringDetailsBean;

    return-void
.end method

.method public setSelf_comment(Lcom/join/mgps/dto/CommentAllListBean$SelfCommentBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CommentAllListBean;->self_comment:Lcom/join/mgps/dto/CommentAllListBean$SelfCommentBean;

    return-void
.end method
