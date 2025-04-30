.class public Lcom/join/mgps/dto/IntroductionCommentDetailParamsBean;
.super Ljava/lang/Object;
.source "IntroductionCommentDetailParamsBean.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private comment_id:I

.field private game_id:J

.field private parent_comment_id:I

.field private post_id:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getComment_id()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/IntroductionCommentDetailParamsBean;->comment_id:I

    return v0
.end method

.method public getGame_id()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/IntroductionCommentDetailParamsBean;->game_id:J

    return-wide v0
.end method

.method public getParent_comment_id()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/IntroductionCommentDetailParamsBean;->parent_comment_id:I

    return v0
.end method

.method public getPost_id()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/IntroductionCommentDetailParamsBean;->post_id:I

    return v0
.end method

.method public setComment_id(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/IntroductionCommentDetailParamsBean;->comment_id:I

    return-void
.end method

.method public setGame_id(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/IntroductionCommentDetailParamsBean;->game_id:J

    return-void
.end method

.method public setParent_comment_id(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/IntroductionCommentDetailParamsBean;->parent_comment_id:I

    return-void
.end method

.method public setPost_id(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/join/mgps/dto/IntroductionCommentDetailParamsBean;->post_id:I

    return-void
.end method
