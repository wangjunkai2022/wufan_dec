.class public Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean$ReplySubBean;
.super Ljava/lang/Object;
.source "GameReplyMessageListBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReplySubBean"
.end annotation


# instance fields
.field private reply_text:Ljava/lang/String;

.field private reply_text_id:I

.field private reply_text_uid:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getReply_text()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean$ReplySubBean;->reply_text:Ljava/lang/String;

    return-object v0
.end method

.method public getReply_text_id()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean$ReplySubBean;->reply_text_id:I

    return v0
.end method

.method public getReply_text_uid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean$ReplySubBean;->reply_text_uid:I

    return v0
.end method

.method public setReply_text(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean$ReplySubBean;->reply_text:Ljava/lang/String;

    return-void
.end method

.method public setReply_text_id(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean$ReplySubBean;->reply_text_id:I

    return-void
.end method

.method public setReply_text_uid(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean$ReplySubBean;->reply_text_uid:I

    return-void
.end method
