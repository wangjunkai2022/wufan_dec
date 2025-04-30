.class public Lcom/papa/sim/statistic/http/b;
.super Ljava/lang/Object;
.source "OkHttpClientManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/papa/sim/statistic/http/b$m;,
        Lcom/papa/sim/statistic/http/b$l;,
        Lcom/papa/sim/statistic/http/b$j;,
        Lcom/papa/sim/statistic/http/b$i;,
        Lcom/papa/sim/statistic/http/b$q;,
        Lcom/papa/sim/statistic/http/b$k;,
        Lcom/papa/sim/statistic/http/b$o;,
        Lcom/papa/sim/statistic/http/b$n;,
        Lcom/papa/sim/statistic/http/b$p;
    }
.end annotation


# static fields
.field private static final r:Ljava/lang/String; = "OkHttpClientManager"

.field private static s:Lcom/papa/sim/statistic/http/b;


# instance fields
.field private a:Lokhttp3/OkHttpClient;

.field private b:Landroid/os/Handler;

.field private c:Lcom/papa/sim/statistic/JsonMapper;

.field private d:Lcom/papa/sim/statistic/http/b$l;

.field private e:Lcom/papa/sim/statistic/http/b$j;

.field private f:Lcom/papa/sim/statistic/http/b$i;

.field private g:Lcom/papa/sim/statistic/http/b$k;

.field private h:Lcom/papa/sim/statistic/http/b$q;

.field private i:Lcom/papa/sim/statistic/http/b$o;

.field j:Ljava/lang/String;

.field k:Ljava/lang/String;

.field l:Ljava/lang/String;

.field m:Ljava/lang/String;

.field n:Ljava/lang/String;

.field o:Ljava/lang/String;

.field p:Ljava/lang/String;

.field private final q:Lcom/papa/sim/statistic/http/b$p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/papa/sim/statistic/http/b$p<",
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
    new-instance v0, Lcom/papa/sim/statistic/http/b$l;

    invoke-direct {v0, p0}, Lcom/papa/sim/statistic/http/b$l;-><init>(Lcom/papa/sim/statistic/http/b;)V

    iput-object v0, p0, Lcom/papa/sim/statistic/http/b;->d:Lcom/papa/sim/statistic/http/b$l;

    .line 3
    new-instance v0, Lcom/papa/sim/statistic/http/b$j;

    invoke-direct {v0, p0}, Lcom/papa/sim/statistic/http/b$j;-><init>(Lcom/papa/sim/statistic/http/b;)V

    iput-object v0, p0, Lcom/papa/sim/statistic/http/b;->e:Lcom/papa/sim/statistic/http/b$j;

    .line 4
    new-instance v0, Lcom/papa/sim/statistic/http/b$i;

    invoke-direct {v0, p0}, Lcom/papa/sim/statistic/http/b$i;-><init>(Lcom/papa/sim/statistic/http/b;)V

    iput-object v0, p0, Lcom/papa/sim/statistic/http/b;->f:Lcom/papa/sim/statistic/http/b$i;

    .line 5
    new-instance v0, Lcom/papa/sim/statistic/http/b$k;

    invoke-direct {v0, p0}, Lcom/papa/sim/statistic/http/b$k;-><init>(Lcom/papa/sim/statistic/http/b;)V

    iput-object v0, p0, Lcom/papa/sim/statistic/http/b;->g:Lcom/papa/sim/statistic/http/b$k;

    .line 6
    new-instance v0, Lcom/papa/sim/statistic/http/b$q;

    invoke-direct {v0, p0}, Lcom/papa/sim/statistic/http/b$q;-><init>(Lcom/papa/sim/statistic/http/b;)V

    iput-object v0, p0, Lcom/papa/sim/statistic/http/b;->h:Lcom/papa/sim/statistic/http/b$q;

    .line 7
    new-instance v0, Lcom/papa/sim/statistic/http/b$o;

    invoke-direct {v0, p0}, Lcom/papa/sim/statistic/http/b$o;-><init>(Lcom/papa/sim/statistic/http/b;)V

    iput-object v0, p0, Lcom/papa/sim/statistic/http/b;->i:Lcom/papa/sim/statistic/http/b$o;

    const-string v0, ""

    .line 8
    iput-object v0, p0, Lcom/papa/sim/statistic/http/b;->j:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/papa/sim/statistic/http/b;->k:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/papa/sim/statistic/http/b;->l:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/papa/sim/statistic/http/b;->m:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Lcom/papa/sim/statistic/http/b;->n:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcom/papa/sim/statistic/http/b;->o:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lcom/papa/sim/statistic/http/b;->p:Ljava/lang/String;

    .line 15
    new-instance v0, Lcom/papa/sim/statistic/http/b$h;

    invoke-direct {v0, p0}, Lcom/papa/sim/statistic/http/b$h;-><init>(Lcom/papa/sim/statistic/http/b;)V

    iput-object v0, p0, Lcom/papa/sim/statistic/http/b;->q:Lcom/papa/sim/statistic/http/b$p;

    .line 16
    invoke-direct {p0}, Lcom/papa/sim/statistic/http/b;->S()V

    .line 17
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/papa/sim/statistic/http/b;->b:Landroid/os/Handler;

    .line 18
    invoke-static {}, Lcom/papa/sim/statistic/JsonMapper;->e()Lcom/papa/sim/statistic/JsonMapper;

    move-result-object v0

    iput-object v0, p0, Lcom/papa/sim/statistic/http/b;->c:Lcom/papa/sim/statistic/JsonMapper;

    return-void
