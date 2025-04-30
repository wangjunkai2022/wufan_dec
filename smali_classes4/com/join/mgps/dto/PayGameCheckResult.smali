.class public Lcom/join/mgps/dto/PayGameCheckResult;
.super Ljava/lang/Object;
.source "PayGameCheckResult.java"


# instance fields
.field private appGameId:Ljava/lang/String;

.field private expireTime:J

.field private state:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppGameId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PayGameCheckResult;->appGameId:Ljava/lang/String;

    return-object v0
.end method

.method public getExpireTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/PayGameCheckResult;->expireTime:J

    return-wide v0
.end method

.method public isState()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/PayGameCheckResult;->state:Z

    return v0
.end method

.method public setAppGameId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PayGameCheckResult;->appGameId:Ljava/lang/String;

    return-void
.end method

.method public setExpireTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/PayGameCheckResult;->expireTime:J

    return-void
.end method

.method public setState(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/PayGameCheckResult;->state:Z

    return-void
.end method
