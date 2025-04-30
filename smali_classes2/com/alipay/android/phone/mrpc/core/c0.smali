.class public final Lcom/alipay/android/phone/mrpc/core/c0;
.super Lcom/alipay/android/phone/mrpc/core/d;


# instance fields
.field c:Ljava/lang/String;

.field d:[B

.field e:Ljava/lang/String;

.field f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/apache/http/Header;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field h:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/d;-><init>()V

    iput-object p1, p0, Lcom/alipay/android/phone/mrpc/core/c0;->c:Ljava/lang/String;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/alipay/android/phone/mrpc/core/c0;->f:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/alipay/android/phone/mrpc/core/c0;->g:Ljava/util/Map;

    const-string p1, "application/x-www-form-urlencoded"

    iput-object p1, p0, Lcom/alipay/android/phone/mrpc/core/c0;->e:Ljava/lang/String;

    return-void
.end method

.method private g(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/android/phone/mrpc/core/c0;->h:Z

    return-void
.end method

.method private h([B)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/mrpc/core/c0;->d:[B

    return-void
.end method

.method private i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/c0;->c:Ljava/lang/String;

    return-object v0
.end method

.method private j(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/mrpc/core/c0;->e:Ljava/lang/String;

    return-void
.end method

.method private k()[B
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/c0;->d:[B

    return-object v0
.end method

.method private l()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/c0;->e:Ljava/lang/String;

    return-object v0
.end method

.method private m()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/apache/http/Header;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/c0;->f:Ljava/util/ArrayList;

    return-object v0
.end method

.method private n()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/android/phone/mrpc/core/c0;->h:Z

    return v0
.end method


# virtual methods
.method public final d(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/c0;->g:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/c0;->g:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/mrpc/core/c0;->g:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/c0;->g:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    const-class v2, Lcom/alipay/android/phone/mrpc/core/c0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    check-cast p1, Lcom/alipay/android/phone/mrpc/core/c0;

    iget-object v2, p0, Lcom/alipay/android/phone/mrpc/core/c0;->d:[B

    if-nez v2, :cond_3

    iget-object v2, p1, Lcom/alipay/android/phone/mrpc/core/c0;->d:[B

    if-eqz v2, :cond_4

    return v1

    :cond_3
    iget-object v3, p1, Lcom/alipay/android/phone/mrpc/core/c0;->d:[B

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lcom/alipay/android/phone/mrpc/core/c0;->c:Ljava/lang/String;

    iget-object p1, p1, Lcom/alipay/android/phone/mrpc/core/c0;->c:Ljava/lang/String;

    if-nez v2, :cond_5

    if-eqz p1, :cond_6

    return v1

    :cond_5
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v1

    :cond_6
    return v0
.end method

.method public final f(Lorg/apache/http/Header;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/c0;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/c0;->g:Ljava/util/Map;

    if-eqz v0, :cond_0

    const-string v1, "id"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/c0;->g:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/alipay/android/phone/mrpc/core/c0;->c:Ljava/lang/String;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/alipay/android/phone/mrpc/core/c0;->c:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/alipay/android/phone/mrpc/core/c0;->f:Ljava/util/ArrayList;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "Url : %s,HttpHeader: %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