.end method

.method public static A()Lcom/papa/sim/statistic/http/b$i;
    .locals 1

    .line 1
    invoke-static {}, Lcom/papa/sim/statistic/http/b;->G()Lcom/papa/sim/statistic/http/b;

    move-result-object v0

    invoke-direct {v0}, Lcom/papa/sim/statistic/http/b;->b()Lcom/papa/sim/statistic/http/b$i;

    move-result-object v0

    return-object v0
.end method

.method public static B()Lcom/papa/sim/statistic/http/b$j;
    .locals 1

    .line 1
    invoke-static {}, Lcom/papa/sim/statistic/http/b;->G()Lcom/papa/sim/statistic/http/b;

    move-result-object v0

    invoke-direct {v0}, Lcom/papa/sim/statistic/http/b;->c()Lcom/papa/sim/statistic/http/b$j;

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
    invoke-direct {p0, v1}, Lcom/papa/sim/statistic/http/b;->C(Ljava/lang/reflect/Type;)[Ljava/lang/Class;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/papa/sim/statistic/http/b;->v([Ljava/lang/Class;[Ljava/lang/Class;)[Ljava/lang/Class;

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

.method public static F()Lcom/papa/sim/statistic/http/b$l;
    .locals 1

    .line 1
    invoke-static {}, Lcom/papa/sim/statistic/http/b;->G()Lcom/papa/sim/statistic/http/b;

    move-result-object v0

    invoke-direct {v0}, Lcom/papa/sim/statistic/http/b;->d()Lcom/papa/sim/statistic/http/b$l;

    move-result-object v0

    return-object v0
.end method

.method public static G()Lcom/papa/sim/statistic/http/b;
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/http/b;->s:Lcom/papa/sim/statistic/http/b;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/papa/sim/statistic/http/b;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/papa/sim/statistic/http/b;->s:Lcom/papa/sim/statistic/http/b;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/papa/sim/statistic/http/b;

    invoke-direct {v1}, Lcom/papa/sim/statistic/http/b;-><init>()V

    sput-object v1, Lcom/papa/sim/statistic/http/b;->s:Lcom/papa/sim/statistic/http/b;

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
    sget-object v0, Lcom/papa/sim/statistic/http/b;->s:Lcom/papa/sim/statistic/http/b;

    return-object v0
.end method

.method public static I()Lcom/papa/sim/statistic/http/b$q;
    .locals 1

    .line 1
    invoke-static {}, Lcom/papa/sim/statistic/http/b;->G()Lcom/papa/sim/statistic/http/b;

    move-result-object v0

    invoke-direct {v0}, Lcom/papa/sim/statistic/http/b;->e()Lcom/papa/sim/statistic/http/b$q;

    move-result-object v0

    return-object v0
.end method

.method private Q(Ljava/lang/String;)Ljava/lang/String;
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

.method private R()V
    .locals 0

    return-void
.end method

.method private S()V
    .locals 2

    .line 1
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 2
    invoke-direct {p0, v0}, Lcom/papa/sim/statistic/http/b;->c0(Lokhttp3/OkHttpClient$Builder;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcom/join/mgps/Util/a2;->a(Lokhttp3/OkHttpClient$Builder;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 4
    new-instance v1, Lcom/papa/sim/statistic/http/b$a;

    invoke-direct {v1, p0}, Lcom/papa/sim/statistic/http/b$a;-><init>(Lcom/papa/sim/statistic/http/b;)V

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lokhttp3/OkHttpClient$Builder;

    .line 5
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/papa/sim/statistic/http/b;->a:Lokhttp3/OkHttpClient;

    return-void
.end method

.method private T(Ljava/util/Map;)[Lcom/papa/sim/statistic/http/b$n;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[",
            "Lcom/papa/sim/statistic/http/b$n;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    new-array p1, v0, [Lcom/papa/sim/statistic/http/b$n;

    return-object p1

    .line 1
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    .line 2
    new-array v1, v1, [Lcom/papa/sim/statistic/http/b$n;

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
    new-instance v4, Lcom/papa/sim/statistic/http/b$n;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v4, v5, v2}, Lcom/papa/sim/statistic/http/b$n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v1, v0

    move v0, v3

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static U(Ljava/lang/String;Ljava/lang/String;Lcom/papa/sim/statistic/http/b$p;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/papa/sim/statistic/http/b;->G()Lcom/papa/sim/statistic/http/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/papa/sim/statistic/http/b;->H()Lcom/papa/sim/statistic/http/b$o;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, p2, v1}, Lcom/papa/sim/statistic/http/b$o;->o(Ljava/lang/String;Ljava/lang/String;Lcom/papa/sim/statistic/http/b$p;Ljava/lang/Object;)V

    return-void
.end method

.method public static V(Ljava/lang/String;Ljava/lang/String;Lcom/papa/sim/statistic/http/b$p;Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/papa/sim/statistic/http/b;->G()Lcom/papa/sim/statistic/http/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/papa/sim/statistic/http/b;->H()Lcom/papa/sim/statistic/http/b$o;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/papa/sim/statistic/http/b$o;->o(Ljava/lang/String;Ljava/lang/String;Lcom/papa/sim/statistic/http/b$p;Ljava/lang/Object;)V

    return-void
.end method

.method public static W(Ljava/lang/String;Ljava/util/Map;Lcom/papa/sim/statistic/http/b$p;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/papa/sim/statistic/http/b$p;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/papa/sim/statistic/http/b;->G()Lcom/papa/sim/statistic/http/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/papa/sim/statistic/http/b;->H()Lcom/papa/sim/statistic/http/b$o;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, p2, v1}, Lcom/papa/sim/statistic/http/b$o;->q(Ljava/lang/String;Ljava/util/Map;Lcom/papa/sim/statistic/http/b$p;Ljava/lang/Object;)V

    return-void
.end method

.method public static X(Ljava/lang/String;Ljava/util/Map;Lcom/papa/sim/statistic/http/b$p;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/papa/sim/statistic/http/b$p;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/papa/sim/statistic/http/b;->G()Lcom/papa/sim/statistic/http/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/papa/sim/statistic/http/b;->H()Lcom/papa/sim/statistic/http/b$o;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/papa/sim/statistic/http/b$o;->q(Ljava/lang/String;Ljava/util/Map;Lcom/papa/sim/statistic/http/b$p;Ljava/lang/Object;)V

    return-void
.end method

.method public static Y(Ljava/lang/String;[Lcom/papa/sim/statistic/http/b$n;Lcom/papa/sim/statistic/http/b$p;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/papa/sim/statistic/http/b;->G()Lcom/papa/sim/statistic/http/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/papa/sim/statistic/http/b;->H()Lcom/papa/sim/statistic/http/b$o;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, p2, v1}, Lcom/papa/sim/statistic/http/b$o;->u(Ljava/lang/String;[Lcom/papa/sim/statistic/http/b$n;Lcom/papa/sim/statistic/http/b$p;Ljava/lang/Object;)V

    return-void
.end method

.method public static Z(Ljava/lang/String;[Lcom/papa/sim/statistic/http/b$n;Lcom/papa/sim/statistic/http/b$p;Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/papa/sim/statistic/http/b;->G()Lcom/papa/sim/statistic/http/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/papa/sim/statistic/http/b;->H()Lcom/papa/sim/statistic/http/b$o;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/papa/sim/statistic/http/b$o;->u(Ljava/lang/String;[Lcom/papa/sim/statistic/http/b$n;Lcom/papa/sim/statistic/http/b$p;Ljava/lang/Object;)V

    return-void
.end method

.method private a(Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/http/b;->a:Lokhttp3/OkHttpClient;

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

.method private a0(Lokhttp3/Request;Ljava/lang/Exception;Lcom/papa/sim/statistic/http/b$p;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/http/b;->b:Landroid/os/Handler;

    new-instance v1, Lcom/papa/sim/statistic/http/b$f;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/papa/sim/statistic/http/b$f;-><init>(Lcom/papa/sim/statistic/http/b;Lcom/papa/sim/statistic/http/b$p;Lokhttp3/Request;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private b()Lcom/papa/sim/statistic/http/b$i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/http/b;->f:Lcom/papa/sim/statistic/http/b$i;

    return-object v0
.end method

.method private b0(Ljava/lang/Object;Lcom/papa/sim/statistic/http/b$p;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/http/b;->b:Landroid/os/Handler;

    new-instance v1, Lcom/papa/sim/statistic/http/b$g;

    invoke-direct {v1, p0, p2, p1}, Lcom/papa/sim/statistic/http/b$g;-><init>(Lcom/papa/sim/statistic/http/b;Lcom/papa/sim/statistic/http/b$p;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private c()Lcom/papa/sim/statistic/http/b$j;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/http/b;->e:Lcom/papa/sim/statistic/http/b$j;

    return-object v0
.end method

.method private c0(Lokhttp3/OkHttpClient$Builder;)Lokhttp3/OkHttpClient$Builder;
    .locals 1

    .line 1
    new-instance v0, Lcom/papa/sim/statistic/http/b$d;

    invoke-direct {v0, p0}, Lcom/papa/sim/statistic/http/b$d;-><init>(Lcom/papa/sim/statistic/http/b;)V

    invoke-virtual {p1, v0}, Lokhttp3/OkHttpClient$Builder;->cookieJar(Lokhttp3/CookieJar;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    return-object p1
.end method

.method private d()Lcom/papa/sim/statistic/http/b$l;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/http/b;->d:Lcom/papa/sim/statistic/http/b$l;

    return-object v0
.end method

.method private e()Lcom/papa/sim/statistic/http/b$q;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/http/b;->h:Lcom/papa/sim/statistic/http/b$q;

    return-object v0
.end method

.method public static e0()Lokhttp3/OkHttpClient;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/papa/sim/statistic/http/b$b;

    invoke-direct {v0}, Lcom/papa/sim/statistic/http/b$b;-><init>()V

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

    new-instance v1, Lcom/papa/sim/statistic/http/b$c;

    invoke-direct {v1}, Lcom/papa/sim/statistic/http/b$c;-><init>()V

    .line 7
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    return-object v0
.end method

.method static synthetic f(Lcom/papa/sim/statistic/http/b;Lokhttp3/Request;Ljava/lang/Exception;Lcom/papa/sim/statistic/http/b$p;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/papa/sim/statistic/http/b;->a0(Lokhttp3/Request;Ljava/lang/Exception;Lcom/papa/sim/statistic/http/b$p;)V

    return-void
.end method

.method static synthetic g(Lcom/papa/sim/statistic/http/b;Ljava/lang/Object;Lcom/papa/sim/statistic/http/b$p;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/papa/sim/statistic/http/b;->b0(Ljava/lang/Object;Lcom/papa/sim/statistic/http/b$p;)V

    return-void
.end method

.method static synthetic h(Lcom/papa/sim/statistic/http/b;)Lcom/papa/sim/statistic/http/b$k;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa/sim/statistic/http/b;->g:Lcom/papa/sim/statistic/http/b$k;

    return-object p0
.end method

.method static synthetic i(Lcom/papa/sim/statistic/http/b;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa/sim/statistic/http/b;->b:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic j(Lcom/papa/sim/statistic/http/b;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa/sim/statistic/http/b;->D(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic k(Lcom/papa/sim/statistic/http/b;Ljava/lang/reflect/Type;)[Ljava/lang/Class;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa/sim/statistic/http/b;->C(Ljava/lang/reflect/Type;)[Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method static synthetic l(Lcom/papa/sim/statistic/http/b;)Lcom/papa/sim/statistic/JsonMapper;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa/sim/statistic/http/b;->c:Lcom/papa/sim/statistic/JsonMapper;

    return-object p0
.end method

.method static synthetic m(Lcom/papa/sim/statistic/http/b;Ljava/lang/String;[Lcom/papa/sim/statistic/http/b$n;Ljava/lang/Object;)Lokhttp3/Request;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/papa/sim/statistic/http/b;->s(Ljava/lang/String;[Lcom/papa/sim/statistic/http/b$n;Ljava/lang/Object;)Lokhttp3/Request;

    move-result-object p0

    return-object p0
.end method

.method private m0([Lcom/papa/sim/statistic/http/b$n;)[Lcom/papa/sim/statistic/http/b$n;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Lcom/papa/sim/statistic/http/b$n;

    :cond_0
    return-object p1
.end method

.method static synthetic n(Lcom/papa/sim/statistic/http/b;)Lokhttp3/OkHttpClient;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa/sim/statistic/http/b;->a:Lokhttp3/OkHttpClient;

    return-object p0
.end method

.method static synthetic o(Lcom/papa/sim/statistic/http/b;Ljava/util/Map;)[Lcom/papa/sim/statistic/http/b$n;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa/sim/statistic/http/b;->T(Ljava/util/Map;)[Lcom/papa/sim/statistic/http/b$n;

    move-result-object p0

    return-object p0
.end method

.method static synthetic p(Lcom/papa/sim/statistic/http/b;Lcom/papa/sim/statistic/http/b$p;Lokhttp3/Request;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/papa/sim/statistic/http/b;->w(Lcom/papa/sim/statistic/http/b$p;Lokhttp3/Request;)V

    return-void
.end method

.method static synthetic q(Lcom/papa/sim/statistic/http/b;[Lcom/papa/sim/statistic/http/b$n;)[Lcom/papa/sim/statistic/http/b$n;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa/sim/statistic/http/b;->m0([Lcom/papa/sim/statistic/http/b$n;)[Lcom/papa/sim/statistic/http/b$n;

    move-result-object p0

    return-object p0
.end method

.method static synthetic r(Lcom/papa/sim/statistic/http/b;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa/sim/statistic/http/b;->Q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private s(Ljava/lang/String;[Lcom/papa/sim/statistic/http/b$n;Ljava/lang/Object;)Lokhttp3/Request;
    .locals 5

    const/4 v0, 0x0

    if-nez p2, :cond_0

    new-array p2, v0, [Lcom/papa/sim/statistic/http/b$n;

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
    iget-object v4, v3, Lcom/papa/sim/statistic/http/b$n;->a:Ljava/lang/String;

    iget-object v3, v3, Lcom/papa/sim/statistic/http/b$n;->b:Ljava/lang/String;

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
    invoke-static {}, Lcom/papa/sim/statistic/http/b;->G()Lcom/papa/sim/statistic/http/b;

    move-result-object v0

    invoke-direct {v0, p0}, Lcom/papa/sim/statistic/http/b;->a(Ljava/lang/Object;)V

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

.method private w(Lcom/papa/sim/statistic/http/b$p;Lokhttp3/Request;)V
    .locals 1

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/papa/sim/statistic/http/b;->q:Lcom/papa/sim/statistic/http/b$p;

    .line 2
    :cond_0
    invoke-virtual {p1, p2}, Lcom/papa/sim/statistic/http/b$p;->c(Lokhttp3/Request;)V

    .line 3
    iget-object v0, p0, Lcom/papa/sim/statistic/http/b;->a:Lokhttp3/OkHttpClient;

    invoke-virtual {v0, p2}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p2

    new-instance v0, Lcom/papa/sim/statistic/http/b$e;

    invoke-direct {v0, p0, p1}, Lcom/papa/sim/statistic/http/b$e;-><init>(Lcom/papa/sim/statistic/http/b;Lcom/papa/sim/statistic/http/b$p;)V

    invoke-interface {p2, v0}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    return-void
.end method

.method public static x(Ljava/lang/String;Lcom/papa/sim/statistic/http/b$p;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/papa/sim/statistic/http/b;->G()Lcom/papa/sim/statistic/http/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/papa/sim/statistic/http/b;->E()Lcom/papa/sim/statistic/http/b$k;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Lcom/papa/sim/statistic/http/b$k;->h(Ljava/lang/String;Lcom/papa/sim/statistic/http/b$p;Ljava/lang/Object;)V

    return-void
.end method

.method public static y(Ljava/lang/String;Lcom/papa/sim/statistic/http/b$p;Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/papa/sim/statistic/http/b;->G()Lcom/papa/sim/statistic/http/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/papa/sim/statistic/http/b;->E()Lcom/papa/sim/statistic/http/b$k;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/papa/sim/statistic/http/b$k;->h(Ljava/lang/String;Lcom/papa/sim/statistic/http/b$p;Ljava/lang/Object;)V

    return-void
.end method

.method public static z()Lokhttp3/OkHttpClient;
    .locals 1

    .line 1
    invoke-static {}, Lcom/papa/sim/statistic/http/b;->G()Lcom/papa/sim/statistic/http/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/papa/sim/statistic/http/b;->u()Lokhttp3/OkHttpClient;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public E()Lcom/papa/sim/statistic/http/b$k;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/http/b;->g:Lcom/papa/sim/statistic/http/b$k;

    return-object v0
.end method

.method public H()Lcom/papa/sim/statistic/http/b$o;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/http/b;->i:Lcom/papa/sim/statistic/http/b$o;

    return-object v0
.end method

.method public J()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/http/b;->l:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public K()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/http/b;->m:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public L()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/http/b;->k:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public M()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/http/b;->o:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public N()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/http/b;->n:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public O()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/http/b;->p:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public P()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/http/b;->j:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public d0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/http/b;->j:Ljava/lang/String;

    .line 2
    iput-object p2, p0, Lcom/papa/sim/statistic/http/b;->k:Ljava/lang/String;

    .line 3
    iput-object p3, p0, Lcom/papa/sim/statistic/http/b;->l:Ljava/lang/String;

    .line 4
    iput-object p4, p0, Lcom/papa/sim/statistic/http/b;->m:Ljava/lang/String;

    .line 5
    iput-object p5, p0, Lcom/papa/sim/statistic/http/b;->n:Ljava/lang/String;

    .line 6
    iput-object p6, p0, Lcom/papa/sim/statistic/http/b;->o:Ljava/lang/String;

    .line 7
    iput-object p7, p0, Lcom/papa/sim/statistic/http/b;->p:Ljava/lang/String;

    return-void
.end method

.method public f0(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/http/b;->l:Ljava/lang/String;

    return-void
.end method

.method public g0(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/http/b;->m:Ljava/lang/String;

    return-void
.end method

.method public h0(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/http/b;->k:Ljava/lang/String;

    return-void
.end method

.method public i0(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/http/b;->o:Ljava/lang/String;

    return-void
.end method

.method public j0(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/http/b;->n:Ljava/lang/String;

    return-void
.end method

.method public k0(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/http/b;->p:Ljava/lang/String;

    return-void
.end method

.method public l0(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/http/b;->j:Ljava/lang/String;

    return-void
.end method

.method public u()Lokhttp3/OkHttpClient;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/http/b;->a:Lokhttp3/OkHttpClient;

    return-object v0
.end method
