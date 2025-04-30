.class public Lcom/join/mgps/dto/CommentTokenBean;
.super Ljava/lang/Object;
.source "CommentTokenBean.java"


# instance fields
.field private times:J

.field private token:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTimes()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/CommentTokenBean;->times:J

    return-wide v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommentTokenBean;->token:Ljava/lang/String;

    return-object v0
.end method

.method public setTimes(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/CommentTokenBean;->times:J

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CommentTokenBean;->token:Ljava/lang/String;

    return-void
.end method
