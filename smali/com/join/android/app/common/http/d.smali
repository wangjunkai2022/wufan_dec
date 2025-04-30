.class public Lcom/join/android/app/common/http/d;
.super Ljava/lang/Object;
.source "OkHttpClientManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/android/app/common/http/d$m;,
        Lcom/join/android/app/common/http/d$l;,
        Lcom/join/android/app/common/http/d$j;,
        Lcom/join/android/app/common/http/d$i;,
        Lcom/join/android/app/common/http/d$q;,
        Lcom/join/android/app/common/http/d$k;,
        Lcom/join/android/app/common/http/d$o;,
        Lcom/join/android/app/common/http/d$n;,
        Lcom/join/android/app/common/http/d$p;
    }
.end annotation


# static fields
.field private static final k:Ljava/lang/String; = "OkHttpClientManager"

.field private static l:Lcom/join/android/app/common/http/d;


# instance fields
.field private a:Lokhttp3/OkHttpClient;

.field private b:Landroid/os/Handler;

.field private c:Lcom/papa/sim/statistic/JsonMapper;

.field private d:Lcom/join/android/app/common/http/d$l;

.field private e:Lcom/join/android/app/common/http/d$j;

.field private f:Lcom/join/android/app/common/http/d$i;

.field private g:Lcom/join/android/app/common/http/d$k;

.field private h:Lcom/join/android/app/common/http/d$q;

.field private i:Lcom/join/android/app/common/http/d$o;

.field private final j:Lcom/join/android/app/common/http/d$p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/join/android/app/common/http/d$p<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/join/android/app/common/http/d$l;

    invoke-direct {v0, p0}, Lcom/join/android/app/common/http/d$l;-><init>(Lcom/join/android/app/common/http/d;)V

    iput-object v0, p0, Lcom/join/android/app/common/http/d;->d:Lcom/join/android/app/common/http/d$l;

    .line 3
    new-instance v0, Lcom/join/android/app/common/http/d$j;

    invoke-direct {v0, p0}, Lcom/join/android/app/common/http/d$j;-><init>(Lcom/join/android/app/common/http/d;)V

    iput-object v0, p0, Lcom/join/android/app/common/http/d;->e:Lcom/join/android/app/common/http/d$j;

    .line 4
    new-instance v0, Lcom/join/android/app/common/http/d$i;

    invoke-direct {v0, p0}, Lcom/join/android/app/common/http/d$i;-><init>(Lcom/join/android/app/common/http/d;)V

    iput-object v0, p0, Lcom/join/android/app/common/http/d;->f:Lcom/join/android/app/common/http/d$i;

    .line 5
    new-instance v0, Lcom/join/android/app/common/http/d$k;

    invoke-direct {v0, p0}, Lcom/join/android/app/common/http/d$k;-><init>(Lcom/join/android/app/common/http/d;)V

    iput-object v0, p0, Lcom/join/android/app/common/http/d;->g:Lcom/join/android/app/common/http/d$k;

    .line 6
    new-instance v0, Lcom/join/android/app/common/http/d$q;

    invoke-direct {v0, p0}, Lcom/join/android/app/common/http/d$q;-><init>(Lcom/join/android/app/common/http/d;)V

    iput-object v0, p0, Lcom/join/android/app/common/http/d;->h:Lcom/join/android/app/common/http/d$q;

    .line 7
    new-instance v0, Lcom/join/android/app/common/http/d$o;

    invoke-direct {v0, p0}, Lcom/join/android/app/common/http/d$o;-><init>(Lcom/join/android/app/common/http/d;)V

    iput-object v0, p0, Lcom/join/android/app/common/http/d;->i:Lcom/join/android/app/common/http/d$o;

    .line 8
    new-instance v0, Lcom/join/android/app/common/http/d$h;

    invoke-direct {v0, p0}, Lcom/join/android/app/common/http/d$h;-><init>(Lcom/join/android/app/common/http/d;)V

    iput-object v0, p0, Lcom/join/android/app/common/http/d;->j:Lcom/join/android/app/common/http/d$p;

    .line 9
    invoke-direct {p0}, Lcom/join/android/app/common/http/d;->L()V

    .line 10
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/join/android/app/common/http/d;->b:Landroid/os/Handler;

    .line 11
    invoke-static {}, Lcom/papa/sim/statistic/JsonMapper;->e()Lcom/papa/sim/statistic/JsonMapper;

    move-result-object v0

    iput-object v0, p0, Lcom/join/android/app/common/http/d;->c:Lcom/papa/sim/statistic/JsonMapper;

    return-void
