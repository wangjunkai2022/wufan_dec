.class public Lcom/sina/weibo/sdk/web/WebActivity;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Lcom/sina/weibo/sdk/web/a;


# instance fields
.field private am:Landroid/widget/LinearLayout;

.field private an:Landroid/widget/TextView;

.field private ao:Landroid/widget/TextView;

.field private ap:Landroid/webkit/WebView;

.field private aq:Landroid/widget/ProgressBar;

.field private ar:Lcom/sina/weibo/sdk/web/b/b;

.field private as:Lcom/sina/weibo/sdk/web/a/b;

.field private at:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/sina/weibo/sdk/web/WebActivity;)Lcom/sina/weibo/sdk/web/b/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sina/weibo/sdk/web/WebActivity;->ar:Lcom/sina/weibo/sdk/web/b/b;

    return-object p0
.end method

.method private static a(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 6

    .line 2
    :try_start_0
    const-class v0, Landroid/webkit/WebView;

    const-string v1, "removeJavascriptInterface"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v5

    .line 3
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 4
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method static synthetic b(Lcom/sina/weibo/sdk/web/WebActivity;)Landroid/webkit/WebView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sina/weibo/sdk/web/WebActivity;->ap:Landroid/webkit/WebView;

    return-object p0
.end method

.method static synthetic c(Lcom/sina/weibo/sdk/web/WebActivity;)Lcom/sina/weibo/sdk/web/a/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sina/weibo/sdk/web/WebActivity;->as:Lcom/sina/weibo/sdk/web/a/b;

    return-object p0
.end method

.method static synthetic d(Lcom/sina/weibo/sdk/web/WebActivity;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sina/weibo/sdk/web/WebActivity;->am:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object p0, p0, Lcom/sina/weibo/sdk/web/WebActivity;->ap:Landroid/webkit/WebView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setVisibility(I)V

    return-void
.end method

.method static synthetic e(Lcom/sina/weibo/sdk/web/WebActivity;)Landroid/widget/ProgressBar;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sina/weibo/sdk/web/WebActivity;->aq:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method private static j(Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    const-string v0, "https://service.weibo.com/share/mobilesdk.php"

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "https://open.weibo.cn/oauth2/authorize?"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method static synthetic k(Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/sina/weibo/sdk/web/WebActivity;->j(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p1, v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 4
    :cond_0
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, -0x1

    .line 5
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 6
    new-instance v2, Landroid/widget/RelativeLayout;

    invoke-direct {v2, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 7
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/sina/weibo/sdk/web/WebActivity;->an:Landroid/widget/TextView;

    const-string v4, "\u5173\u95ed"

    .line 8
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object v3, p0, Lcom/sina/weibo/sdk/web/WebActivity;->an:Landroid/widget/TextView;

    const/high16 v4, 0x41880000    # 17.0f

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 10
    iget-object v3, p0, Lcom/sina/weibo/sdk/web/WebActivity;->an:Landroid/widget/TextView;

    const/16 v4, -0x7e00

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 11
    iget-object v3, p0, Lcom/sina/weibo/sdk/web/WebActivity;->an:Landroid/widget/TextView;

    new-instance v4, Lcom/sina/weibo/sdk/web/WebActivity$2;

    invoke-direct {v4, p0}, Lcom/sina/weibo/sdk/web/WebActivity$2;-><init>(Lcom/sina/weibo/sdk/web/WebActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/sina/weibo/sdk/web/WebActivity;->ao:Landroid/widget/TextView;

    const/high16 v4, 0x41900000    # 18.0f

    .line 13
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 14
    iget-object v3, p0, Lcom/sina/weibo/sdk/web/WebActivity;->ao:Landroid/widget/TextView;

    const v4, -0xadadae

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 15
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 16
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v6, 0xf

    .line 17
    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 18
    iget-object v6, p0, Lcom/sina/weibo/sdk/web/WebActivity;->an:Landroid/widget/TextView;

    const/16 v7, 0xa

    invoke-static {v7, p0}, Lcom/sina/weibo/sdk/b/e;->a(ILandroid/content/Context;)I

    move-result v8

    invoke-static {v7, p0}, Lcom/sina/weibo/sdk/b/e;->a(ILandroid/content/Context;)I

    move-result v7

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9, v7, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    const/16 v6, 0xd

    .line 19
    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 20
    iget-object v7, p0, Lcom/sina/weibo/sdk/web/WebActivity;->an:Landroid/widget/TextView;

    invoke-virtual {v2, v7, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 21
    iget-object v3, p0, Lcom/sina/weibo/sdk/web/WebActivity;->ao:Landroid/widget/TextView;

    invoke-virtual {v2, v3, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 22
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v5, 0x37

    invoke-static {v5, p0}, Lcom/sina/weibo/sdk/b/e;->a(ILandroid/content/Context;)I

    move-result v7

    invoke-direct {v3, v1, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 23
    invoke-virtual {v0, v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 24
    new-instance v2, Landroid/webkit/WebView;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sina/weibo/sdk/web/WebActivity;->ap:Landroid/webkit/WebView;

    .line 25
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 26
    invoke-static {v5, p0}, Lcom/sina/weibo/sdk/b/e;->a(ILandroid/content/Context;)I

    move-result v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 27
    iget-object v3, p0, Lcom/sina/weibo/sdk/web/WebActivity;->ap:Landroid/webkit/WebView;

    invoke-virtual {v0, v3, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 28
    new-instance v2, Landroid/widget/ProgressBar;

    invoke-direct {v2, p0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sina/weibo/sdk/web/WebActivity;->aq:Landroid/widget/ProgressBar;

    .line 29
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, 0x3

    invoke-static {v3, p0}, Lcom/sina/weibo/sdk/b/e;->a(ILandroid/content/Context;)I

    move-result v7

    invoke-direct {v2, v1, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 30
    invoke-static {v5, p0}, Lcom/sina/weibo/sdk/b/e;->a(ILandroid/content/Context;)I

    move-result v7

    iput v7, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 31
    iget-object v7, p0, Lcom/sina/weibo/sdk/web/WebActivity;->aq:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v7, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 32
    new-instance v2, Landroid/view/View;

    invoke-direct {v2, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 33
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const-string v10, "weibosdk_common_shadow_top"

    const-string v11, "drawable"

    invoke-virtual {v7, v10, v11, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v2, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 34
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {v3, p0}, Lcom/sina/weibo/sdk/b/e;->a(ILandroid/content/Context;)I

    move-result v8

    invoke-direct {v7, v1, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 35
    invoke-static {v5, p0}, Lcom/sina/weibo/sdk/b/e;->a(ILandroid/content/Context;)I

    move-result v5

    iput v5, v7, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 36
    invoke-virtual {v0, v2, v7}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 37
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sina/weibo/sdk/web/WebActivity;->am:Landroid/widget/LinearLayout;

    const/4 v5, 0x1

    .line 38
    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 39
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 40
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const-string v10, "weibosdk_empty_failed"

    invoke-virtual {v7, v10, v11, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 41
    iget-object v7, p0, Lcom/sina/weibo/sdk/web/WebActivity;->am:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 42
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v7, 0x41600000    # 14.0f

    .line 43
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setTextSize(F)V

    const v7, -0x424243

    .line 44
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 45
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v8, 0x12

    .line 46
    invoke-static {v8, p0}, Lcom/sina/weibo/sdk/b/e;->a(ILandroid/content/Context;)I

    move-result v8

    iput v8, v7, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    const/16 v8, 0x14

    .line 47
    invoke-static {v8, p0}, Lcom/sina/weibo/sdk/b/e;->a(ILandroid/content/Context;)I

    move-result v8

    iput v8, v7, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 48
    iget-object v8, p0, Lcom/sina/weibo/sdk/web/WebActivity;->am:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v2, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string v7, "\u7f51\u7edc\u51fa\u9519\u5566\uff0c\u8bf7\u70b9\u51fb\u6309\u94ae\u91cd\u65b0\u52a0\u8f7d"

    .line 49
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    new-instance v2, Landroid/widget/Button;

    invoke-direct {v2, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const/high16 v7, 0x41800000    # 16.0f

    .line 51
    invoke-virtual {v2, v7}, Landroid/widget/Button;->setTextSize(F)V

    const v7, -0x878788

    .line 52
    invoke-virtual {v2, v7}, Landroid/widget/Button;->setTextColor(I)V

    .line 53
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v8, 0x8e

    invoke-static {v8, p0}, Lcom/sina/weibo/sdk/b/e;->a(ILandroid/content/Context;)I

    move-result v8

    const/16 v10, 0x2e

    invoke-static {v10, p0}, Lcom/sina/weibo/sdk/b/e;->a(ILandroid/content/Context;)I

    move-result v10

    invoke-direct {v7, v8, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v8, 0x11

    .line 54
    iput v8, v7, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 55
    iget-object v8, p0, Lcom/sina/weibo/sdk/web/WebActivity;->am:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v2, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 56
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const-string v10, "retry_btn_selector"

    invoke-virtual {v7, v10, v11, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v2, v7}, Landroid/widget/Button;->setBackgroundResource(I)V

    const-string v7, "\u91cd\u65b0\u52a0\u8f7d"

    .line 57
    invoke-virtual {v2, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 58
    new-instance v7, Lcom/sina/weibo/sdk/web/WebActivity$3;

    invoke-direct {v7, p0}, Lcom/sina/weibo/sdk/web/WebActivity$3;-><init>(Lcom/sina/weibo/sdk/web/WebActivity;)V

    invoke-virtual {v2, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 60
    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 61
    iget-object v4, p0, Lcom/sina/weibo/sdk/web/WebActivity;->am:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    iget-object v2, p0, Lcom/sina/weibo/sdk/web/WebActivity;->am:Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 63
    iget-object v2, p0, Lcom/sina/weibo/sdk/web/WebActivity;->ap:Landroid/webkit/WebView;

    new-instance v4, Lcom/sina/weibo/sdk/web/WebActivity$4;

    invoke-direct {v4, p0}, Lcom/sina/weibo/sdk/web/WebActivity$4;-><init>(Lcom/sina/weibo/sdk/web/WebActivity;)V

    invoke-virtual {v2, v4}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 64
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 65
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_1

    .line 66
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 67
    :cond_1
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_2

    .line 68
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_2
    const-string v4, "web_type"

    .line 69
    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 70
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_3
    const/4 v1, 0x2

    if-eq v0, v5, :cond_6

    if-eq v0, v1, :cond_5

    if-eq v0, v3, :cond_4

    goto :goto_0

    .line 71
    :cond_4
    new-instance v0, Lcom/sina/weibo/sdk/web/b/c;

    invoke-direct {v0}, Lcom/sina/weibo/sdk/web/b/c;-><init>()V

    iput-object v0, p0, Lcom/sina/weibo/sdk/web/WebActivity;->ar:Lcom/sina/weibo/sdk/web/b/b;

    .line 72
    new-instance v0, Lcom/sina/weibo/sdk/web/a/c;

    iget-object v3, p0, Lcom/sina/weibo/sdk/web/WebActivity;->ar:Lcom/sina/weibo/sdk/web/b/b;

    invoke-direct {v0, p0, v3}, Lcom/sina/weibo/sdk/web/a/c;-><init>(Lcom/sina/weibo/sdk/web/WebActivity;Lcom/sina/weibo/sdk/web/b/b;)V

    iput-object v0, p0, Lcom/sina/weibo/sdk/web/WebActivity;->as:Lcom/sina/weibo/sdk/web/a/b;

    goto :goto_0

    :cond_5
    const-string v0, "\u5fae\u535a\u767b\u5f55"

    .line 73
    iput-object v0, p0, Lcom/sina/weibo/sdk/web/WebActivity;->at:Ljava/lang/String;

    .line 74
    new-instance v0, Lcom/sina/weibo/sdk/web/b/a;

    invoke-direct {v0}, Lcom/sina/weibo/sdk/web/b/a;-><init>()V

    iput-object v0, p0, Lcom/sina/weibo/sdk/web/WebActivity;->ar:Lcom/sina/weibo/sdk/web/b/b;

    .line 75
    new-instance v0, Lcom/sina/weibo/sdk/web/a/a;

    iget-object v3, p0, Lcom/sina/weibo/sdk/web/WebActivity;->ar:Lcom/sina/weibo/sdk/web/b/b;

    invoke-direct {v0, p0, p0, v3}, Lcom/sina/weibo/sdk/web/a/a;-><init>(Landroid/app/Activity;Lcom/sina/weibo/sdk/web/a;Lcom/sina/weibo/sdk/web/b/b;)V

    iput-object v0, p0, Lcom/sina/weibo/sdk/web/WebActivity;->as:Lcom/sina/weibo/sdk/web/a/b;

    goto :goto_0

    :cond_6
    const-string v0, "\u5fae\u535a\u5206\u4eab"

    .line 76
    iput-object v0, p0, Lcom/sina/weibo/sdk/web/WebActivity;->at:Ljava/lang/String;

    .line 77
    new-instance v0, Lcom/sina/weibo/sdk/web/b/d;

    invoke-direct {v0, p0}, Lcom/sina/weibo/sdk/web/b/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sina/weibo/sdk/web/WebActivity;->ar:Lcom/sina/weibo/sdk/web/b/b;

    .line 78
    new-instance v0, Lcom/sina/weibo/sdk/web/a/d;

    iget-object v3, p0, Lcom/sina/weibo/sdk/web/WebActivity;->ar:Lcom/sina/weibo/sdk/web/b/b;

    invoke-direct {v0, p0, p0, v3}, Lcom/sina/weibo/sdk/web/a/d;-><init>(Landroid/app/Activity;Lcom/sina/weibo/sdk/web/a;Lcom/sina/weibo/sdk/web/b/b;)V

    iput-object v0, p0, Lcom/sina/weibo/sdk/web/WebActivity;->as:Lcom/sina/weibo/sdk/web/a/b;

    .line 79
    :goto_0
    iget-object v0, p0, Lcom/sina/weibo/sdk/web/WebActivity;->ap:Landroid/webkit/WebView;

    iget-object v3, p0, Lcom/sina/weibo/sdk/web/WebActivity;->as:Lcom/sina/weibo/sdk/web/a/b;

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 80
    iget-object v0, p0, Lcom/sina/weibo/sdk/web/WebActivity;->ar:Lcom/sina/weibo/sdk/web/b/b;

    invoke-virtual {v0, v2}, Lcom/sina/weibo/sdk/web/b/b;->readFromBundle(Landroid/os/Bundle;)V

    .line 81
    iget-object v0, p0, Lcom/sina/weibo/sdk/web/WebActivity;->ap:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 82
    invoke-virtual {v0, v9}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 83
    invoke-virtual {v0, v9}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    .line 84
    invoke-static {}, Lcom/sina/weibo/sdk/b/e;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v0, v9}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 86
    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 87
    invoke-virtual {v0, v9}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    const/16 v2, 0x10

    if-lt p1, v2, :cond_7

    .line 88
    invoke-virtual {v0, v9}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 89
    :cond_7
    iget-object v2, p0, Lcom/sina/weibo/sdk/web/WebActivity;->ap:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->requestFocus()Z

    .line 90
    iget-object v2, p0, Lcom/sina/weibo/sdk/web/WebActivity;->ap:Landroid/webkit/WebView;

    invoke-virtual {v2, v9}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    .line 91
    iget-object v2, p0, Lcom/sina/weibo/sdk/web/WebActivity;->ap:Landroid/webkit/WebView;

    const-string v3, "searchBoxJavaBridge_"

    invoke-static {v2, v3}, Lcom/sina/weibo/sdk/web/WebActivity;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 92
    iget-object v2, p0, Lcom/sina/weibo/sdk/web/WebActivity;->ap:Landroid/webkit/WebView;

    const-string v3, "accessibility"

    invoke-static {v2, v3}, Lcom/sina/weibo/sdk/web/WebActivity;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 93
    iget-object v2, p0, Lcom/sina/weibo/sdk/web/WebActivity;->ap:Landroid/webkit/WebView;

    const-string v3, "accessibilityTraversal"

    invoke-static {v2, v3}, Lcom/sina/weibo/sdk/web/WebActivity;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    const/16 v2, 0x15

    if-lt p1, v2, :cond_8

    .line 94
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 95
    :cond_8
    iget-object p1, p0, Lcom/sina/weibo/sdk/web/WebActivity;->ar:Lcom/sina/weibo/sdk/web/b/b;

    invoke-virtual {p1}, Lcom/sina/weibo/sdk/web/b/b;->t()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 96
    iget-object p1, p0, Lcom/sina/weibo/sdk/web/WebActivity;->ar:Lcom/sina/weibo/sdk/web/b/b;

    new-instance v0, Lcom/sina/weibo/sdk/web/WebActivity$1;

    invoke-direct {v0, p0}, Lcom/sina/weibo/sdk/web/WebActivity$1;-><init>(Lcom/sina/weibo/sdk/web/WebActivity;)V

    invoke-virtual {p1, v0}, Lcom/sina/weibo/sdk/web/b/b;->a(Lcom/sina/weibo/sdk/web/b/b$a;)V

    goto :goto_1

    .line 97
    :cond_9
    iget-object p1, p0, Lcom/sina/weibo/sdk/web/WebActivity;->ar:Lcom/sina/weibo/sdk/web/b/b;

    invoke-virtual {p1}, Lcom/sina/weibo/sdk/web/b/b;->getUrl()Ljava/lang/String;

    move-result-object p1

    .line 98
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-static {p1}, Lcom/sina/weibo/sdk/web/WebActivity;->j(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 99
    iget-object v0, p0, Lcom/sina/weibo/sdk/web/WebActivity;->ap:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 100
    :cond_a
    :goto_1
    iget-object p1, p0, Lcom/sina/weibo/sdk/web/WebActivity;->ao:Landroid/widget/TextView;

    if-eqz p1, :cond_b

    .line 101
    iget-object v0, p0, Lcom/sina/weibo/sdk/web/WebActivity;->at:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_b
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 1
    iget-object v0, p0, Lcom/sina/weibo/sdk/web/WebActivity;->as:Lcom/sina/weibo/sdk/web/a/b;

    invoke-virtual {v0}, Lcom/sina/weibo/sdk/web/a/b;->s()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/sina/weibo/sdk/web/WebActivity;->ap:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object p1, p0, Lcom/sina/weibo/sdk/web/WebActivity;->ap:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->goBack()V

    return v1

    .line 4
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public final p()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sina/weibo/sdk/web/WebActivity;->am:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/sina/weibo/sdk/web/WebActivity;->ap:Landroid/webkit/WebView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    return-void
.end method

.method public final q()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
