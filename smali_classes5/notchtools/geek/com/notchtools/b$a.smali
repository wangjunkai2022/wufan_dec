.class Lnotchtools/geek/com/notchtools/b$a;
.super Ljava/lang/Object;
.source "NotchTools.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnotchtools/geek/com/notchtools/b;->f(Landroid/app/Activity;Lnotchtools/geek/com/notchtools/core/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lnotchtools/geek/com/notchtools/core/d;

.field final synthetic c:Lnotchtools/geek/com/notchtools/b;


# direct methods
.method constructor <init>(Lnotchtools/geek/com/notchtools/b;Landroid/app/Activity;Lnotchtools/geek/com/notchtools/core/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnotchtools/geek/com/notchtools/b$a;->c:Lnotchtools/geek/com/notchtools/b;

    iput-object p2, p0, Lnotchtools/geek/com/notchtools/b$a;->a:Landroid/app/Activity;

    iput-object p3, p0, Lnotchtools/geek/com/notchtools/b$a;->b:Lnotchtools/geek/com/notchtools/core/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lnotchtools/geek/com/notchtools/b$a;->c:Lnotchtools/geek/com/notchtools/b;

    invoke-static {v0}, Lnotchtools/geek/com/notchtools/b;->h(Lnotchtools/geek/com/notchtools/b;)Lnotchtools/geek/com/notchtools/core/b;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lnotchtools/geek/com/notchtools/b$a;->c:Lnotchtools/geek/com/notchtools/b;

    iget-object v1, p0, Lnotchtools/geek/com/notchtools/b$a;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v0, v1}, Lnotchtools/geek/com/notchtools/b;->i(Lnotchtools/geek/com/notchtools/b;Landroid/view/Window;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lnotchtools/geek/com/notchtools/b$a;->c:Lnotchtools/geek/com/notchtools/b;

    invoke-static {v0}, Lnotchtools/geek/com/notchtools/b;->h(Lnotchtools/geek/com/notchtools/b;)Lnotchtools/geek/com/notchtools/core/b;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lnotchtools/geek/com/notchtools/b$a;->c:Lnotchtools/geek/com/notchtools/b;

    invoke-static {v0}, Lnotchtools/geek/com/notchtools/b;->h(Lnotchtools/geek/com/notchtools/b;)Lnotchtools/geek/com/notchtools/core/b;

    move-result-object v0

    iget-object v1, p0, Lnotchtools/geek/com/notchtools/b$a;->a:Landroid/app/Activity;

    iget-object v2, p0, Lnotchtools/geek/com/notchtools/b$a;->b:Lnotchtools/geek/com/notchtools/core/d;

    invoke-interface {v0, v1, v2}, Lnotchtools/geek/com/notchtools/core/b;->f(Landroid/app/Activity;Lnotchtools/geek/com/notchtools/core/d;)V

    :cond_1
    return-void
.end method
