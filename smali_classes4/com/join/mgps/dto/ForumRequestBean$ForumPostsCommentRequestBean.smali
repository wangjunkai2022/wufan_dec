.class public Lcom/join/mgps/dto/ForumRequestBean$ForumPostsCommentRequestBean;
.super Ljava/lang/Object;
.source "ForumRequestBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dto/ForumRequestBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForumPostsCommentRequestBean"
.end annotation


# instance fields
.field private device_id:Ljava/lang/String;

.field private img_1:Ljava/lang/String;

.field private img_2:Ljava/lang/String;

.field private img_3:Ljava/lang/String;

.field private img_4:Ljava/lang/String;

.field private img_5:Ljava/lang/String;

.field private img_6:Ljava/lang/String;

.field private img_7:Ljava/lang/String;

.field private img_8:Ljava/lang/String;

.field private img_9:Ljava/lang/String;

.field private message:Ljava/lang/String;

.field private pid:I

.field private token:Ljava/lang/String;

.field private uid:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsCommentRequestBean;->uid:I

    .line 4
    iput-object p2, p0, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsCommentRequestBean;->token:Ljava/lang/String;

    .line 5
    iput p3, p0, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsCommentRequestBean;->pid:I

    .line 6
    iput-object p4, p0, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsCommentRequestBean;->message:Ljava/lang/String;

    .line 7
    iput-object p5, p0, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsCommentRequestBean;->device_id:Ljava/lang/String;

    .line 8
    iput-object p6, p0, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsCommentRequestBean;->img_1:Ljava/lang/String;

    .line 9
    iput-object p7, p0, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsCommentRequestBean;->img_2:Ljava/lang/String;

    .line 10
    iput-object p8, p0, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsCommentRequestBean;->img_3:Ljava/lang/String;

    .line 11
    iput-object p9, p0, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsCommentRequestBean;->img_4:Ljava/lang/String;

    .line 12
    iput-object p10, p0, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsCommentRequestBean;->img_5:Ljava/lang/String;

    .line 13
    iput-object p11, p0, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsCommentRequestBean;->img_6:Ljava/lang/String;

    .line 14
    iput-object p12, p0, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsCommentRequestBean;->img_7:Ljava/lang/String;

    .line 15
    iput-object p13, p0, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsCommentRequestBean;->img_8:Ljava/lang/String;

    .line 16
    iput-object p14, p0, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsCommentRequestBean;->img_9:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDevice_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsCommentRequestBean;->device_id:Ljava/lang/String;

    return-object v0
.end method

.method public getImages()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :cond_0
    :goto_0
    const/16 v2, 0x9

    if-ge v1, v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    .line 2
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "img_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3
    const-class v3, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsCommentRequestBean;

    .line 4
    invoke-virtual {v3, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v3, 0x1

    .line 5
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 6
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 7
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 8
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 9
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return-object v0
.end method

.method public getImg_1()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsCommentRequestBean;->img_1:Ljava/lang/String;

    return-object v0
.end method

.method public getImg_2()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsCommentRequestBean;->img_2:Ljava/lang/String;

    return-object v0
.end method

.method public getImg_3()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsCommentRequestBean;->img_3:Ljava/lang/String;

    return-object v0
.end method

.method public getImg_4()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsCommentRequestBean;->img_4:Ljava/lang/String;

    return-object v0
.end method

.method public getImg_5()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsCommentRequestBean;->img_5:Ljava/lang/String;

    return-object v0
.end method

.method public getImg_6()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsCommentRequestBean;->img_6:Ljava/lang/String;

    return-object v0
.end method

.method public getImg_7()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsCommentRequestBean;->img_7:Ljava/lang/String;

    return-object v0
.end method

.method public getImg_8()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsCommentRequestBean;->img_8:Ljava/lang/String;

    return-object v0
.end method

.method public getImg_9()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsCommentRequestBean;->img_9:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsCommentRequestBean;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getParams1()Lorg/springframework/util/LinkedMultiValueMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/springframework/util/LinkedMultiValueMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/springframework/util/LinkedMultiValueMap;

    invoke-direct {v0}, Lorg/springframework/util/LinkedMultiValueMap;-><init>()V

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsCommentRequestBean;->uid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "uid"

    invoke-virtual {v0, v3, v1}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3
    iget-object v1, p0, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsCommentRequestBean;->token:Ljava/lang/String;

    const-string v3, "token"

    invoke-virtual {v0, v3, v1}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsCommentRequestBean;->pid:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "pid"

    invoke-virtual {v0, v3, v1}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5
    iget-object v1, p0, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsCommentRequestBean;->message:Ljava/lang/String;

    const-string v3, "message"

    invoke-virtual {v0, v3, v1}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 6
    iget-object v1, p0, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsCommentRequestBean;->device_id:Ljava/lang/String;

    const-string v3, "device_id"

    invoke-virtual {v0, v3, v1}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x1

    const/4 v3, 0x1

    :goto_0
    const/16 v4, 0x9

    if-gt v3, v4, :cond_2

    .line 7
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "img_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 8
    const-class v5, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsCommentRequestBean;

    .line 9
    invoke-virtual {v5, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 10
    invoke-virtual {v5, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 11
    invoke-virtual {v5, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 12
    invoke-virtual {v5, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_0
    move-object v5, v2

    .line 13
    :goto_1
    invoke-static {v5}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 14
    new-instance v6, Lorg/springframework/core/io/FileSystemResource;

    invoke-direct {v6, v5}, Lorg/springframework/core/io/FileSystemResource;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4, v6}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 15
    :cond_1
    invoke-virtual {v0, v4, v2}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 16
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    return-object v0
.end method

.method public getPid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsCommentRequestBean;->pid:I

    return v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsCommentRequestBean;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsCommentRequestBean;->uid:I

    return v0
.end method

.method public setDevice_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsCommentRequestBean;->device_id:Ljava/lang/String;

    return-void
.end method

.method public setImages(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :goto_0
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    add-int/lit8 v1, v0, 0x1

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "img_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4
    const-class v3, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsCommentRequestBean;

    .line 5
    invoke-virtual {v3, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v3, 0x1

    .line 6
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 7
    invoke-static {v0}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 8
    invoke-virtual {v2, p0, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    const-string v0, ""

    .line 9
    invoke-virtual {v2, p0, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return-void
.end method

.method public setImg_1(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsCommentRequestBean;->img_1:Ljava/lang/String;

    return-void
.end method

.method public setImg_2(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsCommentRequestBean;->img_2:Ljava/lang/String;

    return-void
.end method

.method public setImg_3(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsCommentRequestBean;->img_3:Ljava/lang/String;

    return-void
.end method

.method public setImg_4(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsCommentRequestBean;->img_4:Ljava/lang/String;

    return-void
.end method

.method public setImg_5(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsCommentRequestBean;->img_5:Ljava/lang/String;

    return-void
.end method

.method public setImg_6(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsCommentRequestBean;->img_6:Ljava/lang/String;

    return-void
.end method

.method public setImg_7(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsCommentRequestBean;->img_7:Ljava/lang/String;

    return-void
.end method

.method public setImg_8(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsCommentRequestBean;->img_8:Ljava/lang/String;

    return-void
.end method

.method public setImg_9(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsCommentRequestBean;->img_9:Ljava/lang/String;

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsCommentRequestBean;->message:Ljava/lang/String;

    return-void
.end method

.method public setPid(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsCommentRequestBean;->pid:I

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsCommentRequestBean;->token:Ljava/lang/String;

    return-void
.end method

.method public setUid(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsCommentRequestBean;->uid:I

    return-void
.end method
