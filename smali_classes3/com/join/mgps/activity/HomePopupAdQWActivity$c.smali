.class public Lcom/join/mgps/activity/HomePopupAdQWActivity$c;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "HomePopupAdQWActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/HomePopupAdQWActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
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

.field final synthetic b:Lcom/join/mgps/activity/HomePopupAdQWActivity;


# direct methods
.method public constructor <init>(Lcom/join/mgps/activity/HomePopupAdQWActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity$c;->b:Lcom/join/mgps/activity/HomePopupAdQWActivity;

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
    iget-object v0, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity$c;->a:Ljava/util/List;

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
    iput-object p1, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity$c;->a:Ljava/util/List;

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
    iget-object v0, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity$c;->a:Ljava/util/List;

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
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity$c;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    .line 2
    instance-of v0, p2, Lcom/join/mgps/dto/RecomDatabean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

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

    move-result-object v9

    .line 6
    invoke-static {v9}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f0c02c9

    invoke-virtual {v5, v6, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v5, 0x7f090092

    .line 7
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object v11, v5

    check-cast v11, Lcom/facebook/drawee/view/SimpleDraweeView;

    const v5, 0x7f0903ad

    .line 8
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object v12, v5

    check-cast v12, Landroid/widget/TextView;

    .line 9
    iget-object v5, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity$c;->b:Lcom/join/mgps/activity/HomePopupAdQWActivity;

    const v6, 0x7f090288

    invoke-virtual {v5, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    new-instance v6, Lcom/join/mgps/activity/HomePopupAdQWActivity$c$a;

    invoke-direct {v6, p0}, Lcom/join/mgps/activity/HomePopupAdQWActivity$c$a;-><init>(Lcom/join/mgps/activity/HomePopupAdQWActivity$c;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    invoke-virtual {v11}, Lcom/facebook/drawee/view/DraweeView;->getHierarchy()Lk0/b;

    move-result-object v5

    check-cast v5, Lcom/facebook/drawee/generic/a;

    const v6, 0x7f0807b1

    invoke-virtual {v5, v6}, Lcom/facebook/drawee/generic/a;->H(I)V

    .line 11
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/Fresco;->newDraweeControllerBuilder()Lcom/facebook/drawee/backends/pipeline/e;

    move-result-object v5

    .line 12
    iget-object v6, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity$c;->b:Lcom/join/mgps/activity/HomePopupAdQWActivity;

    invoke-virtual {v6, v0}, Lcom/join/mgps/activity/HomePopupAdQWActivity;->k(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 13
    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity$c;->b:Lcom/join/mgps/activity/HomePopupAdQWActivity;

    invoke-static {v7}, Lcom/join/mgps/Util/u;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object v7

    invoke-static {v0}, Lcom/join/mgps/Util/g0;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v7, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 14
    invoke-static {v6}, Lcom/join/mgps/Util/k0;->j(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 15
    :cond_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 16
    :goto_0
    invoke-virtual {v5, v0}, Lcom/facebook/drawee/backends/pipeline/e;->c0(Landroid/net/Uri;)Lcom/facebook/drawee/backends/pipeline/e;

    .line 17
    invoke-virtual {v11}, Lcom/facebook/drawee/view/DraweeView;->getController()Lk0/a;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->O(Lk0/a;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    .line 18
    new-instance v0, Lcom/join/mgps/activity/HomePopupAdQWActivity$c$b;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/HomePopupAdQWActivity$c$b;-><init>(Lcom/join/mgps/activity/HomePopupAdQWActivity$c;)V

    invoke-virtual {v5, v0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->H(Lcom/facebook/drawee/controller/c;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    .line 19
    invoke-virtual {v5}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->d()Lcom/facebook/drawee/controller/a;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/facebook/drawee/view/DraweeView;->setController(Lk0/a;)V

    .line 20
    invoke-virtual {v11, v2}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 21
    :try_start_0
    invoke-virtual {p1, v1, v3, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 22
    invoke-virtual {p2}, Lcom/join/mgps/dto/RecomDatabean;->getSub()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v10, p1

    check-cast v10, Lcom/join/mgps/dto/AppBeanMain;

    .line 23
    invoke-virtual {v10}, Lcom/join/mgps/dto/AppBeanMain;->getLink_type_val()Ljava/lang/String;

    move-result-object p1

    .line 24
    invoke-virtual {v10}, Lcom/join/mgps/dto/AppBeanMain;->getLink_type()I

    move-result v0

    const/16 v3, 0x11

    if-ne v0, v3, :cond_1

    .line 25
    invoke-virtual {v10, v2}, Lcom/join/mgps/dto/AppBeanMain;->setLink_type(I)V

    .line 26
    new-instance v0, Lcom/join/mgps/activity/HomePopupAdQWActivity$c$c;

    move-object v5, v0

    move-object v6, p0

    move-object v7, p1

    move-object v8, p2

    invoke-direct/range {v5 .. v10}, Lcom/join/mgps/activity/HomePopupAdQWActivity$c$c;-><init>(Lcom/join/mgps/activity/HomePopupAdQWActivity$c;Ljava/lang/String;Lcom/join/mgps/dto/RecomDatabean;Landroid/content/Context;Lcom/join/mgps/dto/AppBeanMain;)V

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    :cond_1
    new-instance v0, Lcom/join/mgps/activity/HomePopupAdQWActivity$c$d;

    invoke-direct {v0, p0, p1, p2}, Lcom/join/mgps/activity/HomePopupAdQWActivity$c$d;-><init>(Lcom/join/mgps/activity/HomePopupAdQWActivity$c;Ljava/lang/String;Lcom/join/mgps/dto/RecomDatabean;)V

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
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
    iget-object v1, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity$c;->b:Lcom/join/mgps/activity/HomePopupAdQWActivity;

    const v5, 0x7f0912c9

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/webkit/WebView;

    invoke-static {v1, v5}, Lcom/join/mgps/activity/HomePopupAdQWActivity;->b(Lcom/join/mgps/activity/HomePopupAdQWActivity;Landroid/webkit/WebView;)Landroid/webkit/WebView;

    .line 33
    iget-object v1, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity$c;->b:Lcom/join/mgps/activity/HomePopupAdQWActivity;

    invoke-static {v1}, Lcom/join/mgps/activity/HomePopupAdQWActivity;->a(Lcom/join/mgps/activity/HomePopupAdQWActivity;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 34
    iget-object v1, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity$c;->b:Lcom/join/mgps/activity/HomePopupAdQWActivity;

    invoke-static {v1}, Lcom/join/mgps/activity/HomePopupAdQWActivity;->a(Lcom/join/mgps/activity/HomePopupAdQWActivity;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 35
    check-cast p2, Lcom/join/mgps/dto/EverdayLogin;

    .line 36
    iget-object v1, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity$c;->b:Lcom/join/mgps/activity/HomePopupAdQWActivity;

    invoke-static {v1}, Lcom/join/mgps/activity/HomePopupAdQWActivity;->a(Lcom/join/mgps/activity/HomePopupAdQWActivity;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 37
    iget-object v1, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity$c;->b:Lcom/join/mgps/activity/HomePopupAdQWActivity;

    invoke-static {v1}, Lcom/join/mgps/activity/HomePopupAdQWActivity;->a(Lcom/join/mgps/activity/HomePopupAdQWActivity;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {p2}, Lcom/join/mgps/dto/EverdayLogin;->getFilePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 38
    iget-object p2, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity$c;->b:Lcom/join/mgps/activity/HomePopupAdQWActivity;

    invoke-static {p2}, Lcom/join/mgps/activity/HomePopupAdQWActivity;->a(Lcom/join/mgps/activity/HomePopupAdQWActivity;)Landroid/webkit/WebView;

    move-result-object p2

    invoke-virtual {p2, v4}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 39
    iget-object p2, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity$c;->b:Lcom/join/mgps/activity/HomePopupAdQWActivity;

    invoke-static {p2}, Lcom/join/mgps/activity/HomePopupAdQWActivity;->a(Lcom/join/mgps/activity/HomePopupAdQWActivity;)Landroid/webkit/WebView;

    move-result-object p2

    invoke-virtual {p2, v4}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 40
    iget-object p2, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity$c;->b:Lcom/join/mgps/activity/HomePopupAdQWActivity;

    invoke-static {p2}, Lcom/join/mgps/activity/HomePopupAdQWActivity;->a(Lcom/join/mgps/activity/HomePopupAdQWActivity;)Landroid/webkit/WebView;

    move-result-object p2

    new-instance v1, Lcom/join/mgps/activity/HomePopupAdQWActivity$c$e;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/HomePopupAdQWActivity$c$e;-><init>(Lcom/join/mgps/activity/HomePopupAdQWActivity$c;)V

    invoke-virtual {p2, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 41
    iget-object p2, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity$c;->b:Lcom/join/mgps/activity/HomePopupAdQWActivity;

    invoke-static {p2}, Lcom/join/mgps/activity/HomePopupAdQWActivity;->a(Lcom/join/mgps/activity/HomePopupAdQWActivity;)Landroid/webkit/WebView;

    move-result-object p2

    new-instance v1, Lcom/join/mgps/activity/HomePopupAdQWActivity$c$f;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/HomePopupAdQWActivity$c$f;-><init>(Lcom/join/mgps/activity/HomePopupAdQWActivity$c;)V

    invoke-virtual {p2, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 42
    iget-object p2, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity$c;->b:Lcom/join/mgps/activity/HomePopupAdQWActivity;

    invoke-static {p2}, Lcom/join/mgps/activity/HomePopupAdQWActivity;->a(Lcom/join/mgps/activity/HomePopupAdQWActivity;)Landroid/webkit/WebView;

    move-result-object p2

    new-instance v1, Lcom/join/mgps/activity/HomePopupAdQWActivity$d;

    iget-object v2, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity$c;->b:Lcom/join/mgps/activity/HomePopupAdQWActivity;

    invoke-direct {v1, v2}, Lcom/join/mgps/activity/HomePopupAdQWActivity$d;-><init>(Lcom/join/mgps/activity/HomePopupAdQWActivity;)V

    const-string v2, "papa"

    invoke-virtual {p2, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-virtual {p1, v0, v3, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    return-object v0

    .line 44
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
