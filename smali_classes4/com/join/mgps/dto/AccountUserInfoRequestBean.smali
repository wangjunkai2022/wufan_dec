.class public Lcom/join/mgps/dto/AccountUserInfoRequestBean;
.super Ljava/lang/Object;
.source "AccountUserInfoRequestBean.java"


# instance fields
.field private device_id:Ljava/lang/String;

.field private sign:Ljava/lang/String;

.field private token:Ljava/lang/String;

.field private uid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDevice_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AccountUserInfoRequestBean;->device_id:Ljava/lang/String;

    return-object v0
.end method

.method public getParams()Lorg/springframework/util/LinkedMultiValueMap;
    .locals 3
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
    iget-object v1, p0, Lcom/join/mgps/dto/AccountUserInfoRequestBean;->uid:Ljava/lang/String;

    const-string v2, "uid"

    invoke-virtual {v0, v2, v1}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3
    iget-object v1, p0, Lcom/join/mgps/dto/AccountUserInfoRequestBean;->token:Ljava/lang/String;

    const-string v2, "token"

    invoke-virtual {v0, v2, v1}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4
    iget-object v1, p0, Lcom/join/mgps/dto/AccountUserInfoRequestBean;->device_id:Ljava/lang/String;

    const-string v2, "device_id"

    invoke-virtual {v0, v2, v1}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5
    iget-object v1, p0, Lcom/join/mgps/dto/AccountUserInfoRequestBean;->sign:Ljava/lang/String;

    const-string v2, "sign"

    invoke-virtual {v0, v2, v1}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getSign()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AccountUserInfoRequestBean;->sign:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AccountUserInfoRequestBean;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AccountUserInfoRequestBean;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public setDevice_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AccountUserInfoRequestBean;->device_id:Ljava/lang/String;

    return-void
.end method

.method public setSign(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AccountUserInfoRequestBean;->sign:Ljava/lang/String;

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AccountUserInfoRequestBean;->token:Ljava/lang/String;

    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AccountUserInfoRequestBean;->uid:Ljava/lang/String;

    return-void
.end method
