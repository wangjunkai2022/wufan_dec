.class public Lcom/join/mgps/dto/SharePostRequest;
.super Ljava/lang/Object;
.source "SharePostRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private res_id:Ljava/lang/String;

.field private res_type:I

.field private share_channel:Ljava/lang/String;

.field private share_url:Ljava/lang/String;

.field private status:I

.field private uid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getParams()Lorg/springframework/util/LinkedMultiValueMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/springframework/util/LinkedMultiValueMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/springframework/util/LinkedMultiValueMap;

    invoke-direct {v0}, Lorg/springframework/util/LinkedMultiValueMap;-><init>()V

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/join/mgps/dto/SharePostRequest;->uid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "uid"

    invoke-virtual {v0, v3, v1}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/join/mgps/dto/SharePostRequest;->res_type:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "res_type"

    invoke-virtual {v0, v3, v1}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/join/mgps/dto/SharePostRequest;->res_id:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "res_id"

    invoke-virtual {v0, v3, v1}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/join/mgps/dto/SharePostRequest;->status:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "status"

    invoke-virtual {v0, v2, v1}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 6
    iget-object v1, p0, Lcom/join/mgps/dto/SharePostRequest;->share_url:Ljava/lang/String;

    const-string v2, "share_url"

    invoke-virtual {v0, v2, v1}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 7
    iget-object v1, p0, Lcom/join/mgps/dto/SharePostRequest;->share_channel:Ljava/lang/String;

    const-string v2, "share_channel"

    invoke-virtual {v0, v2, v1}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getRes_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SharePostRequest;->res_id:Ljava/lang/String;

    return-object v0
.end method

.method public getRes_type()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/SharePostRequest;->res_type:I

    return v0
.end method

.method public getShare_channel()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SharePostRequest;->share_channel:Ljava/lang/String;

    return-object v0
.end method

.method public getShare_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SharePostRequest;->share_url:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/SharePostRequest;->status:I

    return v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SharePostRequest;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public setRes_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SharePostRequest;->res_id:Ljava/lang/String;

    return-void
.end method

.method public setRes_type(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/SharePostRequest;->res_type:I

    return-void
.end method

.method public setShare_channel(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SharePostRequest;->share_channel:Ljava/lang/String;

    return-void
.end method

.method public setShare_url(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SharePostRequest;->share_url:Ljava/lang/String;

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/SharePostRequest;->status:I

    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SharePostRequest;->uid:Ljava/lang/String;

    return-void
.end method
