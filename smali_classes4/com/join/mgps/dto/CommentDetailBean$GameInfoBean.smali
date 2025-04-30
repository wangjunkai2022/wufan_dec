.class public Lcom/join/mgps/dto/CommentDetailBean$GameInfoBean;
.super Ljava/lang/Object;
.source "CommentDetailBean.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dto/CommentDetailBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GameInfoBean"
.end annotation


# instance fields
.field private game_ico:Ljava/lang/String;

.field private game_id:Ljava/lang/String;

.field private game_info_tpl_type:I

.field private game_name:Ljava/lang/String;

.field private sp_tpl_two_position:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGame_ico()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommentDetailBean$GameInfoBean;->game_ico:Ljava/lang/String;

    return-object v0
.end method

.method public getGame_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommentDetailBean$GameInfoBean;->game_id:Ljava/lang/String;

    return-object v0
.end method

.method public getGame_info_tpl_type()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CommentDetailBean$GameInfoBean;->game_info_tpl_type:I

    return v0
.end method

.method public getGame_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommentDetailBean$GameInfoBean;->game_name:Ljava/lang/String;

    return-object v0
.end method

.method public getSp_tpl_two_position()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CommentDetailBean$GameInfoBean;->sp_tpl_two_position:I

    return v0
.end method

.method public setGame_ico(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CommentDetailBean$GameInfoBean;->game_ico:Ljava/lang/String;

    return-void
.end method

.method public setGame_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CommentDetailBean$GameInfoBean;->game_id:Ljava/lang/String;

    return-void
.end method

.method public setGame_info_tpl_type(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/CommentDetailBean$GameInfoBean;->game_info_tpl_type:I

    return-void
.end method

.method public setGame_name(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CommentDetailBean$GameInfoBean;->game_name:Ljava/lang/String;

    return-void
.end method

.method public setSp_tpl_two_position(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/CommentDetailBean$GameInfoBean;->sp_tpl_two_position:I

    return-void
.end method
