.class public Lcom/xinzhu/overmind/client/service/a$b;
.super Ljava/lang/Object;
.source "ServiceRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xinzhu/overmind/client/service/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field private a:Landroid/os/IBinder;

.field private b:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic c:Lcom/xinzhu/overmind/client/service/a;


# direct methods
.method public constructor <init>(Lcom/xinzhu/overmind/client/service/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/xinzhu/overmind/client/service/a$b;->c:Lcom/xinzhu/overmind/client/service/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lcom/xinzhu/overmind/client/service/a$b;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/client/service/a$b;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    return v0
.end method

.method public b()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/client/service/a$b;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public c()Landroid/os/IBinder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/client/service/a$b;->a:Landroid/os/IBinder;

    return-object v0
.end method

.method public d()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/client/service/a$b;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    return v0
.end method

.method public e(Landroid/os/IBinder;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "IBinder"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/xinzhu/overmind/client/service/a$b;->a:Landroid/os/IBinder;

    return-void
.end method
