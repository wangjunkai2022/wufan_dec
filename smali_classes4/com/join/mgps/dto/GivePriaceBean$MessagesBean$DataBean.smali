.class public Lcom/join/mgps/dto/GivePriaceBean$MessagesBean$DataBean;
.super Ljava/lang/Object;
.source "GivePriaceBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dto/GivePriaceBean$MessagesBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation


# instance fields
.field comment_score_switch:Ljava/lang/String;

.field comment_switch:Ljava/lang/String;

.field game_id:Ljava/lang/String;

.field private original_text:Ljava/lang/String;

.field private original_text_id:I

.field private original_text_uid:I

.field private praise_text:Ljava/lang/String;

.field private praise_text_id:I

.field private praise_text_uid:I

.field private praise_time:J

.field private praise_title:Ljava/lang/String;

.field private praise_user_ico:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getComment_score_switch()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GivePriaceBean$MessagesBean$DataBean;->comment_score_switch:Ljava/lang/String;

    return-object v0
.end method

.method public getComment_switch()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GivePriaceBean$MessagesBean$DataBean;->comment_switch:Ljava/lang/String;

    return-object v0
.end method

.method public getGame_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GivePriaceBean$MessagesBean$DataBean;->game_id:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginal_text()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GivePriaceBean$MessagesBean$DataBean;->original_text:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginal_text_id()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GivePriaceBean$MessagesBean$DataBean;->original_text_id:I

    return v0
.end method

.method public getOriginal_text_uid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GivePriaceBean$MessagesBean$DataBean;->original_text_uid:I

    return v0
.end method

.method public getPraise_text()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GivePriaceBean$MessagesBean$DataBean;->praise_text:Ljava/lang/String;

    return-object v0
.end method

.method public getPraise_text_id()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GivePriaceBean$MessagesBean$DataBean;->praise_text_id:I

    return v0
.end method

.method public getPraise_text_uid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GivePriaceBean$MessagesBean$DataBean;->praise_text_uid:I

    return v0
.end method

.method public getPraise_time()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/GivePriaceBean$MessagesBean$DataBean;->praise_time:J

    return-wide v0
.end method

.method public getPraise_title()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GivePriaceBean$MessagesBean$DataBean;->praise_title:Ljava/lang/String;

    return-object v0
.end method

.method public getPraise_user_ico()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GivePriaceBean$MessagesBean$DataBean;->praise_user_ico:Ljava/lang/String;

    return-object v0
.end method

.method public setComment_score_switch(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GivePriaceBean$MessagesBean$DataBean;->comment_score_switch:Ljava/lang/String;

    return-void
.end method

.method public setComment_switch(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GivePriaceBean$MessagesBean$DataBean;->comment_switch:Ljava/lang/String;

    return-void
.end method

.method public setGame_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GivePriaceBean$MessagesBean$DataBean;->game_id:Ljava/lang/String;

    return-void
.end method

.method public setOriginal_text(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GivePriaceBean$MessagesBean$DataBean;->original_text:Ljava/lang/String;

    return-void
.end method

.method public setOriginal_text_id(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GivePriaceBean$MessagesBean$DataBean;->original_text_id:I

    return-void
.end method

.method public setOriginal_text_uid(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GivePriaceBean$MessagesBean$DataBean;->original_text_uid:I

    return-void
.end method

.method public setPraise_text(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GivePriaceBean$MessagesBean$DataBean;->praise_text:Ljava/lang/String;

    return-void
.end method

.method public setPraise_text_id(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GivePriaceBean$MessagesBean$DataBean;->praise_text_id:I

    return-void
.end method

.method public setPraise_text_uid(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GivePriaceBean$MessagesBean$DataBean;->praise_text_uid:I

    return-void
.end method

.method public setPraise_time(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/GivePriaceBean$MessagesBean$DataBean;->praise_time:J

    return-void
.end method

.method public setPraise_title(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GivePriaceBean$MessagesBean$DataBean;->praise_title:Ljava/lang/String;

    return-void
.end method

.method public setPraise_user_ico(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GivePriaceBean$MessagesBean$DataBean;->praise_user_ico:Ljava/lang/String;

    return-void
.end method
