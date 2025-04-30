.class public Lcom/join/mgps/socket/a;
.super Ljava/lang/Object;
.source "RequestQueneManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/socket/a$b;
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String; = "a"


# instance fields
.field a:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Lcom/join/mgps/socket/entity/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/socket/a;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    return-void
.end method

.method synthetic constructor <init>(Lcom/join/mgps/socket/a$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/socket/a;-><init>()V

    return-void
.end method

.method public static b()Lcom/join/mgps/socket/a;
    .locals 1

    .line 1
    sget-object v0, Lcom/join/mgps/socket/a$b;->a:Lcom/join/mgps/socket/a;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/socket/a;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    :cond_0
    return-void
.end method

.method public c()Lcom/join/mgps/socket/entity/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/socket/a;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/socket/entity/e;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public d(Lcom/join/mgps/socket/entity/e;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/socket/a;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/socket/a;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/socket/a;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "push: \u88c5\u5165\u6570\u636e size"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/mgps/socket/a;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    return-void
.end method
