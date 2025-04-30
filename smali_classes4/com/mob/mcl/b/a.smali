.class public Lcom/mob/mcl/b/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mob/mcl/b/a$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/util/concurrent/ExecutorService;

.field private static b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static c:Lcom/mob/tools/network/NetworkHelper;

.field private static d:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/mob/mcl/b/a;->a:Ljava/util/concurrent/ExecutorService;

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/mob/mcl/b/a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    new-instance v0, Lcom/mob/tools/network/NetworkHelper;

    invoke-direct {v0}, Lcom/mob/tools/network/NetworkHelper;-><init>()V

    sput-object v0, Lcom/mob/mcl/b/a;->c:Lcom/mob/tools/network/NetworkHelper;

    .line 4
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    sput-object v0, Lcom/mob/mcl/b/a;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-void
.end method

.method static synthetic a(I)Ljava/lang/Runnable;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/mob/mcl/b/a;->c(I)Ljava/lang/Runnable;

    move-result-object p0

    return-object p0
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    .line 74
    invoke-static {}, Lcom/mob/mcl/c/h;->b()Lcom/mob/mcl/c/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/mcl/c/h;->h()V

    .line 75
    invoke-static {}, Lcom/mob/mcl/c/h;->b()Lcom/mob/mcl/c/h;

    move-result-object v0

    iget-object v0, v0, Lcom/mob/mcl/c/h;->j:Ljava/lang/String;

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcom/mob/tools/network/StringPart;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/mob/tools/network/StringPart;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "type"

    .line 49
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "url"

    .line 50
    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    if-eqz p2, :cond_0

    .line 52
    invoke-virtual {p0, p2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_0
    const-string p1, "headers"

    .line 53
    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_1

    .line 54
    invoke-virtual {p3}, Lcom/mob/tools/network/StringPart;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "body"

    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    :cond_1
    invoke-static {v0}, Lcom/mob/tools/utils/HashonHelper;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/lang/String;Ljava/util/HashMap;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 56
    invoke-static {}, Lcom/mob/mcl/a/a;->a()Lcom/mob/mcl/a/a;

    move-result-object v0

    const-string v1, "GET"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/mob/mcl/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcom/mob/tools/network/StringPart;ILcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/lang/String;

    move-result-object v0

    .line 57
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 58
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object p0

    const-string p1, "mcl apc"

    invoke-virtual {p0, p1}, Lcom/mob/mcl/d/b;->a(Ljava/lang/String;)V

    return-object v0

    .line 59
    :cond_0
    sget-object v0, Lcom/mob/mcl/b/a;->c:Lcom/mob/tools/network/NetworkHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1, p2}, Lcom/mob/tools/network/NetworkHelper;->httpGetNew(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/lang/String;

    move-result-object p0

    .line 60
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object p1

    const-string p2, "mcl htp"

    invoke-virtual {p1, p2}, Lcom/mob/mcl/d/b;->a(Ljava/lang/String;)V

    return-object p0
.end method

.method private static a(Ljava/util/HashMap;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 68
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "utf-8"

    invoke-static {v2, v3}, Lcom/mob/tools/utils/Data;->urlEncode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 69
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_0

    const-string v1, ""

    goto :goto_1

    :cond_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/mob/tools/utils/Data;->urlEncode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 70
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_1

    const/16 v3, 0x26

    .line 71
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 72
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 73
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(ZLjava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string v0, "mcl htp"

    if-nez p0, :cond_1

    .line 12
    sget-object v1, Lcom/mob/mcl/b/a;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    if-eqz v1, :cond_1

    .line 13
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 14
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 15
    sget-object p0, Lcom/mob/mcl/b/a;->c:Lcom/mob/tools/network/NetworkHelper;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/mob/tools/network/NetworkHelper;->httpGetNew(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/lang/String;

    move-result-object p0

    .line 16
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/mob/mcl/d/b;->a(Ljava/lang/String;)V

    return-object p0

    :cond_1
    const/4 v1, 0x0

    if-eqz p2, :cond_3

    .line 17
    invoke-static {p2}, Lcom/mob/mcl/b/a;->a(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p2

    .line 18
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 19
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "?"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_2
    move-object p2, v1

    .line 20
    :cond_3
    invoke-static {}, Lcom/mob/mcl/c/h;->b()Lcom/mob/mcl/c/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mob/mcl/c/h;->e()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 21
    invoke-static {}, Lcom/mob/mcl/c/h;->b()Lcom/mob/mcl/c/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mob/mcl/c/h;->c()Z

    move-result v2

    if-nez v2, :cond_4

    .line 22
    invoke-static {}, Lcom/mob/mcl/b/a;->d()V

    .line 23
    :cond_4
    invoke-static {}, Lcom/mob/mcl/c/h;->b()Lcom/mob/mcl/c/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mob/mcl/c/h;->c()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 24
    invoke-static {}, Lcom/mob/mcl/c/h;->b()Lcom/mob/mcl/c/h;

    move-result-object v2

    const/16 v3, 0x3ec

    iget v4, p4, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;->readTimout:I

    const-string v5, "GET"

    invoke-static {v5, p1, p3, v1}, Lcom/mob/mcl/b/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcom/mob/tools/network/StringPart;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/mob/mcl/c/h;->a(IILjava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 25
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object p0

    const-string p1, "mcl tp"

    invoke-virtual {p0, p1}, Lcom/mob/mcl/d/b;->a(Ljava/lang/String;)V

    .line 26
    invoke-static {v2}, Lcom/mob/tools/utils/HashonHelper;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    if-nez p0, :cond_6

    .line 27
    sget-object p0, Lcom/mob/mcl/b/a;->c:Lcom/mob/tools/network/NetworkHelper;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/mob/tools/network/NetworkHelper;->httpGetNew(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/lang/String;

    move-result-object p0

    .line 28
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/mob/mcl/d/b;->a(Ljava/lang/String;)V

    return-object p0

    :cond_6
    if-eqz p0, :cond_7

    return-object v1

    .line 29
    :cond_7
    invoke-static {}, Lcom/mob/mcl/a/a;->a()Lcom/mob/mcl/a/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mob/mcl/a/a;->b()Z

    move-result p0

    if-nez p0, :cond_8

    const/4 p0, 0x5

    const/4 p2, 0x0

    .line 30
    invoke-static {p0, p2}, Lcom/mob/mcl/b/a;->a(II)V

    .line 31
    :cond_8
    invoke-static {p1, p3, p4}, Lcom/mob/mcl/b/a;->a(Ljava/lang/String;Ljava/util/HashMap;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(II)V
    .locals 2

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long v0, p1

    .line 11
    new-instance p1, Lcom/mob/mcl/b/a$1;

    invoke-direct {p1, p0}, Lcom/mob/mcl/b/a$1;-><init>(I)V

    const/4 p0, 0x0

    invoke-static {p0, v0, v1, p1}, Lcom/mob/tools/utils/UIHandler;->sendEmptyMessageDelayed(IJLandroid/os/Handler$Callback;)Z

    return-void
.end method

.method public static a(ILcom/mob/mcl/BusinessMessageListener;)V
    .locals 1

    .line 86
    invoke-static {}, Lcom/mob/mcl/c/h;->b()Lcom/mob/mcl/c/h;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mob/mcl/c/h;->a(ILcom/mob/mcl/BusinessMessageListener;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 4
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v0

    const-string v1, "mcl ini"

    invoke-virtual {v0, v1}, Lcom/mob/mcl/d/b;->a(Ljava/lang/String;)V

    if-nez p0, :cond_0

    .line 5
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object p0

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 7
    :goto_0
    invoke-static {}, Lcom/mob/mcl/c/h;->b()Lcom/mob/mcl/c/h;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/mob/mcl/c/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-static {}, Lcom/mob/mcl/a/a;->a()Lcom/mob/mcl/a/a;

    move-result-object p1

    new-instance p2, Lcom/mob/mcl/b/a$a;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Lcom/mob/mcl/b/a$a;-><init>(Lcom/mob/mcl/b/a$1;)V

    invoke-virtual {p1, p0, p2}, Lcom/mob/mcl/a/a;->a(Landroid/content/Context;Lcom/mob/apc/b$b;)V

    const/4 p0, 0x0

    .line 9
    invoke-static {p0}, Lcom/mob/mcl/d/d;->a(Z)V

    .line 10
    invoke-static {p0, p0}, Lcom/mob/mcl/b/a;->a(II)V

    return-void
.end method

.method public static a(Lcom/mob/mcl/MobMCL$ELPMessageListener;)V
    .locals 1

    .line 85
    invoke-static {}, Lcom/mob/mcl/c/h;->b()Lcom/mob/mcl/c/h;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mob/mcl/c/h;->a(Lcom/mob/mcl/MobMCL$ELPMessageListener;)V

    return-void
.end method

.method public static a(Lcom/mob/mgs/OnIdChangeListener;)V
    .locals 1

    .line 76
    invoke-static {}, Lcom/mob/mcl/c/h;->b()Lcom/mob/mcl/c/h;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mob/mcl/c/h;->a(Lcom/mob/mgs/OnIdChangeListener;)V

    .line 77
    invoke-static {}, Lcom/mob/mcl/c/h;->b()Lcom/mob/mcl/c/h;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mob/mcl/c/h;->h()V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    .line 2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    sget-object v0, Lcom/mob/mcl/b/a;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/util/HashMap;Lcom/mob/tools/network/StringPart;ILcom/mob/tools/network/HttpResponseCallback;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/mob/tools/network/StringPart;",
            "I",
            "Lcom/mob/tools/network/HttpResponseCallback;",
            "Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 61
    invoke-static {}, Lcom/mob/mcl/a/a;->a()Lcom/mob/mcl/a/a;

    move-result-object v0

    const-string v1, "POST"

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/mob/mcl/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcom/mob/tools/network/StringPart;ILcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/lang/String;

    move-result-object v0

    .line 62
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 63
    new-instance p0, Lcom/mob/mcl/b/b;

    invoke-static {v0}, Lcom/mob/tools/utils/HashonHelper;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/mob/mcl/b/b;-><init>(Ljava/util/HashMap;Z)V

    .line 64
    invoke-static {p0}, Lcom/mob/mcl/a;->a(Lcom/mob/mcl/b/b;)Lcom/mob/tools/network/HttpConnection;

    move-result-object p0

    invoke-interface {p4, p0}, Lcom/mob/tools/network/HttpResponseCallback;->onResponse(Lcom/mob/tools/network/HttpConnection;)V

    return-void

    .line 65
    :cond_0
    sget-object v0, Lcom/mob/mcl/b/a;->c:Lcom/mob/tools/network/NetworkHelper;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/mob/tools/network/NetworkHelper;->rawPost(Ljava/lang/String;Ljava/util/HashMap;Lcom/mob/tools/network/HTTPPart;ILcom/mob/tools/network/HttpResponseCallback;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)V

    return-void
.end method

.method public static a(ZLjava/lang/String;Ljava/util/HashMap;Lcom/mob/tools/network/StringPart;ILcom/mob/tools/network/HttpResponseCallback;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/mob/tools/network/StringPart;",
            "I",
            "Lcom/mob/tools/network/HttpResponseCallback;",
            "Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    if-nez p0, :cond_1

    .line 32
    sget-object v0, Lcom/mob/mcl/b/a;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    if-eqz v0, :cond_1

    .line 33
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 34
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 35
    sget-object v2, Lcom/mob/mcl/b/a;->c:Lcom/mob/tools/network/NetworkHelper;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-virtual/range {v2 .. v8}, Lcom/mob/tools/network/NetworkHelper;->rawPost(Ljava/lang/String;Ljava/util/HashMap;Lcom/mob/tools/network/HTTPPart;ILcom/mob/tools/network/HttpResponseCallback;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)V

    return-void

    .line 36
    :cond_1
    invoke-static {}, Lcom/mob/mcl/c/h;->b()Lcom/mob/mcl/c/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/mcl/c/h;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 37
    invoke-static {}, Lcom/mob/mcl/c/h;->b()Lcom/mob/mcl/c/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/mcl/c/h;->c()Z

    move-result v0

    if-nez v0, :cond_2

    .line 38
    invoke-static {}, Lcom/mob/mcl/b/a;->d()V

    .line 39
    :cond_2
    invoke-static {}, Lcom/mob/mcl/c/h;->b()Lcom/mob/mcl/c/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/mcl/c/h;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 40
    invoke-static {}, Lcom/mob/mcl/c/h;->b()Lcom/mob/mcl/c/h;

    move-result-object v0

    const/16 v1, 0x3ec

    iget v2, p6, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;->readTimout:I

    const-string v3, "POST"

    invoke-static {v3, p1, p2, p3}, Lcom/mob/mcl/b/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcom/mob/tools/network/StringPart;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/mob/mcl/c/h;->a(IILjava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 41
    new-instance p0, Lcom/mob/mcl/b/b;

    invoke-direct {p0, v0}, Lcom/mob/mcl/b/b;-><init>(Ljava/util/HashMap;)V

    .line 42
    invoke-static {p0}, Lcom/mob/mcl/a;->a(Lcom/mob/mcl/b/b;)Lcom/mob/tools/network/HttpConnection;

    move-result-object p0

    invoke-interface {p5, p0}, Lcom/mob/tools/network/HttpResponseCallback;->onResponse(Lcom/mob/tools/network/HttpConnection;)V

    return-void

    :cond_3
    if-nez p0, :cond_4

    .line 43
    sget-object v0, Lcom/mob/mcl/b/a;->c:Lcom/mob/tools/network/NetworkHelper;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/mob/tools/network/NetworkHelper;->rawPost(Ljava/lang/String;Ljava/util/HashMap;Lcom/mob/tools/network/HTTPPart;ILcom/mob/tools/network/HttpResponseCallback;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)V

    return-void

    :cond_4
    if-eqz p0, :cond_5

    const/4 p0, 0x0

    .line 44
    invoke-interface {p5, p0}, Lcom/mob/tools/network/HttpResponseCallback;->onResponse(Lcom/mob/tools/network/HttpConnection;)V

    goto :goto_0

    .line 45
    :cond_5
    invoke-static {}, Lcom/mob/mcl/a/a;->a()Lcom/mob/mcl/a/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mob/mcl/a/a;->b()Z

    move-result p0

    if-nez p0, :cond_6

    const/4 p0, 0x5

    const/4 v0, 0x0

    .line 46
    invoke-static {p0, v0}, Lcom/mob/mcl/b/a;->a(II)V

    .line 47
    :cond_6
    invoke-static/range {p1 .. p6}, Lcom/mob/mcl/b/a;->a(Ljava/lang/String;Ljava/util/HashMap;Lcom/mob/tools/network/StringPart;ILcom/mob/tools/network/HttpResponseCallback;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)V

    :goto_0
    return-void
.end method

.method public static a(Ljava/lang/String;J)Z
    .locals 1

    .line 78
    invoke-static {}, Lcom/mob/mcl/c/h;->b()Lcom/mob/mcl/c/h;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/mob/mcl/c/h;->a(Ljava/lang/String;J)V

    .line 79
    :try_start_0
    invoke-static {}, Lcom/mob/mcl/c/h;->b()Lcom/mob/mcl/c/h;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mob/mcl/c/h;->d()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 80
    invoke-static {}, Lcom/mob/mcl/c/h;->b()Lcom/mob/mcl/c/h;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mob/mcl/c/h;->c()Z

    move-result p0

    if-nez p0, :cond_0

    const/16 p0, 0xbb8

    .line 81
    invoke-static {p0}, Lcom/mob/mcl/b/a;->e(I)Z

    .line 82
    :cond_0
    invoke-static {}, Lcom/mob/mcl/c/h;->b()Lcom/mob/mcl/c/h;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mob/mcl/c/h;->c()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 83
    invoke-static {}, Lcom/mob/mcl/c/h;->b()Lcom/mob/mcl/c/h;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mob/mcl/c/h;->i()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    .line 84
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/mob/mcl/d/b;->a(Ljava/lang/Throwable;)V

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static b()J
    .locals 2

    .line 4
    invoke-static {}, Lcom/mob/mcl/c/h;->b()Lcom/mob/mcl/c/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/mcl/c/h;->h()V

    .line 5
    invoke-static {}, Lcom/mob/mcl/c/h;->b()Lcom/mob/mcl/c/h;

    move-result-object v0

    iget-wide v0, v0, Lcom/mob/mcl/c/h;->k:J

    return-wide v0
.end method

.method static synthetic b(I)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/mob/mcl/b/a;->d(I)V

    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 1

    .line 2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    sget-object v0, Lcom/mob/mcl/b/a;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private static c(I)Ljava/lang/Runnable;
    .locals 1

    .line 2
    new-instance v0, Lcom/mob/mcl/b/a$2;

    invoke-direct {v0, p0}, Lcom/mob/mcl/b/a$2;-><init>(I)V

    return-object v0
.end method

.method static synthetic c()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/mob/mcl/b/a;->e()V

    return-void
.end method

.method private static d()V
    .locals 5

    const/4 v0, 0x0

    .line 10
    :try_start_0
    sget-object v1, Lcom/mob/mcl/b/a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 11
    :goto_0
    sget-object v1, Lcom/mob/mcl/b/a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    .line 12
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mob/tools/utils/DeviceHelper;->isInMainProcess()Z

    move-result v1

    .line 13
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "rgs tp, main p: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mob/mcl/d/b;->b(Ljava/lang/String;)V

    if-eqz v1, :cond_4

    .line 14
    invoke-static {}, Lcom/mob/mcl/c/h;->b()Lcom/mob/mcl/c/h;

    move-result-object v1

    iget-boolean v1, v1, Lcom/mob/mcl/c/h;->f:Z

    if-nez v1, :cond_1

    .line 15
    sget-object v1, Lcom/mob/mcl/b/a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    .line 16
    :cond_1
    invoke-static {}, Lcom/mob/mcl/c/h;->b()Lcom/mob/mcl/c/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mob/mcl/c/h;->d()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 17
    invoke-static {}, Lcom/mob/mcl/c/h;->b()Lcom/mob/mcl/c/h;

    move-result-object v1

    const/16 v2, 0xbb8

    invoke-virtual {v1, v2}, Lcom/mob/mcl/c/h;->a(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 18
    invoke-static {}, Lcom/mob/mcl/c/b;->a()Lcom/mob/mcl/c/b;

    .line 19
    sget-object v1, Lcom/mob/mcl/b/a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    .line 20
    :cond_2
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v1

    const-string v2, "tp reg failed"

    invoke-virtual {v1, v2}, Lcom/mob/mcl/d/b;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 21
    :cond_3
    sget-object v1, Lcom/mob/mcl/b/a;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/mob/mcl/b/a$3;

    invoke-direct {v2}, Lcom/mob/mcl/b/a$3;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 22
    :try_start_2
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/mcl/d/b;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 23
    :cond_4
    :goto_1
    sget-object v1, Lcom/mob/mcl/b/a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :catchall_1
    move-exception v1

    sget-object v2, Lcom/mob/mcl/b/a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 24
    goto :goto_3

    :goto_2
    throw v1

    :goto_3
    goto :goto_2
.end method

.method private static d(I)V
    .locals 4

    const/4 v0, 0x6

    if-ge p0, v0, :cond_5

    .line 1
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->isInMainProcess()Z

    move-result v0

    .line 2
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tp rgs, main p: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mob/mcl/d/b;->b(Ljava/lang/String;)V

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Lcom/mob/mcl/a/a;->a()Lcom/mob/mcl/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/mcl/a/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_5

    const/16 v0, 0x1388

    .line 4
    invoke-static {v0}, Lcom/mob/mcl/b/a;->e(I)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {}, Lcom/mob/mcl/c/h;->b()Lcom/mob/mcl/c/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/mcl/c/h;->a()Z

    move-result v0

    if-nez v0, :cond_5

    if-nez p0, :cond_1

    add-int/2addr p0, v1

    const/16 v0, 0xa

    .line 5
    invoke-static {p0, v0}, Lcom/mob/mcl/b/a;->a(II)V

    goto :goto_1

    :cond_1
    if-ne p0, v1, :cond_2

    add-int/2addr p0, v1

    const/16 v0, 0x1e

    .line 6
    invoke-static {p0, v0}, Lcom/mob/mcl/b/a;->a(II)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x2

    if-ne p0, v0, :cond_3

    add-int/2addr p0, v1

    const/16 v0, 0x3c

    .line 7
    invoke-static {p0, v0}, Lcom/mob/mcl/b/a;->a(II)V

    goto :goto_1

    :cond_3
    const/4 v0, 0x3

    if-ne p0, v0, :cond_4

    add-int/2addr p0, v1

    const/16 v0, 0xb4

    .line 8
    invoke-static {p0, v0}, Lcom/mob/mcl/b/a;->a(II)V

    goto :goto_1

    :cond_4
    const/4 v0, 0x4

    if-ne p0, v0, :cond_5

    add-int/2addr p0, v1

    const/16 v0, 0x12c

    .line 9
    invoke-static {p0, v0}, Lcom/mob/mcl/b/a;->a(II)V

    :cond_5
    :goto_1
    return-void
.end method

.method private static e()V
    .locals 1

    .line 22
    invoke-static {}, Lcom/mob/mcl/a/a;->a()Lcom/mob/mcl/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/mcl/a/a;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 23
    invoke-static {}, Lcom/mob/mcl/a/a;->a()Lcom/mob/mcl/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/mcl/a/a;->c()V

    :cond_0
    return-void
.end method

.method private static e(I)Z
    .locals 6

    const/4 v0, 0x0

    .line 1
    :try_start_0
    sget-object v1, Lcom/mob/mcl/b/a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 2
    :goto_0
    sget-object p0, Lcom/mob/mcl/b/a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return v0

    .line 3
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mob/tools/utils/DeviceHelper;->isInMainProcess()Z

    move-result v1

    .line 4
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "init tp, main p: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mob/mcl/d/b;->b(Ljava/lang/String;)V

    if-eqz v1, :cond_5

    .line 5
    invoke-static {}, Lcom/mob/mcl/c/h;->b()Lcom/mob/mcl/c/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mob/mcl/c/h;->f()V

    .line 6
    invoke-static {}, Lcom/mob/mcl/c/h;->b()Lcom/mob/mcl/c/h;

    move-result-object v1

    iget-boolean v1, v1, Lcom/mob/mcl/c/h;->f:Z

    if-nez v1, :cond_1

    .line 7
    sget-object p0, Lcom/mob/mcl/b/a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-static {}, Lcom/mob/mcl/c/h;->b()Lcom/mob/mcl/c/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mob/mcl/c/h;->d()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 9
    invoke-static {}, Lcom/mob/mcl/c/h;->b()Lcom/mob/mcl/c/h;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/mob/mcl/c/h;->a(I)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 10
    invoke-static {}, Lcom/mob/mcl/c/b;->a()Lcom/mob/mcl/c/b;

    .line 11
    invoke-static {}, Lcom/mob/mcl/c/h;->b()Lcom/mob/mcl/c/h;

    move-result-object p0

    iget-boolean p0, p0, Lcom/mob/mcl/c/h;->h:Z

    if-nez p0, :cond_2

    .line 12
    invoke-static {}, Lcom/mob/mcl/b/a;->e()V

    .line 13
    :cond_2
    sget-object p0, Lcom/mob/mcl/b/a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    sget-object p0, Lcom/mob/mcl/b/a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return v2

    .line 15
    :cond_3
    :try_start_2
    invoke-static {}, Lcom/mob/mcl/c/h;->b()Lcom/mob/mcl/c/h;

    move-result-object p0

    iget-boolean p0, p0, Lcom/mob/mcl/c/h;->l:Z

    .line 16
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object p0

    const-string v1, "tp reg failed"

    invoke-virtual {p0, v1}, Lcom/mob/mcl/d/b;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 17
    :cond_4
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object p0

    const-string v1, "tp reg avail false"

    invoke-virtual {p0, v1}, Lcom/mob/mcl/d/b;->a(Ljava/lang/String;)V

    .line 18
    :cond_5
    :goto_1
    invoke-static {}, Lcom/mob/mcl/b/a;->e()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    .line 19
    :try_start_3
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/mob/mcl/d/b;->a(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 20
    :goto_2
    sget-object p0, Lcom/mob/mcl/b/a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return v0

    :catchall_1
    move-exception p0

    sget-object v1, Lcom/mob/mcl/b/a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 21
    goto :goto_4

    :goto_3
    throw p0

    :goto_4
    goto :goto_3
.end method
