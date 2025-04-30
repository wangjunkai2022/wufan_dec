.class Lcom/mob/commons/a/c$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mob/commons/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static a:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/mob/commons/a/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/mob/commons/a/c$a;->a:Ljava/util/WeakHashMap;

    return-void
.end method

.method static synthetic a(Ljava/lang/Class;)Lcom/mob/commons/a/c;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/mob/commons/a/c$a;->b(Ljava/lang/Class;)Lcom/mob/commons/a/c;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/mob/commons/a/c;)V
    .locals 0

    .line 2
    invoke-static {p0}, Lcom/mob/commons/a/c$a;->c(Lcom/mob/commons/a/c;)V

    return-void
.end method

.method private static declared-synchronized b(Ljava/lang/Class;)Lcom/mob/commons/a/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/mob/commons/a/c;",
            ">;)",
            "Lcom/mob/commons/a/c;"
        }
    .end annotation

    const-class v0, Lcom/mob/commons/a/c$a;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    .line 3
    sget-object v1, Lcom/mob/commons/a/c$a;->a:Ljava/util/WeakHashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mob/commons/a/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static synthetic b(Lcom/mob/commons/a/c;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/mob/commons/a/c$a;->d(Lcom/mob/commons/a/c;)V

    return-void
.end method

.method private static declared-synchronized c(Lcom/mob/commons/a/c;)V
    .locals 3

    const-class v0, Lcom/mob/commons/a/c$a;

    monitor-enter v0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    .line 2
    sget-object v2, Lcom/mob/commons/a/c$a;->a:Ljava/util/WeakHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1, p0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static declared-synchronized d(Lcom/mob/commons/a/c;)V
    .locals 2

    const-class v0, Lcom/mob/commons/a/c$a;

    monitor-enter v0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    .line 2
    sget-object v1, Lcom/mob/commons/a/c$a;->a:Ljava/util/WeakHashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
