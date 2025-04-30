.class public Lnotchtools/geek/com/notchtools/phone/e;
.super Lnotchtools/geek/com/notchtools/core/a;
.source "PVersionNotchScreen.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lnotchtools/geek/com/notchtools/core/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;Lnotchtools/geek/com/notchtools/core/d;)V
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1c
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lnotchtools/geek/com/notchtools/core/a;->a(Landroid/app/Activity;Lnotchtools/geek/com/notchtools/core/d;)V

    .line 2
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    const/4 v0, 0x1

    .line 3
    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 4
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public c(Landroid/view/Window;)Z
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1c
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getBoundingRects()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public d(Landroid/view/Window;)I
    .locals 2
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1c
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 3
    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getBoundingRects()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result p1

    return p1

    :cond_2
    :goto_0
    return v0
.end method

.method public g(Landroid/app/Activity;Lnotchtools/geek/com/notchtools/core/d;)V
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1c
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lnotchtools/geek/com/notchtools/core/a;->g(Landroid/app/Activity;Lnotchtools/geek/com/notchtools/core/d;)V

    .line 2
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    const/4 v0, 0x1

    .line 3
    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 4
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 5
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p1}, Lnotchtools/geek/com/notchtools/helper/b;->d(Landroid/view/Window;)V

    return-void
.end method