.end method

.method public static A()Lcom/join/android/app/common/http/d$i;
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/android/app/common/http/d;->G()Lcom/join/android/app/common/http/d;

    move-result-object v0

    invoke-direct {v0}, Lcom/join/android/app/common/http/d;->b()Lcom/join/android/app/common/http/d$i;

    move-result-object v0

    return-object v0
.end method

.method public static B()Lcom/join/android/app/common/http/d$j;
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/android/app/common/http/d;->G()Lcom/join/android/app/common/http/d;

    move-result-object v0

    invoke-direct {v0}, Lcom/join/android/app/common/http/d;->c()Lcom/join/android/app/common/http/d$j;

    move-result-object v0

    return-object v0
.end method

.method private C(Ljava/lang/reflect/Type;)[Ljava/lang/Class;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    .line 1
    :try_start_0
    instance-of v1, p1, Ljava/lang/reflect/ParameterizedType;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    const-string v3, ""

    const-string v4, "interface "

    const-string v5, "class "

    if-eqz v1, :cond_2

    .line 2
    :try_start_1
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    .line 3
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    aget-object v1, v1, v2

    .line 4
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 6
    invoke-virtual {p1, v5, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 8
    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 9
    :cond_1
    :goto_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    aput-object p1, v0, v2

    .line 10
    invoke-direct {p0, v1}, Lcom/join/android/app/common/http/d;->C(Ljava/lang/reflect/Type;)[Ljava/lang/Class;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/join/android/app/common/http/d;->v([Ljava/lang/Class;[Ljava/lang/Class;)[Ljava/lang/Class;

    move-result-object p1

    move-object v0, p1

    goto :goto_2

    .line 11
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 12
    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 13
    invoke-virtual {p1, v5, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 14
    :cond_3
    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 15
    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 16
    :cond_4
    :goto_1
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    aput-object p1, v0, v2
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 17
    invoke-virtual {p1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    :goto_2
    return-object v0
.end method

.method private D(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "/"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public static F()Lcom/join/android/app/common/http/d$l;
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/android/app/common/http/d;->G()Lcom/join/android/app/common/http/d;

    move-result-object v0

    invoke-direct {v0}, Lcom/join/android/app/common/http/d;->d()Lcom/join/android/app/common/http/d$l;

    move-result-object v0

    return-object v0
.end method

.method public static G()Lcom/join/android/app/common/http/d;
    .locals 2

    .line 1
    sget-object v0, Lcom/join/android/app/common/http/d;->l:Lcom/join/android/app/common/http/d;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/join/android/app/common/http/d;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/join/android/app/common/http/d;->l:Lcom/join/android/app/common/http/d;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/join/android/app/common/http/d;

    invoke-direct {v1}, Lcom/join/android/app/common/http/d;-><init>()V

    sput-object v1, Lcom/join/android/app/common/http/d;->l:Lcom/join/android/app/common/http/d;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/join/android/app/common/http/d;->l:Lcom/join/android/app/common/http/d;

    return-object v0
.end method

.method public static I()Lcom/join/android/app/common/http/d$q;
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/android/app/common/http/d;->G()Lcom/join/android/app/common/http/d;

    move-result-object v0

    invoke-direct {v0}, Lcom/join/android/app/common/http/d;->e()Lcom/join/android/app/common/http/d$q;

    move-result-object v0

    return-object v0
.end method

.method private J(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Ljava/net/URLConnection;->getFileNameMap()Ljava/net/FileNameMap;

    move-result-object v0

    .line 2
    invoke-interface {v0, p1}, Ljava/net/FileNameMap;->getContentTypeFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "application/octet-stream"

    :cond_0
    return-object p1
.end method

.method private K()V
    .locals 0

    return-void
.end method

.method private L()V
    .locals 2

    .line 1
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 2
    invoke-direct {p0, v0}, Lcom/join/android/app/common/http/d;->V(Lokhttp3/OkHttpClient$Builder;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/join/android/app/common/http/d$a;

    invoke-direct {v1, p0}, Lcom/join/android/app/common/http/d$a;-><init>(Lcom/join/android/app/common/http/d;)V

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lokhttp3/OkHttpClient$Builder;

    .line 4
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/join/android/app/common/http/d;->a:Lokhttp3/OkHttpClient;

    return-void
.end method

.method private M(Ljava/util/Map;)[Lcom/join/android/app/common/http/d$n;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[",
            "Lcom/join/android/app/common/http/d$n;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    new-array p1, v0, [Lcom/join/android/app/common/http/d$n;

    return-object p1

    .line 1
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    .line 2
    new-array v1, v1, [Lcom/join/android/app/common/http/d$n;

    .line 3
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    .line 4
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    add-int/lit8 v3, v0, 0x1

    .line 5
    new-instance v4, Lcom/join/android/app/common/http/d$n;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v4, v5, v2}, Lcom/join/android/app/common/http/d$n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v1, v0

    move v0, v3

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static N(Ljava/lang/String;Ljava/lang/String;Lcom/join/android/app/common/http/d$p;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/join/android/app/common/http/d;->G()Lcom/join/android/app/common/http/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/android/app/common/http/d;->H()Lcom/join/android/app/common/http/d$o;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, p2, v1}, Lcom/join/android/app/common/http/d$o;->o(Ljava/lang/String;Ljava/lang/String;Lcom/join/android/app/common/http/d$p;Ljava/lang/Object;)V

    return-void
.end method

.method public static O(Ljava/lang/String;Ljava/lang/String;Lcom/join/android/app/common/http/d$p;Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/android/app/common/http/d;->G()Lcom/join/android/app/common/http/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/android/app/common/http/d;->H()Lcom/join/android/app/common/http/d$o;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/join/android/app/common/http/d$o;->o(Ljava/lang/String;Ljava/lang/String;Lcom/join/android/app/common/http/d$p;Ljava/lang/Object;)V

    return-void
.end method

.method public static P(Ljava/lang/String;Ljava/util/Map;Lcom/join/android/app/common/http/d$p;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/join/android/app/common/http/d$p;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/android/app/common/http/d;->G()Lcom/join/android/app/common/http/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/android/app/common/http/d;->H()Lcom/join/android/app/common/http/d$o;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, p2, v1}, Lcom/join/android/app/common/http/d$o;->q(Ljava/lang/String;Ljava/util/Map;Lcom/join/android/app/common/http/d$p;Ljava/lang/Object;)V

    return-void
.end method

.method public static Q(Ljava/lang/String;Ljava/util/Map;Lcom/join/android/app/common/http/d$p;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/join/android/app/common/http/d$p;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/android/app/common/http/d;->G()Lcom/join/android/app/common/http/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/android/app/common/http/d;->H()Lcom/join/android/app/common/http/d$o;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/join/android/app/common/http/d$o;->q(Ljava/lang/String;Ljava/util/Map;Lcom/join/android/app/common/http/d$p;Ljava/lang/Object;)V

    return-void
.end method

.method public static R(Ljava/lang/String;[Lcom/join/android/app/common/http/d$n;Lcom/join/android/app/common/http/d$p;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/join/android/app/common/http/d;->G()Lcom/join/android/app/common/http/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/android/app/common/http/d;->H()Lcom/join/android/app/common/http/d$o;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, p2, v1}, Lcom/join/android/app/common/http/d$o;->u(Ljava/lang/String;[Lcom/join/android/app/common/http/d$n;Lcom/join/android/app/common/http/d$p;Ljava/lang/Object;)V

    return-void
.end method

.method public static S(Ljava/lang/String;[Lcom/join/android/app/common/http/d$n;Lcom/join/android/app/common/http/d$p;Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/android/app/common/http/d;->G()Lcom/join/android/app/common/http/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/android/app/common/http/d;->H()Lcom/join/android/app/common/http/d$o;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/join/android/app/common/http/d$o;->u(Ljava/lang/String;[Lcom/join/android/app/common/http/d$n;Lcom/join/android/app/common/http/d$p;Ljava/lang/Object;)V

    return-void
.end method

.method private T(Lokhttp3/Request;Ljava/lang/Exception;Lcom/join/android/app/common/http/d$p;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/http/d;->b:Landroid/os/Handler;

    new-instance v1, Lcom/join/android/app/common/http/d$f;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/join/android/app/common/http/d$f;-><init>(Lcom/join/android/app/common/http/d;Lcom/join/android/app/common/http/d$p;Lokhttp3/Request;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private U(Ljava/lang/Object;Lcom/join/android/app/common/http/d$p;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/http/d;->b:Landroid/os/Handler;

    new-instance v1, Lcom/join/android/app/common/http/d$g;

    invoke-direct {v1, p0, p2, p1}, Lcom/join/android/app/common/http/d$g;-><init>(Lcom/join/android/app/common/http/d;Lcom/join/android/app/common/http/d$p;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private V(Lokhttp3/OkHttpClient$Builder;)Lokhttp3/OkHttpClient$Builder;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/android/app/common/http/d$d;

    invoke-direct {v0, p0}, Lcom/join/android/app/common/http/d$d;-><init>(Lcom/join/android/app/common/http/d;)V

    invoke-virtual {p1, v0}, Lokhttp3/OkHttpClient$Builder;->cookieJar(Lokhttp3/CookieJar;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    return-object p1
.end method

.method public static W()Lokhttp3/OkHttpClient;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/android/app/common/http/d$b;

    invoke-direct {v0}, Lcom/join/android/app/common/http/d$b;-><init>()V

    const-string v1, "SSL"

    .line 2
    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljavax/net/ssl/TrustManager;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 3
    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v2, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 4
    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    .line 5
    new-instance v2, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v2}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 6
    invoke-virtual {v2, v1, v0}, Lokhttp3/OkHttpClient$Builder;->sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    new-instance v1, Lcom/join/android/app/common/http/d$c;

    invoke-direct {v1}, Lcom/join/android/app/common/http/d$c;-><init>()V

    .line 7
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    return-object v0
.end method

.method private X([Lcom/join/android/app/common/http/d$n;)[Lcom/join/android/app/common/http/d$n;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Lcom/join/android/app/common/http/d$n;

    :cond_0
    return-object p1
.end method

.method private a(Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/http/d;->a:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v0

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    invoke-virtual {v0}, Lokhttp3/Dispatcher;->queuedCalls()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lokhttp3/Call;

    .line 4
    invoke-interface {v2}, Lokhttp3/Call;->request()Lokhttp3/Request;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/Request;->tag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5
    invoke-interface {v2}, Lokhttp3/Call;->cancel()V

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v0}, Lokhttp3/Dispatcher;->runningCalls()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lokhttp3/Call;

    .line 7
    invoke-interface {v2}, Lokhttp3/Call;->request()Lokhttp3/Request;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/Request;->tag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 8
    invoke-interface {v2}, Lokhttp3/Call;->cancel()V

    goto :goto_1

    .line 9
    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method private b()Lcom/join/android/app/common/http/d$i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/http/d;->f:Lcom/join/android/app/common/http/d$i;

    return-object v0
.end method

.method private c()Lcom/join/android/app/common/http/d$j;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/http/d;->e:Lcom/join/android/app/common/http/d$j;

    return-object v0
.end method

.method private d()Lcom/join/android/app/common/http/d$l;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/http/d;->d:Lcom/join/android/app/common/http/d$l;

    return-object v0
.end method

.method private e()Lcom/join/android/app/common/http/d$q;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/http/d;->h:Lcom/join/android/app/common/http/d$q;

    return-object v0
.end method

.method static synthetic f(Lcom/join/android/app/common/http/d;Lokhttp3/Request;Ljava/lang/Exception;Lcom/join/android/app/common/http/d$p;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/join/android/app/common/http/d;->T(Lokhttp3/Request;Ljava/lang/Exception;Lcom/join/android/app/common/http/d$p;)V

    return-void
.end method

.method static synthetic g(Lcom/join/android/app/common/http/d;Ljava/lang/Object;Lcom/join/android/app/common/http/d$p;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/android/app/common/http/d;->U(Ljava/lang/Object;Lcom/join/android/app/common/http/d$p;)V

    return-void
.end method

.method static synthetic h(Lcom/join/android/app/common/http/d;)Lcom/join/android/app/common/http/d$k;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/android/app/common/http/d;->g:Lcom/join/android/app/common/http/d$k;

    return-object p0
.end method

.method static synthetic i(Lcom/join/android/app/common/http/d;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/android/app/common/http/d;->b:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic j(Lcom/join/android/app/common/http/d;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/android/app/common/http/d;->D(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic k(Lcom/join/android/app/common/http/d;Ljava/lang/reflect/Type;)[Ljava/lang/Class;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/android/app/common/http/d;->C(Ljava/lang/reflect/Type;)[Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method static synthetic l(Lcom/join/android/app/common/http/d;)Lcom/papa/sim/statistic/JsonMapper;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/android/app/common/http/d;->c:Lcom/papa/sim/statistic/JsonMapper;

    return-object p0
.end method

.method static synthetic m(Lcom/join/android/app/common/http/d;Ljava/lang/String;[Lcom/join/android/app/common/http/d$n;Ljava/lang/Object;)Lokhttp3/Request;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/join/android/app/common/http/d;->s(Ljava/lang/String;[Lcom/join/android/app/common/http/d$n;Ljava/lang/Object;)Lokhttp3/Request;

    move-result-object p0

    return-object p0
.end method

.method static synthetic n(Lcom/join/android/app/common/http/d;)Lokhttp3/OkHttpClient;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/android/app/common/http/d;->a:Lokhttp3/OkHttpClient;

    return-object p0
.end method

.method static synthetic o(Lcom/join/android/app/common/http/d;Ljava/util/Map;)[Lcom/join/android/app/common/http/d$n;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/android/app/common/http/d;->M(Ljava/util/Map;)[Lcom/join/android/app/common/http/d$n;

    move-result-object p0

    return-object p0
.end method

.method static synthetic p(Lcom/join/android/app/common/http/d;Lcom/join/android/app/common/http/d$p;Lokhttp3/Request;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/android/app/common/http/d;->w(Lcom/join/android/app/common/http/d$p;Lokhttp3/Request;)V

    return-void
.end method

.method static synthetic q(Lcom/join/android/app/common/http/d;[Lcom/join/android/app/common/http/d$n;)[Lcom/join/android/app/common/http/d$n;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/android/app/common/http/d;->X([Lcom/join/android/app/common/http/d$n;)[Lcom/join/android/app/common/http/d$n;

    move-result-object p0

    return-object p0
.end method

.method static synthetic r(Lcom/join/android/app/common/http/d;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/android/app/common/http/d;->J(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private s(Ljava/lang/String;[Lcom/join/android/app/common/http/d$n;Ljava/lang/Object;)Lokhttp3/Request;
    .locals 5

    const/4 v0, 0x0

    if-nez p2, :cond_0

    new-array p2, v0, [Lcom/join/android/app/common/http/d$n;

    .line 1
    :cond_0
    new-instance v1, Lokhttp3/FormBody$Builder;

    invoke-direct {v1}, Lokhttp3/FormBody$Builder;-><init>()V

    .line 2
    array-length v2, p2

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, p2, v0

    .line 3
    :try_start_0
    iget-object v4, v3, Lcom/join/android/app/common/http/d$n;->a:Ljava/lang/String;

    iget-object v3, v3, Lcom/join/android/app/common/http/d$n;->b:Ljava/lang/String;

    invoke-virtual {v1, v4, v3}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 4
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {v1}, Lokhttp3/FormBody$Builder;->build()Lokhttp3/FormBody;

    move-result-object p2

    .line 6
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    .line 7
    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 8
    invoke-virtual {p1, p2}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    if-eqz p3, :cond_2

    .line 9
    invoke-virtual {v0, p3}, Lokhttp3/Request$Builder;->tag(Ljava/lang/Object;)Lokhttp3/Request$Builder;

    .line 10
    :cond_2
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    return-object p1
.end method

.method public static t(Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/android/app/common/http/d;->G()Lcom/join/android/app/common/http/d;

    move-result-object v0

    invoke-direct {v0, p0}, Lcom/join/android/app/common/http/d;->a(Ljava/lang/Object;)V

    return-void
.end method

.method private v([Ljava/lang/Class;[Ljava/lang/Class;)[Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Class<",
            "*>;)[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    array-length v0, p1

    array-length v1, p2

    add-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/Class;

    .line 2
    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3
    array-length p1, p1

    array-length v1, p2

    invoke-static {p2, v2, v0, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method private w(Lcom/join/android/app/common/http/d$p;Lokhttp3/Request;)V
    .locals 1

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/join/android/app/common/http/d;->j:Lcom/join/android/app/common/http/d$p;

    .line 2
    :cond_0
    invoke-virtual {p1, p2}, Lcom/join/android/app/common/http/d$p;->c(Lokhttp3/Request;)V

    .line 3
    iget-object v0, p0, Lcom/join/android/app/common/http/d;->a:Lokhttp3/OkHttpClient;

    invoke-virtual {v0, p2}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p2

    new-instance v0, Lcom/join/android/app/common/http/d$e;

    invoke-direct {v0, p0, p1}, Lcom/join/android/app/common/http/d$e;-><init>(Lcom/join/android/app/common/http/d;Lcom/join/android/app/common/http/d$p;)V

    invoke-interface {p2, v0}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    return-void
.end method

.method public static x(Ljava/lang/String;Lcom/join/android/app/common/http/d$p;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/join/android/app/common/http/d;->G()Lcom/join/android/app/common/http/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/android/app/common/http/d;->E()Lcom/join/android/app/common/http/d$k;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Lcom/join/android/app/common/http/d$k;->h(Ljava/lang/String;Lcom/join/android/app/common/http/d$p;Ljava/lang/Object;)V

    return-void
.end method

.method public static y(Ljava/lang/String;Lcom/join/android/app/common/http/d$p;Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/android/app/common/http/d;->G()Lcom/join/android/app/common/http/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/android/app/common/http/d;->E()Lcom/join/android/app/common/http/d$k;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/join/android/app/common/http/d$k;->h(Ljava/lang/String;Lcom/join/android/app/common/http/d$p;Ljava/lang/Object;)V

    return-void
.end method

.method public static z()Lokhttp3/OkHttpClient;
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/android/app/common/http/d;->G()Lcom/join/android/app/common/http/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/android/app/common/http/d;->u()Lokhttp3/OkHttpClient;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public E()Lcom/join/android/app/common/http/d$k;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/http/d;->g:Lcom/join/android/app/common/http/d$k;

    return-object v0
.end method

.method public H()Lcom/join/android/app/common/http/d$o;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/http/d;->i:Lcom/join/android/app/common/http/d$o;

    return-object v0
.end method

.method public u()Lokhttp3/OkHttpClient;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/http/d;->a:Lokhttp3/OkHttpClient;

    return-object v0
.end method
