.class public Lnotchtools/geek/com/notchtools/phone/d;
.super Lnotchtools/geek/com/notchtools/core/a;
.source "OppoNotchScreen.java"


# static fields
.field private static final a:Ljava/lang/String; = "d"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lnotchtools/geek/com/notchtools/core/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;Lnotchtools/geek/com/notchtools/core/d;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lnotchtools/geek/com/notchtools/core/a;->a(Landroid/app/Activity;Lnotchtools/geek/com/notchtools/core/d;)V

    return-void
.end method

.method public b(Landroid/app/Activity;Lnotchtools/geek/com/notchtools/core/d;)V
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1a
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lnotchtools/geek/com/notchtools/phone/d;->g(Landroid/app/Activity;Lnotchtools/geek/com/notchtools/core/d;)V

    return-void
.end method

.method public c(Landroid/view/Window;)Z
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1a
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_0
    invoke-virtual {p1}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v0, "com.oppo.feature.screen.heteromorphism"

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public d(Landroid/view/Window;)I
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1a
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lnotchtools/geek/com/notchtools/phone/d;->c(Landroid/view/Window;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lnotchtools/geek/com/notchtools/helper/b;->b(Landroid/content/Context;)I

    move-result p1

    return p1
.end method

.method public f(Landroid/app/Activity;Lnotchtools/geek/com/notchtools/core/d;)V
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1a
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lnotchtools/geek/com/notchtools/core/a;->f(Landroid/app/Activity;Lnotchtools/geek/com/notchtools/core/d;)V

    .line 2
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p0, p2}, Lnotchtools/geek/com/notchtools/phone/d;->c(Landroid/view/Window;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p1}, Lnotchtools/geek/com/notchtools/helper/b;->c(Landroid/view/Window;)Landroid/view/ViewGroup;

    :cond_0
    return-void
.end method

.method public g(Landroid/app/Activity;Lnotchtools/geek/com/notchtools/core/d;)V
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1a
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lnotchtools/geek/com/notchtools/core/a;->g(Landroid/app/Activity;Lnotchtools/geek/com/notchtools/core/d;)V

    .line 2
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p0, p2}, Lnotchtools/geek/com/notchtools/phone/d;->c(Landroid/view/Window;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p1}, Lnotchtools/geek/com/notchtools/helper/b;->d(Landroid/view/Window;)V

    :cond_0
    return-void
.end method
