.class final Lnotchtools/geek/com/notchtools/helper/d$c;
.super Ljava/lang/Object;
.source "ThreadUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnotchtools/geek/com/notchtools/helper/d;->h(Lnotchtools/geek/com/notchtools/helper/d$e;Lnotchtools/geek/com/notchtools/helper/d$d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lnotchtools/geek/com/notchtools/helper/d$e;

.field final synthetic b:Lnotchtools/geek/com/notchtools/helper/d$d;


# direct methods
.method constructor <init>(Lnotchtools/geek/com/notchtools/helper/d$e;Lnotchtools/geek/com/notchtools/helper/d$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnotchtools/geek/com/notchtools/helper/d$c;->a:Lnotchtools/geek/com/notchtools/helper/d$e;

    iput-object p2, p0, Lnotchtools/geek/com/notchtools/helper/d$c;->b:Lnotchtools/geek/com/notchtools/helper/d$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lnotchtools/geek/com/notchtools/helper/d$c;->a:Lnotchtools/geek/com/notchtools/helper/d$e;

    invoke-interface {v0}, Lnotchtools/geek/com/notchtools/helper/d$e;->a()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    .line 3
    :goto_0
    iget-object v1, p0, Lnotchtools/geek/com/notchtools/helper/d$c;->b:Lnotchtools/geek/com/notchtools/helper/d$d;

    if-nez v1, :cond_0

    return-void

    .line 4
    :cond_0
    new-instance v1, Lnotchtools/geek/com/notchtools/helper/d$c$a;

    invoke-direct {v1, p0, v0}, Lnotchtools/geek/com/notchtools/helper/d$c$a;-><init>(Lnotchtools/geek/com/notchtools/helper/d$c;Ljava/lang/Object;)V

    invoke-static {v1}, Lnotchtools/geek/com/notchtools/helper/d;->p(Ljava/lang/Runnable;)Z

    return-void
.end method
