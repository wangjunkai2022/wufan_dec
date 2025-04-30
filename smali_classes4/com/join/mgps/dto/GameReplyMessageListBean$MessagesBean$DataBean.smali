.class public Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;
.super Ljava/lang/Object;
.source "GameReplyMessageListBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean$ReplySubBean;
    }
.end annotation


# instance fields
.field private comment_score_switch:I

.field private comment_switch:I

.field private current_reply_text:Ljava/lang/String;

.field private current_reply_text_id:I

.field private current_reply_text_uid:I

.field private current_reply_time:J

.field private current_reply_title:Ljava/lang/String;

.field private current_reply_user_ico:Ljava/lang/String;

.field private game_id:Ljava/lang/String;

.field private original_text:Ljava/lang/String;

.field private original_text_id:I

.field private original_text_uid:I

.field private reply_sub:Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean$ReplySubBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getComment_score_switch()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;->comment_score_switch:I

    return v0
.end method

.method public getComment_switch()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;->comment_switch:I

    return v0
.end method

.method public getCurrent_reply_text()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;->current_reply_text:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrent_reply_text_id()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;->current_reply_text_id:I

    return v0
.end method

.method public getCurrent_reply_text_uid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;->current_reply_text_uid:I

    return v0
.end method

.method public getCurrent_reply_time()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;->current_reply_time:J

    return-wide v0
.end method

.method public getCurrent_reply_title()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;->current_reply_title:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrent_reply_user_ico()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;->current_reply_user_ico:Ljava/lang/String;

    return-object v0
.end method

.method public getGame_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;->game_id:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginal_text()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;->original_text:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginal_text_id()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;->original_text_id:I

    return v0
.end method

.method public getOriginal_text_uid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;->original_text_uid:I

    return v0
.end method

.method public getReply_sub()Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean$ReplySubBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;->reply_sub:Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean$ReplySubBean;

    return-object v0
.end method

.method public setComment_score_switch(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;->comment_score_switch:I

    return-void
.end method

.method public setComment_switch(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;->comment_switch:I

    return-void
.end method

.method public setCurrent_reply_text(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;->current_reply_text:Ljava/lang/String;

    return-void
.end method

.method public setCurrent_reply_text_id(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;->current_reply_text_id:I

    return-void
.end method

.method public setCurrent_reply_text_uid(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;->current_reply_text_uid:I

    return-void
.end method

.method public setCurrent_reply_time(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;->current_reply_time:J

    return-void
.end method

.method public setCurrent_reply_title(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;->current_reply_title:Ljava/lang/String;

    return-void
.end method

.method public setCurrent_reply_user_ico(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;->current_reply_user_ico:Ljava/lang/String;

    return-void
.end method

.method public setGame_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;->game_id:Ljava/lang/String;

    return-void
.end method

.method public setOriginal_text(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;->original_text:Ljava/lang/String;

    return-void
.end method

.method public setOriginal_text_id(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;->original_text_id:I

    return-void
.end method

.method public setOriginal_text_uid(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;->original_text_uid:I

    return-void
.end method

.method public setReply_sub(Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean$ReplySubBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;->reply_sub:Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean$ReplySubBean;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DataBean{game_id=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;->game_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", original_text=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;->original_text:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", original_text_id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;->original_text_id:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", original_text_uid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;->original_text_uid:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", current_reply_text=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;->current_reply_text:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", current_reply_text_id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;->current_reply_text_id:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", current_reply_text_uid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;->current_reply_text_uid:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", reply_sub="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;->reply_sub:Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean$ReplySubBean;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", current_reply_time="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;->current_reply_time:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", current_reply_title=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;->current_reply_title:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", current_reply_user_ico=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;->current_reply_user_ico:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
