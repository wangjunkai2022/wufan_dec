.class public Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;
.super Ljava/lang/Object;
.source "AccountRegisterThirdwaiRequestBean.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private account:Ljava/lang/String;

.field private avatar_src:Ljava/lang/String;

.field private code:Ljava/lang/String;

.field private device_id:Ljava/lang/String;

.field private gender:I

.field private mac:Ljava/lang/String;

.field private mobile:Ljava/lang/String;

.field private nickname:Ljava/lang/String;

.field private password:Ljava/lang/String;

.field private share_code:Ljava/lang/String;

.field private sign:Ljava/lang/String;

.field private source:I

.field private type:I

.field private unique_id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;->unique_id:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;->mac:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;->device_id:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;->account:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;->avatar_src:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;->mobile:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;->password:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;->nickname:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;->code:Ljava/lang/String;

    .line 11
    sget-object v0, Lcom/MApplication;->w0:Ljava/lang/String;

    iput-object v0, p0, Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;->share_code:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAccount()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;->account:Ljava/lang/String;

    return-object v0
.end method

.method public getAvatar_src()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;->avatar_src:Ljava/lang/String;

    return-object v0
.end method

.method public getCode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getDevice_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;->device_id:Ljava/lang/String;

    return-object v0
.end method

.method public getGender()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;->gender:I

    return v0
.end method

.method public getMac()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;->mac:Ljava/lang/String;

    return-object v0
.end method

.method public getMobile()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;->mobile:Ljava/lang/String;

    return-object v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;->nickname:Ljava/lang/String;

    return-object v0
.end method

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
    iget-object v1, p0, Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;->unique_id:Ljava/lang/String;

    const-string v2, "unique_id"

    invoke-virtual {v0, v2, v1}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;->type:I

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

    iget-object v3, p0, Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;->sign:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "sign"

    invoke-virtual {v0, v3, v1}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5
    iget-object v1, p0, Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;->mac:Ljava/lang/String;

    const-string v3, "mac"

    invoke-virtual {v0, v3, v1}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 6
    iget-object v1, p0, Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;->device_id:Ljava/lang/String;

    const-string v3, "device_id"

    invoke-virtual {v0, v3, v1}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;->source:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "source"

    invoke-virtual {v0, v3, v1}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;->account:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "account"

    invoke-virtual {v0, v3, v1}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;->gender:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "gender"

    invoke-virtual {v0, v3, v1}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;->avatar_src:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "avatar_src"

    invoke-virtual {v0, v3, v1}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;->mobile:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "mobile"

    invoke-virtual {v0, v3, v1}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;->password:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "password"

    invoke-virtual {v0, v3, v1}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;->nickname:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "nickname"

    invoke-virtual {v0, v3, v1}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;->code:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "code"

    invoke-virtual {v0, v3, v1}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/MApplication;->w0:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "share_code"

    invoke-virtual {v0, v2, v1}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getShare_code()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;->share_code:Ljava/lang/String;

    return-object v0
.end method

.method public getSign()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;->sign:Ljava/lang/String;

    return-object v0
.end method

.method public getSource()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;->source:I

    return v0
.end method

.method public getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;->type:I

    return v0
.end method

.method public getUnique_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;->unique_id:Ljava/lang/String;

    return-object v0
.end method

.method public setAccount(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;->account:Ljava/lang/String;

    return-void
.end method

.method public setAvatar_src(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;->avatar_src:Ljava/lang/String;

    return-void
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;->code:Ljava/lang/String;

    return-void
.end method

.method public setDevice_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;->device_id:Ljava/lang/String;

    return-void
.end method

.method public setGender(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;->gender:I

    return-void
.end method

.method public setMac(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;->mac:Ljava/lang/String;

    return-void
.end method

.method public setMobile(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;->mobile:Ljava/lang/String;

    return-void
.end method

.method public setNickname(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;->nickname:Ljava/lang/String;

    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;->password:Ljava/lang/String;

    return-void
.end method

.method public setShare_code(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;->share_code:Ljava/lang/String;

    return-void
.end method

.method public setSign(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;->sign:Ljava/lang/String;

    return-void
.end method

.method public setSource(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;->source:I

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;->type:I

    return-void
.end method

.method public setUnique_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;->unique_id:Ljava/lang/String;

    return-void
.end method
