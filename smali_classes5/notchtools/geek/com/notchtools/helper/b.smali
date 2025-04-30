.class public Lnotchtools/geek/com/notchtools/helper/b;
.super Ljava/lang/Object;
.source "NotchStatusBarUtils.java"


# static fields
.field private static a:I = -0x1

.field public static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/view/Window;)Landroid/view/ViewGroup;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "notch_container"

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    return-object p0
.end method

.method public static b(Landroid/content/Context;)I
    .locals 4

    .line 1
    sget v0, Lnotchtools/geek/com/notchtools/helper/b;->a:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    if-gtz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "status_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    sput p0, Lnotchtools/geek/com/notchtools/helper/b;->a:I

    .line 4
    :cond_1
    sget p0, Lnotchtools/geek/com/notchtools/helper/b;->a:I

    return p0
.end method

.method public static c(Landroid/view/Window;)Landroid/view/ViewGroup;
    .locals 1

    .line 1
    invoke-static {p0}, Lnotchtools/geek/com/notchtools/helper/b;->a(Landroid/view/Window;)Landroid/view/ViewGroup;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_1
    return-object p0
.end method

.method public static d(Landroid/view/Window;)V
    .locals 5

    .line 1
    invoke-static {p0}, Lnotchtools/geek/com/notchtools/helper/b;->c(Landroid/view/Window;)Landroid/view/ViewGroup;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v1, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 3
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    .line 4
    invoke-static {}, Lnotchtools/geek/com/notchtools/b;->o()Lnotchtools/geek/com/notchtools/b;

    move-result-object v4

    invoke-virtual {v4, p0}, Lnotchtools/geek/com/notchtools/b;->d(Landroid/view/Window;)I

    move-result p0

    invoke-direct {v2, v3, p0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 5
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 p0, -0x1000000

    .line 6
    invoke-virtual {v1, p0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 7
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public static e(Landroid/view/Window;Z)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 2
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v1, v1, 0x400

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 3
    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    const/16 v1, 0x404

    .line 5
    sget-boolean v2, Lnotchtools/geek/com/notchtools/helper/b;->b:Z

    if-nez v2, :cond_1

    const/16 v1, 0x606

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    const/16 v2, 0x13

    if-lt v0, v2, :cond_2

    or-int/lit16 v1, v1, 0x1000

    .line 6
    :cond_2
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    if-eqz p1, :cond_3

    .line 7
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    new-instance v0, Lnotchtools/geek/com/notchtools/helper/b$a;

    invoke-direct {v0, p0}, Lnotchtools/geek/com/notchtools/helper/b$a;-><init>(Landroid/view/Window;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    :cond_3
    return-void
.end method
