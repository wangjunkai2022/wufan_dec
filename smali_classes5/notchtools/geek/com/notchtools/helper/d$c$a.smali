.class Lnotchtools/geek/com/notchtools/helper/d$c$a;
.super Ljava/lang/Object;
.source "ThreadUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnotchtools/geek/com/notchtools/helper/d$c;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Lnotchtools/geek/com/notchtools/helper/d$c;


# direct methods
.method constructor <init>(Lnotchtools/geek/com/notchtools/helper/d$c;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnotchtools/geek/com/notchtools/helper/d$c$a;->b:Lnotchtools/geek/com/notchtools/helper/d$c;

    iput-object p2, p0, Lnotchtools/geek/com/notchtools/helper/d$c$a;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lnotchtools/geek/com/notchtools/helper/d$c$a;->b:Lnotchtools/geek/com/notchtools/helper/d$c;

    iget-object v0, v0, Lnotchtools/geek/com/notchtools/helper/d$c;->b:Lnotchtools/geek/com/notchtools/helper/d$d;

    iget-object v1, p0, Lnotchtools/geek/com/notchtools/helper/d$c$a;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lnotchtools/geek/com/notchtools/helper/d$d;->a(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
