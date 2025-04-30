.class public Lcom/xinzhu/overmind/server/am/a$c;
.super Ljava/lang/Object;
.source "ActiveServices.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xinzhu/overmind/server/am/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field private a:Ljava/util/concurrent/atomic/AtomicInteger;

.field private b:Ljava/util/concurrent/atomic/AtomicInteger;

.field private c:Lcom/xinzhu/overmind/server/am/a$b;

.field private d:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/xinzhu/overmind/server/am/a$c;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/xinzhu/overmind/server/am/a$c;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method static synthetic a(Lcom/xinzhu/overmind/server/am/a$c;)Landroid/content/Intent;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xinzhu/overmind/server/am/a$c;->d:Landroid/content/Intent;

    return-object p0
.end method

.method static synthetic b(Lcom/xinzhu/overmind/server/am/a$c;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xinzhu/overmind/server/am/a$c;->d:Landroid/content/Intent;

    return-object p1
.end method

.method static synthetic c(Lcom/xinzhu/overmind/server/am/a$c;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xinzhu/overmind/server/am/a$c;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method static synthetic d(Lcom/xinzhu/overmind/server/am/a$c;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xinzhu/overmind/server/am/a$c;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method static synthetic e(Lcom/xinzhu/overmind/server/am/a$c;)Lcom/xinzhu/overmind/server/am/a$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xinzhu/overmind/server/am/a$c;->c:Lcom/xinzhu/overmind/server/am/a$b;

    return-object p0
.end method

.method static synthetic f(Lcom/xinzhu/overmind/server/am/a$c;Lcom/xinzhu/overmind/server/am/a$b;)Lcom/xinzhu/overmind/server/am/a$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xinzhu/overmind/server/am/a$c;->c:Lcom/xinzhu/overmind/server/am/a$b;

    return-object p1
.end method


# virtual methods
.method public g()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/am/a$c;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    return v0
.end method

.method public h()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/am/a$c;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    return v0
.end method

.method public i()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/am/a$c;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    return v0
.end method
