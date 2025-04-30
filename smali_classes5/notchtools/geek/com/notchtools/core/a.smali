.class public abstract Lnotchtools/geek/com/notchtools/core/a;
.super Ljava/lang/Object;
.source "AbsNotchScreenSupport.java"

# interfaces
.implements Lnotchtools/geek/com/notchtools/core/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;Lnotchtools/geek/com/notchtools/core/d;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lnotchtools/geek/com/notchtools/helper/b;->e(Landroid/view/Window;Z)V

    .line 2
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-interface {p0, v0}, Lnotchtools/geek/com/notchtools/core/b;->d(Landroid/view/Window;)I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lnotchtools/geek/com/notchtools/core/a;->h(Landroid/app/Activity;ILnotchtools/geek/com/notchtools/core/d;)V

    return-void
.end method

.method public b(Landroid/app/Activity;Lnotchtools/geek/com/notchtools/core/d;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lnotchtools/geek/com/notchtools/core/a;->g(Landroid/app/Activity;Lnotchtools/geek/com/notchtools/core/d;)V

    return-void
.end method

.method public e(Landroid/view/Window;)I
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lnotchtools/geek/com/notchtools/helper/b;->b(Landroid/content/Context;)I

    move-result p1

    return p1
.end method

.method public f(Landroid/app/Activity;Lnotchtools/geek/com/notchtools/core/d;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lnotchtools/geek/com/notchtools/core/a;->g(Landroid/app/Activity;Lnotchtools/geek/com/notchtools/core/d;)V

    return-void
.end method

.method public g(Landroid/app/Activity;Lnotchtools/geek/com/notchtools/core/d;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lnotchtools/geek/com/notchtools/helper/b;->e(Landroid/view/Window;Z)V

    .line 2
    invoke-virtual {p0, p1, p2}, Lnotchtools/geek/com/notchtools/core/a;->i(Landroid/app/Activity;Lnotchtools/geek/com/notchtools/core/d;)V

    return-void
.end method

.method protected h(Landroid/app/Activity;ILnotchtools/geek/com/notchtools/core/d;)V
    .locals 2

    if-eqz p3, :cond_0

    .line 1
    new-instance v0, Lnotchtools/geek/com/notchtools/core/c;

    invoke-direct {v0}, Lnotchtools/geek/com/notchtools/core/c;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-interface {p0, v1}, Lnotchtools/geek/com/notchtools/core/b;->d(Landroid/view/Window;)I

    move-result v1

    invoke-virtual {v0, v1}, Lnotchtools/geek/com/notchtools/core/c;->f(I)V

    .line 3
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-interface {p0, p1}, Lnotchtools/geek/com/notchtools/core/b;->c(Landroid/view/Window;)Z

    move-result p1

    invoke-virtual {v0, p1}, Lnotchtools/geek/com/notchtools/core/c;->e(Z)V

    .line 4
    invoke-virtual {v0, p2}, Lnotchtools/geek/com/notchtools/core/c;->d(I)V

    .line 5
    invoke-interface {p3, v0}, Lnotchtools/geek/com/notchtools/core/d;->a(Lnotchtools/geek/com/notchtools/core/c;)V

    :cond_0
    return-void
.end method

.method protected i(Landroid/app/Activity;Lnotchtools/geek/com/notchtools/core/d;)V
    .locals 2

    if-eqz p2, :cond_0

    .line 1
    new-instance v0, Lnotchtools/geek/com/notchtools/core/c;

    invoke-direct {v0}, Lnotchtools/geek/com/notchtools/core/c;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-interface {p0, v1}, Lnotchtools/geek/com/notchtools/core/b;->d(Landroid/view/Window;)I

    move-result v1

    invoke-virtual {v0, v1}, Lnotchtools/geek/com/notchtools/core/c;->f(I)V

    .line 3
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-interface {p0, p1}, Lnotchtools/geek/com/notchtools/core/b;->c(Landroid/view/Window;)Z

    move-result p1

    invoke-virtual {v0, p1}, Lnotchtools/geek/com/notchtools/core/c;->e(Z)V

    .line 4
    invoke-interface {p2, v0}, Lnotchtools/geek/com/notchtools/core/d;->a(Lnotchtools/geek/com/notchtools/core/c;)V

    :cond_0
    return-void
.end method
