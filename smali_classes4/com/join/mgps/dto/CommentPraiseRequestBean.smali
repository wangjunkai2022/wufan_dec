.class public Lcom/join/mgps/dto/CommentPraiseRequestBean;
.super Lcom/join/mgps/dto/CommentRequest;
.source "CommentPraiseRequestBean.java"


# instance fields
.field private comment_id:Ljava/lang/String;

.field private game_id:Ljava/lang/String;

.field private type:I

.field private user_token:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/dto/CommentRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public getComment_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommentPraiseRequestBean;->comment_id:Ljava/lang/String;

    return-object v0
.end method

.method public getGame_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommentPraiseRequestBean;->game_id:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CommentPraiseRequestBean;->type:I

    return v0
.end method

.method public getUser_token()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommentPraiseRequestBean;->user_token:Ljava/lang/String;

    return-object v0
.end method

.method public setComment_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CommentPraiseRequestBean;->comment_id:Ljava/lang/String;

    return-void
.end method

.method public setGame_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CommentPraiseRequestBean;->game_id:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/CommentPraiseRequestBean;->type:I

    return-void
.end method

.method public setUser_token(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CommentPraiseRequestBean;->user_token:Ljava/lang/String;

    return-void
.end method
