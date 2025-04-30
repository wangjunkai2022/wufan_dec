.class public Lcom/join/mgps/dto/ArchiveevaluateArgs;
.super Ljava/lang/Object;
.source "ArchiveevaluateArgs.java"


# instance fields
.field commentType:I

.field id:Ljava/lang/String;

.field token:Ljava/lang/String;

.field uid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/join/mgps/dto/ArchiveevaluateArgs;->uid:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/join/mgps/dto/ArchiveevaluateArgs;->token:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/join/mgps/dto/ArchiveevaluateArgs;->id:Ljava/lang/String;

    .line 5
    iput p4, p0, Lcom/join/mgps/dto/ArchiveevaluateArgs;->commentType:I

    return-void
.end method


# virtual methods
.method public getArgs()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/join/mgps/dto/ArchiveevaluateArgs;->uid:Ljava/lang/String;

    const-string v2, "uid"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v1, p0, Lcom/join/mgps/dto/ArchiveevaluateArgs;->token:Ljava/lang/String;

    const-string v2, "token"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v1, p0, Lcom/join/mgps/dto/ArchiveevaluateArgs;->id:Ljava/lang/String;

    const-string v2, "id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/join/mgps/dto/ArchiveevaluateArgs;->commentType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "commentType"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public getCommentType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ArchiveevaluateArgs;->commentType:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ArchiveevaluateArgs;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ArchiveevaluateArgs;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ArchiveevaluateArgs;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public setCommentType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ArchiveevaluateArgs;->commentType:I

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ArchiveevaluateArgs;->id:Ljava/lang/String;

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ArchiveevaluateArgs;->token:Ljava/lang/String;

    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ArchiveevaluateArgs;->uid:Ljava/lang/String;

    return-void
.end method
