.class public Lcom/join/mgps/activity/HomePopupAdActivity$b;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "HomePopupAdActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/HomePopupAdActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/join/mgps/activity/HomePopupAdActivity;


# direct methods
.method public constructor <init>(Lcom/join/mgps/activity/HomePopupAdActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/HomePopupAdActivity$b;->b:Lcom/join/mgps/activity/HomePopupAdActivity;

    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/HomePopupAdActivity$b;->a:Ljava/util/List;

    return-object v0
.end method

.method public c(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/HomePopupAdActivity$b;->a:Ljava/util/List;

    return-void
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/HomePopupAdActivity$b;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/HomePopupAdActivity$b;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    .line 2
    instance-of v0, p2, Lcom/join/mgps/dto/RecomDatabean;

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_2

    .line 3
    check-cast p2, Lcom/join/mgps/dto/RecomDatabean;

    .line 4
    invoke-virtual {p2}, Lcom/join/mgps/dto/RecomDatabean;->getMain()Lcom/join/mgps/dto/ModleBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/ModleBean;->getPic_remote()Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 6
    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f0c02c9

    invoke-virtual {v6, v7, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v6, 0x7f090092

    .line 7
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/facebook/drawee/view/SimpleDraweeView;

    const v7, 0x7f0903ad

    .line 8
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 9
    invoke-virtual {v6}, Lcom/facebook/drawee/view/DraweeView;->getHierarchy()Lk0/b;

    move-result-object v8

    check-cast v8, Lcom/facebook/drawee/generic/a;

    const v9, 0x7f0807b1

    invoke-virtual {v8, v9}, Lcom/facebook/drawee/generic/a;->H(I)V

    .line 10
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/Fresco;->newDraweeControllerBuilder()Lcom/facebook/drawee/backends/pipeline/e;

    move-result-object v8

    .line 11
    iget-object v9, p0, Lcom/join/mgps/activity/HomePopupAdActivity$b;->b:Lcom/join/mgps/activity/HomePopupAdActivity;

    invoke-virtual {v9, v0}, Lcom/join/mgps/activity/HomePopupAdActivity;->isHomePopupAdLocalCached(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 12
    new-instance v9, Ljava/io/File;

    invoke-static {v5}, Lcom/join/mgps/Util/u;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object v10

    invoke-static {v0}, Lcom/join/mgps/Util/g0;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 13
    invoke-static {v9}, Lcom/join/mgps/Util/k0;->j(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v9

    goto :goto_0

    .line 14
    :cond_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 15
    :goto_0
    invoke-virtual {v8, v9}, Lcom/facebook/drawee/backends/pipeline/e;->c0(Landroid/net/Uri;)Lcom/facebook/drawee/backends/pipeline/e;

    .line 16
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/Fresco;->newDraweeControllerBuilder()Lcom/facebook/drawee/backends/pipeline/e;

    move-result-object v8

    .line 17
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/facebook/drawee/backends/pipeline/e;->c0(Landroid/net/Uri;)Lcom/facebook/drawee/backends/pipeline/e;

    move-result-object v0

    .line 18
    invoke-virtual {v0, v3}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->E(Z)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/backends/pipeline/e;

    .line 19
    invoke-virtual {v0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->d()Lcom/facebook/drawee/controller/a;

    move-result-object v0

    .line 20
    invoke-virtual {v6, v0}, Lcom/facebook/drawee/view/DraweeView;->setController(Lk0/a;)V

    .line 21
    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 22
    :try_start_0
    invoke-virtual {p1, v1, v2, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 23
    invoke-virtual {p2}, Lcom/join/mgps/dto/RecomDatabean;->getSub()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/AppBeanMain;

    if-eqz p1, :cond_1

    .line 24
    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBeanMain;->getLink_type()I

    move-result v0

    const/16 v2, 0x11

    if-ne v0, v2, :cond_1

    .line 25
    invoke-virtual {p1, v3}, Lcom/join/mgps/dto/AppBeanMain;->setLink_type(I)V

    .line 26
    new-instance v0, Lcom/join/mgps/activity/HomePopupAdActivity$b$a;

    invoke-direct {v0, p0, v5, p1}, Lcom/join/mgps/activity/HomePopupAdActivity$b$a;-><init>(Lcom/join/mgps/activity/HomePopupAdActivity$b;Landroid/content/Context;Lcom/join/mgps/dto/AppBeanMain;)V

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    :cond_1
    new-instance p1, Lcom/join/mgps/activity/HomePopupAdActivity$b$b;

    invoke-direct {p1, p0, p2}, Lcom/join/mgps/activity/HomePopupAdActivity$b$b;-><init>(Lcom/join/mgps/activity/HomePopupAdActivity$b;Lcom/join/mgps/dto/RecomDatabean;)V

    invoke-virtual {v6, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 28
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-object v1

    .line 29
    :cond_2
    instance-of v0, p2, Lcom/join/mgps/dto/EverdayLogin;

    if-eqz v0, :cond_3

    .line 30
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 31
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v5, 0x7f0c02c8

    invoke-virtual {v0, v5, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 32
    iget-object v5, p0, Lcom/join/mgps/activity/HomePopupAdActivity$b;->b:Lcom/join/mgps/activity/HomePopupAdActivity;

    const v6, 0x7f0912c9

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/webkit/WebView;

    invoke-static {v5, v6}, Lcom/join/mgps/activity/HomePopupAdActivity;->F0(Lcom/join/mgps/activity/HomePopupAdActivity;Landroid/webkit/WebView;)Landroid/webkit/WebView;

    .line 33
    iget-object v5, p0, Lcom/join/mgps/activity/HomePopupAdActivity$b;->b:Lcom/join/mgps/activity/HomePopupAdActivity;

    invoke-static {v5}, Lcom/join/mgps/activity/HomePopupAdActivity;->E0(Lcom/join/mgps/activity/HomePopupAdActivity;)Landroid/webkit/WebView;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 34
    iget-object v5, p0, Lcom/join/mgps/activity/HomePopupAdActivity$b;->b:Lcom/join/mgps/activity/HomePopupAdActivity;

    invoke-static {v5}, Lcom/join/mgps/activity/HomePopupAdActivity;->E0(Lcom/join/mgps/activity/HomePopupAdActivity;)Landroid/webkit/WebView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/WebView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 35
    check-cast p2, Lcom/join/mgps/dto/EverdayLogin;

    .line 36
    iget-object v5, p0, Lcom/join/mgps/activity/HomePopupAdActivity$b;->b:Lcom/join/mgps/activity/HomePopupAdActivity;

    invoke-static {v5}, Lcom/join/mgps/activity/HomePopupAdActivity;->E0(Lcom/join/mgps/activity/HomePopupAdActivity;)Landroid/webkit/WebView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 37
    iget-object v5, p0, Lcom/join/mgps/activity/HomePopupAdActivity$b;->b:Lcom/join/mgps/activity/HomePopupAdActivity;

    invoke-static {v5}, Lcom/join/mgps/activity/HomePopupAdActivity;->E0(Lcom/join/mgps/activity/HomePopupAdActivity;)Landroid/webkit/WebView;

    move-result-object v5

    invoke-virtual {p2}, Lcom/join/mgps/dto/EverdayLogin;->getFilePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v5, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 38
    iget-object p2, p0, Lcom/join/mgps/activity/HomePopupAdActivity$b;->b:Lcom/join/mgps/activity/HomePopupAdActivity;

    invoke-static {p2}, Lcom/join/mgps/activity/HomePopupAdActivity;->E0(Lcom/join/mgps/activity/HomePopupAdActivity;)Landroid/webkit/WebView;

    move-result-object p2

    invoke-virtual {p2, v4}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 39
    iget-object p2, p0, Lcom/join/mgps/activity/HomePopupAdActivity$b;->b:Lcom/join/mgps/activity/HomePopupAdActivity;

    invoke-static {p2}, Lcom/join/mgps/activity/HomePopupAdActivity;->E0(Lcom/join/mgps/activity/HomePopupAdActivity;)Landroid/webkit/WebView;

    move-result-object p2

    invoke-virtual {p2, v4}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 40
    iget-object p2, p0, Lcom/join/mgps/activity/HomePopupAdActivity$b;->b:Lcom/join/mgps/activity/HomePopupAdActivity;

    invoke-static {p2}, Lcom/join/mgps/activity/HomePopupAdActivity;->E0(Lcom/join/mgps/activity/HomePopupAdActivity;)Landroid/webkit/WebView;

    move-result-object p2

    new-instance v4, Lcom/join/mgps/activity/HomePopupAdActivity$b$c;

    invoke-direct {v4, p0}, Lcom/join/mgps/activity/HomePopupAdActivity$b$c;-><init>(Lcom/join/mgps/activity/HomePopupAdActivity$b;)V

    invoke-virtual {p2, v4}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 41
    iget-object p2, p0, Lcom/join/mgps/activity/HomePopupAdActivity$b;->b:Lcom/join/mgps/activity/HomePopupAdActivity;

    invoke-static {p2}, Lcom/join/mgps/activity/HomePopupAdActivity;->E0(Lcom/join/mgps/activity/HomePopupAdActivity;)Landroid/webkit/WebView;

    move-result-object p2

    new-instance v4, Lcom/join/mgps/activity/HomePopupAdActivity$b$d;

    invoke-direct {v4, p0}, Lcom/join/mgps/activity/HomePopupAdActivity$b$d;-><init>(Lcom/join/mgps/activity/HomePopupAdActivity$b;)V

    invoke-virtual {p2, v4}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 42
    iget-object p2, p0, Lcom/join/mgps/activity/HomePopupAdActivity$b;->b:Lcom/join/mgps/activity/HomePopupAdActivity;

    invoke-static {p2}, Lcom/join/mgps/activity/HomePopupAdActivity;->E0(Lcom/join/mgps/activity/HomePopupAdActivity;)Landroid/webkit/WebView;

    move-result-object p2

    new-instance v4, Lcom/join/mgps/activity/HomePopupAdActivity$c;

    iget-object v5, p0, Lcom/join/mgps/activity/HomePopupAdActivity$b;->b:Lcom/join/mgps/activity/HomePopupAdActivity;

    invoke-direct {v4, v5}, Lcom/join/mgps/activity/HomePopupAdActivity$c;-><init>(Lcom/join/mgps/activity/HomePopupAdActivity;)V

    const-string v5, "papa"

    invoke-virtual {p2, v4, v5}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    iget-object p2, p0, Lcom/join/mgps/activity/HomePopupAdActivity$b;->b:Lcom/join/mgps/activity/HomePopupAdActivity;

    invoke-static {p2}, Lcom/join/mgps/activity/HomePopupAdActivity;->E0(Lcom/join/mgps/activity/HomePopupAdActivity;)Landroid/webkit/WebView;

    move-result-object p2

    invoke-virtual {p2, v3, v1}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 44
    invoke-virtual {p1, v0, v2, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    return-object v0

    .line 45
    :cond_3
    new-instance p2, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    return-object p2
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
