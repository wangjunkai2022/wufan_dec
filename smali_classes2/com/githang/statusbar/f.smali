.class Lcom/githang/statusbar/f;
.super Ljava/lang/Object;
.source "StatusBarKitkatImpl.java"

# interfaces
.implements Lcom/githang/statusbar/b;


# static fields
.field private static final a:Ljava/lang/String; = "ghStatusBarView"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static b(Landroid/content/Context;)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string v0, "status_bar_height"

    const-string v1, "dimen"

    const-string v2, "android"

    .line 2
    invoke-virtual {p0, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 3
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public a(Landroid/view/Window;IZ)V
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    const/high16 v0, 0x4000000

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 2
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const-string v1, "ghStatusBarView"

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_0

    .line 4
    new-instance v2, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 5
    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 6
    invoke-virtual {p1}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/githang/statusbar/f;->b(Landroid/content/Context;)I

    move-result v1

    .line 7
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x30

    .line 8
    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 9
    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 10
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 11
    :cond_0
    invoke-virtual {v2, p2}, Landroid/view/View;->setBackgroundColor(I)V

    const/4 p2, 0x1

    .line 12
    invoke-static {p1, p2}, Lcom/githang/statusbar/c;->b(Landroid/view/Window;Z)V

    .line 13
    invoke-static {p1, p3}, Lcom/githang/statusbar/d;->a(Landroid/view/Window;Z)V

    return-void
.end method
