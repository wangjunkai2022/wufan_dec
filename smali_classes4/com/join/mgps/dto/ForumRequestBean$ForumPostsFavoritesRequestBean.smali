.class public Lcom/join/mgps/dto/ForumRequestBean$ForumPostsFavoritesRequestBean;
.super Ljava/lang/Object;
.source "ForumRequestBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dto/ForumRequestBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForumPostsFavoritesRequestBean"
.end annotation


# instance fields
.field private app_ver:Ljava/lang/String;

.field private device_id:Ljava/lang/String;

.field private pid:I

.field private resource_id:Ljava/lang/String;

.field private token:Ljava/lang/String;

.field private type:I

.field private uid:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsFavoritesRequestBean;->device_id:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsFavoritesRequestBean;->app_ver:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsFavoritesRequestBean;->resource_id:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;ILjava/lang/String;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 6
    iput-object v0, p0, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsFavoritesRequestBean;->device_id:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsFavoritesRequestBean;->app_ver:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsFavoritesRequestBean;->resource_id:Ljava/lang/String;

    .line 9
    iput p1, p0, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsFavoritesRequestBean;->uid:I

    .line 10
    iput-object p2, p0, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsFavoritesRequestBean;->token:Ljava/lang/String;

    .line 11
    iput p3, p0, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsFavoritesRequestBean;->pid:I

    .line 12
    iput-object p4, p0, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsFavoritesRequestBean;->device_id:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getApp_ver()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsFavoritesRequestBean;->app_ver:Ljava/lang/String;

    return-object v0
.end method

.method public getDevice_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsFavoritesRequestBean;->device_id:Ljava/lang/String;

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
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsFavoritesRequestBean;->uid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "uid"

    invoke-virtual {v0, v3, v1}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3
    iget-object v1, p0, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsFavoritesRequestBean;->token:Ljava/lang/String;

    const-string v3, "token"

    invoke-virtual {v0, v3, v1}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsFavoritesRequestBean;->pid:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "pid"

    invoke-virtual {v0, v3, v1}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5
    iget-object v1, p0, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsFavoritesRequestBean;->device_id:Ljava/lang/String;

    const-string v3, "device_id"

    invoke-virtual {v0, v3, v1}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 6
    iget-object v1, p0, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsFavoritesRequestBean;->app_ver:Ljava/lang/String;

    const-string v3, "app_ver"

    invoke-virtual {v0, v3, v1}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 7
    iget-object v1, p0, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsFavoritesRequestBean;->resource_id:Ljava/lang/String;

    const-string v3, "resource_id"

    invoke-virtual {v0, v3, v1}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsFavoritesRequestBean;->type:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "type"

    invoke-virtual {v0, v2, v1}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getPid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsFavoritesRequestBean;->pid:I

    return v0
.end method

.method public getResource_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsFavoritesRequestBean;->resource_id:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsFavoritesRequestBean;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsFavoritesRequestBean;->type:I

    return v0
.end method

.method public getUid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsFavoritesRequestBean;->uid:I

    return v0
.end method

.method public setApp_ver(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsFavoritesRequestBean;->app_ver:Ljava/lang/String;

    return-void
.end method

.method public setDevice_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsFavoritesRequestBean;->device_id:Ljava/lang/String;

    return-void
.end method

.method public setPid(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsFavoritesRequestBean;->pid:I

    return-void
.end method

.method public setResource_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsFavoritesRequestBean;->resource_id:Ljava/lang/String;

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsFavoritesRequestBean;->token:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsFavoritesRequestBean;->type:I

    return-void
.end method

.method public setUid(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsFavoritesRequestBean;->uid:I

    return-void
.end method
