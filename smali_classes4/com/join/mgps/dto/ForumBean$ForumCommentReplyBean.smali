.class public Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;
.super Ljava/lang/Object;
.source "ForumBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dto/ForumBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForumCommentReplyBean"
.end annotation


# instance fields
.field private add_time:J

.field private jump_info:Lcom/join/mgps/dto/BannerBean;

.field private message:Ljava/lang/String;

.field private nickname:Ljava/lang/String;

.field private officialAccount:Z

.field private rOfficialAccount:Z

.field private rid:I

.field private rnickname:Ljava/lang/String;

.field private rrid:I

.field private ruid:I

.field private uid:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAdd_time()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->add_time:J

    return-wide v0
.end method

.method public getJump_info()Lcom/join/mgps/dto/BannerBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->jump_info:Lcom/join/mgps/dto/BannerBean;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public getRid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->rid:I

    return v0
.end method

.method public getRnickname()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->rnickname:Ljava/lang/String;

    return-object v0
.end method

.method public getRrid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->rrid:I

    return v0
.end method

.method public getRuid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->ruid:I

    return v0
.end method

.method public getUid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->uid:I

    return v0
.end method

.method public isOfficialAccount()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->officialAccount:Z

    return v0
.end method

.method public isrOfficialAccount()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->rOfficialAccount:Z

    return v0
.end method

.method public setAdd_time(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->add_time:J

    return-void
.end method

.method public setJump_info(Lcom/join/mgps/dto/BannerBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->jump_info:Lcom/join/mgps/dto/BannerBean;

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->message:Ljava/lang/String;

    return-void
.end method

.method public setNickname(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->nickname:Ljava/lang/String;

    return-void
.end method

.method public setOfficialAccount(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->officialAccount:Z

    return-void
.end method

.method public setRid(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->rid:I

    return-void
.end method

.method public setRnickname(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->rnickname:Ljava/lang/String;

    return-void
.end method

.method public setRrid(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->rrid:I

    return-void
.end method

.method public setRuid(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->ruid:I

    return-void
.end method

.method public setUid(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->uid:I

    return-void
.end method

.method public setrOfficialAccount(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->rOfficialAccount:Z

    return-void
.end method
