.class public Lcom/join/mgps/dto/AccountBindThirdwaiRequestBean;
.super Ljava/lang/Object;
.source "AccountBindThirdwaiRequestBean.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private sign:Ljava/lang/String;

.field private token:Ljava/lang/String;

.field private type:I

.field private uid:I

.field private unique_id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/join/mgps/dto/AccountBindThirdwaiRequestBean;->unique_id:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/join/mgps/dto/AccountBindThirdwaiRequestBean;->token:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/join/mgps/dto/AccountBindThirdwaiRequestBean;->unique_id:Ljava/lang/String;

    const-string v2, "unique_id"

    invoke-virtual {v0, v2, v1}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/join/mgps/dto/AccountBindThirdwaiRequestBean;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "type"

    invoke-virtual {v0, v3, v1}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/join/mgps/dto/AccountBindThirdwaiRequestBean;->sign:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "sign"

    invoke-virtual {v0, v3, v1}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/join/mgps/dto/AccountBindThirdwaiRequestBean;->uid:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "uid"

    invoke-virtual {v0, v2, v1}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 6
    iget-object v1, p0, Lcom/join/mgps/dto/AccountBindThirdwaiRequestBean;->token:Ljava/lang/String;

    const-string v2, "token"

    invoke-virtual {v0, v2, v1}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getSign()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AccountBindThirdwaiRequestBean;->sign:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AccountBindThirdwaiRequestBean;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/AccountBindThirdwaiRequestBean;->type:I

    return v0
.end method

.method public getUid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/AccountBindThirdwaiRequestBean;->uid:I

    return v0
.end method

.method public getUnique_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AccountBindThirdwaiRequestBean;->unique_id:Ljava/lang/String;

    return-object v0
.end method

.method public setSign(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AccountBindThirdwaiRequestBean;->sign:Ljava/lang/String;

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AccountBindThirdwaiRequestBean;->token:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/AccountBindThirdwaiRequestBean;->type:I

    return-void
.end method

.method public setUid(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/AccountBindThirdwaiRequestBean;->uid:I

    return-void
.end method

.method public setUnique_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AccountBindThirdwaiRequestBean;->unique_id:Ljava/lang/String;

    return-void
.end method
