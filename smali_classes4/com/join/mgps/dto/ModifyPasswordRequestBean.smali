.class public Lcom/join/mgps/dto/ModifyPasswordRequestBean;
.super Ljava/lang/Object;
.source "ModifyPasswordRequestBean.java"


# instance fields
.field private device_id:Ljava/lang/String;

.field private new_passwd:Ljava/lang/String;

.field private old_passwd:Ljava/lang/String;

.field private sign:Ljava/lang/String;

.field private token:Ljava/lang/String;

.field private uid:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/join/mgps/dto/ModifyPasswordRequestBean;->token:Ljava/lang/String;

    .line 4
    iput p2, p0, Lcom/join/mgps/dto/ModifyPasswordRequestBean;->uid:I

    .line 5
    iput-object p3, p0, Lcom/join/mgps/dto/ModifyPasswordRequestBean;->new_passwd:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Lcom/join/mgps/dto/ModifyPasswordRequestBean;->old_passwd:Ljava/lang/String;

    .line 7
    iput-object p5, p0, Lcom/join/mgps/dto/ModifyPasswordRequestBean;->device_id:Ljava/lang/String;

    .line 8
    iput-object p6, p0, Lcom/join/mgps/dto/ModifyPasswordRequestBean;->sign:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDevice_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ModifyPasswordRequestBean;->device_id:Ljava/lang/String;

    return-object v0
.end method

.method public getNew_passwd()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ModifyPasswordRequestBean;->new_passwd:Ljava/lang/String;

    return-object v0
.end method

.method public getOld_passwd()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ModifyPasswordRequestBean;->old_passwd:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/join/mgps/dto/ModifyPasswordRequestBean;->token:Ljava/lang/String;

    const-string v2, "token"

    invoke-virtual {v0, v2, v1}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/join/mgps/dto/ModifyPasswordRequestBean;->uid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "uid"

    invoke-virtual {v0, v2, v1}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4
    iget-object v1, p0, Lcom/join/mgps/dto/ModifyPasswordRequestBean;->new_passwd:Ljava/lang/String;

    const-string v2, "new_passwd"

    invoke-virtual {v0, v2, v1}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5
    iget-object v1, p0, Lcom/join/mgps/dto/ModifyPasswordRequestBean;->old_passwd:Ljava/lang/String;

    const-string v2, "old_passwd"

    invoke-virtual {v0, v2, v1}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 6
    iget-object v1, p0, Lcom/join/mgps/dto/ModifyPasswordRequestBean;->device_id:Ljava/lang/String;

    const-string v2, "device_id"

    invoke-virtual {v0, v2, v1}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 7
    iget-object v1, p0, Lcom/join/mgps/dto/ModifyPasswordRequestBean;->sign:Ljava/lang/String;

    const-string v2, "sign"

    invoke-virtual {v0, v2, v1}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getSign()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ModifyPasswordRequestBean;->sign:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ModifyPasswordRequestBean;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ModifyPasswordRequestBean;->uid:I

    return v0
.end method

.method public setDevice_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ModifyPasswordRequestBean;->device_id:Ljava/lang/String;

    return-void
.end method

.method public setNew_passwd(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ModifyPasswordRequestBean;->new_passwd:Ljava/lang/String;

    return-void
.end method

.method public setOld_passwd(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ModifyPasswordRequestBean;->old_passwd:Ljava/lang/String;

    return-void
.end method

.method public setSign(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ModifyPasswordRequestBean;->sign:Ljava/lang/String;

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ModifyPasswordRequestBean;->token:Ljava/lang/String;

    return-void
.end method

.method public setUid(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ModifyPasswordRequestBean;->uid:I

    return-void
.end method
