.class public Lcom/join/mgps/dto/CommentItemMessageBean;
.super Ljava/lang/Object;
.source "CommentItemMessageBean.java"


# instance fields
.field private comment_id:Ljava/lang/String;

.field private content:Ljava/lang/String;

.field private score:Ljava/lang/String;

.field private times:Ljava/lang/String;

.field private user_name:Ljava/lang/String;

.field private ver:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/join/mgps/dto/CommentItemMessageBean;->comment_id:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/join/mgps/dto/CommentItemMessageBean;->content:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/join/mgps/dto/CommentItemMessageBean;->score:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/join/mgps/dto/CommentItemMessageBean;->ver:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Lcom/join/mgps/dto/CommentItemMessageBean;->user_name:Ljava/lang/String;

    .line 7
    iput-object p6, p0, Lcom/join/mgps/dto/CommentItemMessageBean;->times:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getComment_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommentItemMessageBean;->comment_id:Ljava/lang/String;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommentItemMessageBean;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getScore()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommentItemMessageBean;->score:Ljava/lang/String;

    return-object v0
.end method

.method public getTimes()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommentItemMessageBean;->times:Ljava/lang/String;

    return-object v0
.end method

.method public getUser_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommentItemMessageBean;->user_name:Ljava/lang/String;

    return-object v0
.end method

.method public getVer()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommentItemMessageBean;->ver:Ljava/lang/String;

    return-object v0
.end method

.method public setComment_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CommentItemMessageBean;->comment_id:Ljava/lang/String;

    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CommentItemMessageBean;->content:Ljava/lang/String;

    return-void
.end method

.method public setScore(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CommentItemMessageBean;->score:Ljava/lang/String;

    return-void
.end method

.method public setTimes(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CommentItemMessageBean;->times:Ljava/lang/String;

    return-void
.end method

.method public setUser_name(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CommentItemMessageBean;->user_name:Ljava/lang/String;

    return-void
.end method

.method public setVer(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CommentItemMessageBean;->ver:Ljava/lang/String;

    return-void
.end method
