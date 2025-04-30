.class public Lcom/join/mgps/dto/CommentSelfListBean;
.super Ljava/lang/Object;
.source "CommentSelfListBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;
    }
.end annotation


# instance fields
.field private game_info:Lcom/join/mgps/dto/ForumBean$GameInfo;

.field private self_comment:Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGame_info()Lcom/join/mgps/dto/ForumBean$GameInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommentSelfListBean;->game_info:Lcom/join/mgps/dto/ForumBean$GameInfo;

    return-object v0
.end method

.method public getSelf_comment()Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommentSelfListBean;->self_comment:Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;

    return-object v0
.end method

.method public setGame_info(Lcom/join/mgps/dto/ForumBean$GameInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CommentSelfListBean;->game_info:Lcom/join/mgps/dto/ForumBean$GameInfo;

    return-void
.end method

.method public setSelf_comment(Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CommentSelfListBean;->self_comment:Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;

    return-void
.end method
