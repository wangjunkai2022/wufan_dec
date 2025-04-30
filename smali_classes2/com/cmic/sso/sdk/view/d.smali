.class public Lcom/cmic/sso/sdk/view/d;
.super Ljava/lang/Object;
.source "UmcActivityUtil.java"


# static fields
.field private static a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Landroid/content/Context;)I
    .locals 1

    const-string/jumbo v0, "window"

    .line 65
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 66
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    if-eqz p0, :cond_0

    .line 67
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 68
    :cond_0
    iget p0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return p0
.end method

.method public static a(Landroid/content/Context;F)I
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    float-to-int p0, p1

    return p0

    .line 64
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    mul-float p1, p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0

    :catch_0
    float-to-int p0, p1

    return p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/cmic/sso/sdk/view/c;Ljava/util/ArrayList;Ljava/util/ArrayList;)Landroid/text/SpannableString;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/cmic/sso/sdk/view/c;",
            "Ljava/util/ArrayList<",
            "Lcom/cmic/sso/sdk/view/c;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/text/SpannableString;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 2
    :try_start_0
    new-instance v1, Lcom/cmic/sso/sdk/view/d$1;

    invoke-direct {v1, p0, p3}, Lcom/cmic/sso/sdk/view/d$1;-><init>(Landroid/content/Context;Lcom/cmic/sso/sdk/view/c;)V

    .line 3
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p3

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lt p3, v2, :cond_0

    .line 4
    new-instance p3, Lcom/cmic/sso/sdk/view/d$2;

    invoke-direct {p3, p0, p4}, Lcom/cmic/sso/sdk/view/d$2;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_0
    move-object p3, v3

    .line 5
    :goto_0
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x2

    if-lt v4, v5, :cond_1

    .line 6
    new-instance v4, Lcom/cmic/sso/sdk/view/d$3;

    invoke-direct {v4, p0, p4}, Lcom/cmic/sso/sdk/view/d$3;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    goto :goto_1

    :cond_1
    move-object v4, v3

    .line 7
    :goto_1
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x3

    if-lt v6, v7, :cond_2

    .line 8
    new-instance v6, Lcom/cmic/sso/sdk/view/d$4;

    invoke-direct {v6, p0, p4}, Lcom/cmic/sso/sdk/view/d$4;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    goto :goto_2

    :cond_2
    move-object v6, v3

    .line 9
    :goto_2
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x4

    if-ne v8, v9, :cond_3

    .line 10
    new-instance v3, Lcom/cmic/sso/sdk/view/d$5;

    invoke-direct {v3, p0, p4}, Lcom/cmic/sso/sdk/view/d$5;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 11
    :cond_3
    invoke-static {p0}, Lcom/cmic/sso/sdk/auth/AuthnHelper;->getInstance(Landroid/content/Context;)Lcom/cmic/sso/sdk/auth/AuthnHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/cmic/sso/sdk/auth/AuthnHelper;->getAuthThemeConfig()Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    .line 12
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    .line 13
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr p2, p0

    const/16 v8, 0x22

    invoke-virtual {v0, v1, p0, p2, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 14
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 p2, 0x0

    if-lt p0, v2, :cond_4

    .line 15
    invoke-virtual {p5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 16
    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 17
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    add-int/2addr p0, v1

    invoke-virtual {v0, p3, v1, p0, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    .line 18
    :goto_3
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lt p0, v5, :cond_5

    .line 19
    invoke-virtual {p5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    add-int/2addr v1, p0

    .line 20
    invoke-virtual {p5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 21
    invoke-virtual {p1, p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 22
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    add-int/2addr p0, v1

    invoke-virtual {v0, v4, v1, p0, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 23
    :cond_5
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lt p0, v7, :cond_6

    .line 24
    invoke-virtual {p5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    add-int/2addr p0, v1

    .line 25
    invoke-virtual {p5, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 26
    invoke-virtual {p1, p2, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result p0

    .line 27
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr p2, p0

    invoke-virtual {v0, v6, p0, p2, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 28
    :cond_6
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-ne p0, v9, :cond_7

    .line 29
    invoke-virtual {p5, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    add-int/2addr v1, p0

    .line 30
    invoke-virtual {p5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 31
    invoke-virtual {p1, p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result p1

    .line 32
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    add-int/2addr p0, p1

    invoke-virtual {v0, v3, p1, p0, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_7
    return-object v0

    :catch_0
    move-exception p0

    .line 33
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroid/view/View;IILjava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/RelativeLayout;
    .locals 6

    .line 34
    invoke-static {p0}, Lcom/cmic/sso/sdk/auth/AuthnHelper;->getInstance(Landroid/content/Context;)Lcom/cmic/sso/sdk/auth/AuthnHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmic/sso/sdk/auth/AuthnHelper;->getAuthThemeConfig()Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    move-result-object v0

    .line 35
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, -0x2

    if-eqz p1, :cond_0

    const/4 v3, -0x2

    goto :goto_0

    :cond_0
    const/high16 v3, 0x42440000    # 49.0f

    .line 36
    invoke-static {p0, v3}, Lcom/cmic/sso/sdk/view/d;->a(Landroid/content/Context;F)I

    move-result v3

    .line 37
    :goto_0
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v4, v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xa

    .line 38
    invoke-virtual {v4, v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 39
    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 40
    invoke-virtual {v1, p2}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 41
    new-instance p2, Landroid/widget/TextView;

    invoke-direct {p2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 42
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xd

    .line 43
    invoke-virtual {v3, v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 44
    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 45
    invoke-virtual {v0}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getNavTextColor()I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 46
    invoke-virtual {v0}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getNavTextSize()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x2

    invoke-virtual {p2, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 47
    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_1

    .line 48
    invoke-virtual {v1, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 49
    invoke-virtual {v1, p2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    return-object v1

    .line 50
    :cond_1
    invoke-virtual {v1, p2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 51
    new-instance p1, Landroid/widget/ImageButton;

    invoke-direct {p1, p0}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 52
    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getNavReturnImgWidth()I

    move-result p4

    int-to-float p4, p4

    invoke-static {p0, p4}, Lcom/cmic/sso/sdk/view/d;->a(Landroid/content/Context;F)I

    move-result p4

    invoke-virtual {v0}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getNavReturnImgHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-static {p0, v0}, Lcom/cmic/sso/sdk/view/d;->a(Landroid/content/Context;F)I

    move-result v0

    invoke-direct {p2, p4, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 p4, 0x9

    .line 53
    invoke-virtual {p2, p4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 p4, 0xf

    .line 54
    invoke-virtual {p2, p4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/high16 p4, 0x41400000    # 12.0f

    .line 55
    invoke-static {p0, p4}, Lcom/cmic/sso/sdk/view/d;->a(Landroid/content/Context;F)I

    move-result p4

    const/4 v0, 0x0

    invoke-virtual {p2, p4, v0, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 56
    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 57
    invoke-virtual {p1, p3}, Landroid/widget/ImageButton;->setId(I)V

    .line 58
    invoke-virtual {p1, p5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 60
    invoke-virtual {v1, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 61
    :try_start_0
    invoke-static {p0}, Lcom/cmic/sso/sdk/auth/AuthnHelper;->getInstance(Landroid/content/Context;)Lcom/cmic/sso/sdk/auth/AuthnHelper;

    move-result-object p2

    invoke-virtual {p2}, Lcom/cmic/sso/sdk/auth/AuthnHelper;->getAuthThemeConfig()Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    move-result-object p2

    invoke-virtual {p2}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getNavColor()I

    move-result p2

    invoke-virtual {v1, p2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const p2, -0xff7930

    .line 62
    invoke-virtual {v1, p2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    :goto_1
    const-string p2, "umcsdk_return_bg"

    .line 63
    invoke-static {p0, p2}, Lcom/cmic/sso/sdk/view/b;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageButton;->setImageResource(I)V

    return-object v1
.end method

.method public static b(Landroid/content/Context;)I
    .locals 1

    const-string/jumbo v0, "window"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 2
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    if-eqz p0, :cond_0

    .line 3
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 4
    :cond_0
    iget p0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return p0
.end method
