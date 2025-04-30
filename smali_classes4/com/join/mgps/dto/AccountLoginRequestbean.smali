.class public Lcom/join/mgps/dto/AccountLoginRequestbean;
.super Ljava/lang/Object;
.source "AccountLoginRequestbean.java"


# instance fields
.field private account:Ljava/lang/String;

.field private device_id:Ljava/lang/String;

.field private password:Ljava/lang/String;

.field private sign:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccount()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AccountLoginRequestbean;->account:Ljava/lang/String;

    return-object v0
.end method

.method public getDevice_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AccountLoginRequestbean;->device_id:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/join/mgps/dto/AccountLoginRequestbean;->account:Ljava/lang/String;

    const-string v2, "account"

    invoke-virtual {v0, v2, v1}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3
    iget-object v1, p0, Lcom/join/mgps/dto/AccountLoginRequestbean;->password:Ljava/lang/String;

    const-string v2, "password"

    invoke-virtual {v0, v2, v1}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4
    iget-object v1, p0, Lcom/join/mgps/dto/AccountLoginRequestbean;->device_id:Ljava/lang/String;

    const-string v2, "device_id"

    invoke-virtual {v0, v2, v1}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5
    iget-object v1, p0, Lcom/join/mgps/dto/AccountLoginRequestbean;->sign:Ljava/lang/String;

    const-string v2, "sign"

    invoke-virtual {v0, v2, v1}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AccountLoginRequestbean;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getSign()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AccountLoginRequestbean;->sign:Ljava/lang/String;

    return-object v0
.end method

.method public setAccount(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AccountLoginRequestbean;->account:Ljava/lang/String;

    return-void
.end method

.method public setDevice_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AccountLoginRequestbean;->device_id:Ljava/lang/String;

    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AccountLoginRequestbean;->password:Ljava/lang/String;

    return-void
.end method

.method public setSign(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AccountLoginRequestbean;->sign:Ljava/lang/String;

    return-void
.end method
