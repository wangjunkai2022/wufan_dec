.class public Lcom/join/kotlin/ui/userrecom/UserRecomRequestArgs;
.super Ljava/lang/Object;
.source "UserRecomRequestArgs.java"


# instance fields
.field downloadedGameIdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field duration:J

.field uid:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDownloadedGameIdList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/userrecom/UserRecomRequestArgs;->downloadedGameIdList:Ljava/util/List;

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/kotlin/ui/userrecom/UserRecomRequestArgs;->duration:J

    return-wide v0
.end method

.method public getUid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/kotlin/ui/userrecom/UserRecomRequestArgs;->uid:I

    return v0
.end method

.method public setDownloadedGameIdList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/userrecom/UserRecomRequestArgs;->downloadedGameIdList:Ljava/util/List;

    return-void
.end method

.method public setDuration(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/kotlin/ui/userrecom/UserRecomRequestArgs;->duration:J

    return-void
.end method

.method public setUid(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/kotlin/ui/userrecom/UserRecomRequestArgs;->uid:I

    return-void
.end method
