.class public Lcom/join/mgps/listener/a;
.super Ljava/lang/Object;
.source "AppMsgObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/listener/a$a;
    }
.end annotation


# static fields
.field private static b:Lcom/join/mgps/listener/a;

.field private static c:Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/listener/a$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/join/mgps/listener/a;->c:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/listener/a;->a:Ljava/util/List;

    return-void
.end method

.method public static b()Lcom/join/mgps/listener/a;
    .locals 2

    .line 1
    sget-object v0, Lcom/join/mgps/listener/a;->b:Lcom/join/mgps/listener/a;

    if-nez v0, :cond_1

    .line 2
    sget-object v0, Lcom/join/mgps/listener/a;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/join/mgps/listener/a;->b:Lcom/join/mgps/listener/a;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/join/mgps/listener/a;

    invoke-direct {v1}, Lcom/join/mgps/listener/a;-><init>()V

    sput-object v1, Lcom/join/mgps/listener/a;->b:Lcom/join/mgps/listener/a;

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
    sget-object v0, Lcom/join/mgps/listener/a;->b:Lcom/join/mgps/listener/a;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/join/mgps/listener/a$a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/listener/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/listener/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public c()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/listener/a;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 3
    :try_start_0
    iget-object v2, p0, Lcom/join/mgps/listener/a;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/listener/a$a;

    invoke-interface {v2}, Lcom/join/mgps/listener/a$a;->j()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 4
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public d(Lcom/join/mgps/listener/a$a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/listener/a;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
