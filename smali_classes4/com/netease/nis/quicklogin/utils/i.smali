.class public Lcom/netease/nis/quicklogin/utils/i;
.super Ljava/lang/Object;
.source "ViewTool.java"


# direct methods
.method public static a(Landroid/content/Context;)I
    .locals 4

    .line 25
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "status_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 26
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_0

    :cond_0
    const/16 p0, 0x19

    :goto_0
    return p0
.end method

.method public static a(Landroid/content/Context;F)I
    .locals 0

    .line 24
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method public static a(Landroid/view/View;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 18
    instance-of v1, p0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 19
    check-cast p0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    .line 20
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 21
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 22
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    invoke-static {v2}, Lcom/netease/nis/quicklogin/utils/i;->a(Landroid/view/View;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static a(Landroid/app/Activity;I)V
    .locals 2

    .line 27
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 28
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-eqz p1, :cond_0

    const/high16 v0, 0x4000000

    .line 29
    invoke-virtual {p0, v0}, Landroid/view/Window;->clearFlags(I)V

    const/high16 v0, -0x80000000

    .line 30
    invoke-virtual {p0, v0}, Landroid/view/Window;->addFlags(I)V

    .line 31
    invoke-virtual {p0, p1}, Landroid/view/Window;->setStatusBarColor(I)V

    :cond_0
    return-void
.end method

.method public static a(Landroid/app/Activity;IIIIZ)V
    .locals 4

    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 9
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    int-to-float p1, p1

    .line 11
    invoke-static {v0, p1}, Lcom/netease/nis/quicklogin/utils/i;->a(Landroid/content/Context;F)I

    move-result p1

    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    int-to-float p1, p2

    .line 12
    invoke-static {v0, p1}, Lcom/netease/nis/quicklogin/utils/i;->a(Landroid/content/Context;F)I

    move-result p1

    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 13
    iput p3, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    if-eqz p5, :cond_0

    const/16 p1, 0x50

    .line 14
    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_0

    .line 15
    :cond_0
    iput p4, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 16
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public static a(Landroid/app/Activity;Z)V
    .locals 2

    .line 32
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    .line 33
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/high16 v1, -0x80000000

    .line 34
    invoke-virtual {p0, v1}, Landroid/view/Window;->addFlags(I)V

    :cond_0
    if-eqz p1, :cond_1

    const/16 p1, 0x17

    if-lt v0, p1, :cond_2

    .line 35
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const/16 p1, 0x2000

    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 36
    :cond_1
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static a(Landroid/view/View;I)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    int-to-float p1, p1

    invoke-static {v1, p1}, Lcom/netease/nis/quicklogin/utils/i;->a(Landroid/content/Context;F)I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    const/4 p1, 0x0

    .line 3
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 4
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    const/16 v0, 0xc

    .line 5
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 6
    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static b(Landroid/content/Context;)I
    .locals 3

    .line 10
    instance-of v0, p0, Landroid/app/Activity;

    const/16 v1, 0x32

    if-eqz v0, :cond_1

    .line 11
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v2, 0x1020002

    invoke-virtual {v0, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 12
    :cond_0
    invoke-static {p0}, Lcom/netease/nis/quicklogin/utils/i;->a(Landroid/content/Context;)I

    move-result p0

    sub-int v1, v0, p0

    :cond_1
    :goto_0
    return v1
.end method

.method public static b(Landroid/content/Context;F)I
    .locals 1

    .line 8
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/4 v0, 0x2

    .line 9
    invoke-static {v0, p1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method public static b(Landroid/view/View;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0xe

    .line 6
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 7
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method public static b(Landroid/view/View;I)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    int-to-float p1, p1

    invoke-static {v1, p1}, Lcom/netease/nis/quicklogin/utils/i;->a(Landroid/content/Context;F)I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 3
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static c(Landroid/view/View;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0xe

    .line 6
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0xc

    .line 7
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 8
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method public static c(Landroid/view/View;I)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    int-to-float p1, p1

    invoke-static {v1, p1}, Lcom/netease/nis/quicklogin/utils/i;->a(Landroid/content/Context;F)I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 3
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static d(Landroid/view/View;I)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    int-to-float p1, p1

    .line 3
    invoke-static {v0, p1}, Lcom/netease/nis/quicklogin/utils/i;->a(Landroid/content/Context;F)I

    move-result p1

    iput p1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    const/4 p1, 0x0

    .line 4
    iput p1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 5
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    const/16 v0, 0xa

    .line 6
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 7
    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static e(Landroid/view/View;I)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    int-to-float p1, p1

    invoke-static {v1, p1}, Lcom/netease/nis/quicklogin/utils/i;->a(Landroid/content/Context;F)I

    move-result p1

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    const/16 p1, 0x9

    .line 4
    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 5
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method
