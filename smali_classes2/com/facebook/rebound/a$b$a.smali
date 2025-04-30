.class Lcom/facebook/rebound/a$b$a;
.super Ljava/lang/Object;
.source "AndroidSpringLooperFactory.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/rebound/a$b;-><init>(Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/rebound/a$b;


# direct methods
.method constructor <init>(Lcom/facebook/rebound/a$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/rebound/a$b$a;->a:Lcom/facebook/rebound/a$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/facebook/rebound/a$b$a;->a:Lcom/facebook/rebound/a$b;

    invoke-static {v0}, Lcom/facebook/rebound/a$b;->d(Lcom/facebook/rebound/a$b;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/rebound/a$b$a;->a:Lcom/facebook/rebound/a$b;

    iget-object v0, v0, Lcom/facebook/rebound/n;->a:Lcom/facebook/rebound/c;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 3
    iget-object v2, p0, Lcom/facebook/rebound/a$b$a;->a:Lcom/facebook/rebound/a$b;

    iget-object v3, v2, Lcom/facebook/rebound/n;->a:Lcom/facebook/rebound/c;

    invoke-static {v2}, Lcom/facebook/rebound/a$b;->e(Lcom/facebook/rebound/a$b;)J

    move-result-wide v4

    sub-long v4, v0, v4

    long-to-double v4, v4

    invoke-virtual {v3, v4, v5}, Lcom/facebook/rebound/c;->i(D)V

    .line 4
    iget-object v2, p0, Lcom/facebook/rebound/a$b$a;->a:Lcom/facebook/rebound/a$b;

    invoke-static {v2, v0, v1}, Lcom/facebook/rebound/a$b;->f(Lcom/facebook/rebound/a$b;J)J

    .line 5
    iget-object v0, p0, Lcom/facebook/rebound/a$b$a;->a:Lcom/facebook/rebound/a$b;

    invoke-static {v0}, Lcom/facebook/rebound/a$b;->h(Lcom/facebook/rebound/a$b;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/rebound/a$b$a;->a:Lcom/facebook/rebound/a$b;

    invoke-static {v1}, Lcom/facebook/rebound/a$b;->g(Lcom/facebook/rebound/a$b;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method
