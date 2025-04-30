.class public final Lcom/alipay/sdk/util/j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SetJavaScriptEnabled",
        "DefaultLocale"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/sdk/util/j$a;
    }
.end annotation


# static fields
.field static final a:Ljava/lang/String; = "com.alipay.android.app"

.field public static final b:Ljava/lang/String; = "com.eg.android.AlipayGphone"

.field private static final c:Ljava/lang/String; = "7.0.0"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "\\."

    .line 3
    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4
    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    .line 6
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    const-string v2, "0"

    if-ge p1, p0, :cond_0

    .line 7
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-ge p1, p0, :cond_1

    .line 9
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    const/4 v2, 0x0

    :goto_2
    if-ge v2, p0, :cond_3

    .line 10
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-eq v3, v4, :cond_2

    .line 11
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    sub-int/2addr p0, p1

    return p0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    return p1
.end method

.method public static b(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Landroid/webkit/WebView;
    .locals 8

    const-string v0, "accessibilityTraversal"

    const-string v1, "accessibility"

    const-string v2, "searchBoxJavaBridge_"

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    move-result-object v3

    .line 3
    invoke-virtual {v3}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 4
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v3

    .line 5
    invoke-virtual {v3, p1, p2}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object p2

    invoke-virtual {p2}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 7
    :cond_0
    new-instance p2, Landroid/widget/LinearLayout;

    invoke-direct {p2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 8
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v4, 0x1

    .line 9
    invoke-virtual {p2, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 10
    invoke-virtual {p0, p2, v3}, Landroid/app/Activity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 11
    new-instance v5, Landroid/webkit/WebView;

    invoke-direct {v5, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    const/high16 v6, 0x3f800000    # 1.0f

    .line 12
    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/4 v6, 0x0

    .line 13
    invoke-virtual {v5, v6}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 14
    invoke-virtual {p2, v5, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 15
    invoke-virtual {v5}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p2

    .line 16
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/alipay/sdk/util/j;->o(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 17
    sget-object v3, Landroid/webkit/WebSettings$RenderPriority;->HIGH:Landroid/webkit/WebSettings$RenderPriority;

    invoke-virtual {p2, v3}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V

    .line 18
    invoke-virtual {p2, v4}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 19
    invoke-virtual {p2, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 20
    invoke-virtual {p2, v6}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 21
    invoke-virtual {p2, v4}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 22
    invoke-virtual {p2}, Landroid/webkit/WebSettings;->getMinimumFontSize()I

    move-result v3

    add-int/lit8 v3, v3, 0x8

    invoke-virtual {p2, v3}, Landroid/webkit/WebSettings;->setMinimumFontSize(I)V

    .line 23
    invoke-virtual {p2, v6}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 24
    sget-object v3, Landroid/webkit/WebSettings$TextSize;->NORMAL:Landroid/webkit/WebSettings$TextSize;

    invoke-virtual {p2, v3}, Landroid/webkit/WebSettings;->setTextSize(Landroid/webkit/WebSettings$TextSize;)V

    .line 25
    invoke-virtual {v5, v4}, Landroid/webkit/WebView;->setVerticalScrollbarOverlay(Z)V

    .line 26
    new-instance p2, Lcom/alipay/sdk/util/k;

    invoke-direct {p2, p0}, Lcom/alipay/sdk/util/k;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v5, p2}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 27
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 p2, 0x7

    if-lt p0, p2, :cond_1

    .line 28
    :try_start_0
    invoke-virtual {v5}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-string p2, "setDomStorageEnabled"

    new-array v3, v4, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v3, v6

    invoke-virtual {p0, p2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 29
    invoke-virtual {v5}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p2

    new-array v3, v4, [Ljava/lang/Object;

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v7, v3, v6

    invoke-virtual {p0, p2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    :catch_0
    :cond_1
    :try_start_1
    invoke-virtual {v5, v2}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 31
    invoke-virtual {v5, v1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 32
    invoke-virtual {v5, v0}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 33
    :catchall_0
    :try_start_2
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-string p2, "removeJavascriptInterface"

    new-array v3, v6, [Ljava/lang/Class;

    .line 34
    invoke-virtual {p0, p2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    if-eqz p0, :cond_2

    new-array p2, v4, [Ljava/lang/Object;

    aput-object v2, p2, v6

    .line 35
    invoke-virtual {p0, v5, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    new-array p2, v4, [Ljava/lang/Object;

    aput-object v1, p2, v6

    .line 36
    invoke-virtual {p0, v5, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    new-array p2, v4, [Ljava/lang/Object;

    aput-object v0, p2, v6

    .line 37
    invoke-virtual {p0, v5, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    nop

    .line 38
    :cond_2
    :goto_0
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x13

    if-lt p0, p2, :cond_3

    .line 39
    invoke-virtual {v5}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p0

    invoke-virtual {p0, v4}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 40
    :cond_3
    invoke-virtual {v5, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-object v5
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/sdk/util/j$a;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v0, 0x40

    .line 2
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object p0

    .line 3
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 4
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 6
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 7
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8
    new-instance p0, Lcom/alipay/sdk/util/j$a;

    invoke-direct {p0}, Lcom/alipay/sdk/util/j$a;-><init>()V

    .line 9
    iget-object p1, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    invoke-virtual {p1}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p1

    iput-object p1, p0, Lcom/alipay/sdk/util/j$a;->a:[B

    .line 10
    iget p1, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    iput p1, p0, Lcom/alipay/sdk/util/j$a;->b:I

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static d()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Android "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    .line 1
    :try_start_0
    invoke-virtual {p2, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    .line 2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-gt v1, p0, :cond_0

    return-object v0

    :cond_0
    const/4 p0, 0x0

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 4
    invoke-virtual {p2, p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result p0

    :cond_1
    if-gtz p0, :cond_2

    .line 5
    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 6
    :cond_2
    invoke-virtual {p2, v1, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    return-object v0
.end method

.method public static f([B)Ljava/lang/String;
    .locals 3

    const-string v0, "modulus"

    :try_start_0
    const-string v1, "X.509"

    .line 1
    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    .line 2
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 3
    invoke-virtual {v1, v2}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object p0

    check-cast p0, Ljava/security/cert/X509Certificate;

    .line 4
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 5
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 6
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static g(Ljava/lang/String;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "&"

    .line 2
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 3
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, p0, v3

    const-string v5, "="

    const/4 v6, 0x1

    .line 4
    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v5

    .line 5
    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    add-int/2addr v5, v6

    .line 6
    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 7
    invoke-static {v4}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static h(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v1, "com.alipay.android.app"

    const/16 v2, 0x80

    .line 2
    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x1

    return p0

    :catch_0
    return v0
.end method

.method private static i(Landroid/content/pm/PackageInfo;)Z
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, p0, 0x1

    if-nez v0, :cond_0

    and-int/lit16 p0, p0, 0x80

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static j(Landroid/webkit/WebView;Ljava/lang/String;Landroid/app/Activity;)Z
    .locals 9

    const-string v0, "\"&"

    const-string v1, "&end_code="

    const-string v2, ""

    const-string v3, "&return_url="

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    return v5

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v6, "alipays://platformapi/startApp?"

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    const-string v7, "intent://platformapi/startapp?"

    if-nez v4, :cond_8

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_3

    :cond_1
    const-string v4, "sdklite://h5quit"

    .line 4
    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "http://m.alipay.com/?action=h5quit"

    .line 5
    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto/16 :goto_2

    :cond_2
    const-string v4, "sdklite://h5quit?result="

    .line 6
    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 7
    :try_start_0
    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    add-int/lit8 p0, p0, 0x18

    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 8
    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0xa

    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 9
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 10
    sget-object v6, Lcom/alipay/sdk/app/i;->a:Lcom/alipay/sdk/app/i;

    invoke-virtual {v6}, Lcom/alipay/sdk/app/i;->a()I

    move-result v6

    if-eq p0, v6, :cond_4

    sget-object v6, Lcom/alipay/sdk/app/i;->g:Lcom/alipay/sdk/app/i;

    .line 11
    invoke-virtual {v6}, Lcom/alipay/sdk/app/i;->a()I

    move-result v6

    if-ne p0, v6, :cond_3

    goto :goto_0

    .line 12
    :cond_3
    sget-object p0, Lcom/alipay/sdk/app/i;->b:Lcom/alipay/sdk/app/i;

    .line 13
    invoke-virtual {p0}, Lcom/alipay/sdk/app/i;->a()I

    move-result p0

    invoke-static {p0}, Lcom/alipay/sdk/app/i;->a(I)Lcom/alipay/sdk/app/i;

    move-result-object p0

    .line 14
    invoke-virtual {p0}, Lcom/alipay/sdk/app/i;->a()I

    move-result p1

    invoke-virtual {p0}, Lcom/alipay/sdk/app/i;->b()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0, v2}, Lcom/alipay/sdk/app/h;->b(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 15
    sput-object p0, Lcom/alipay/sdk/app/h;->a:Ljava/lang/String;

    goto :goto_1

    .line 16
    :cond_4
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    invoke-static {p1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 18
    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x18

    .line 19
    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 20
    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 21
    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 22
    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    .line 23
    aget-object v1, v1, v4

    .line 24
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0xc

    .line 25
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 27
    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 29
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 31
    :cond_5
    invoke-static {p0}, Lcom/alipay/sdk/app/i;->a(I)Lcom/alipay/sdk/app/i;

    move-result-object p0

    .line 32
    invoke-virtual {p0}, Lcom/alipay/sdk/app/i;->a()I

    move-result v0

    .line 33
    invoke-virtual {p0}, Lcom/alipay/sdk/app/i;->b()Ljava/lang/String;

    move-result-object p0

    .line 34
    invoke-static {v0, p0, p1}, Lcom/alipay/sdk/app/h;->b(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/alipay/sdk/app/h;->a:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 35
    :catch_0
    sget-object p0, Lcom/alipay/sdk/app/i;->e:Lcom/alipay/sdk/app/i;

    invoke-virtual {p0}, Lcom/alipay/sdk/app/i;->a()I

    move-result p0

    invoke-static {p0}, Lcom/alipay/sdk/app/i;->a(I)Lcom/alipay/sdk/app/i;

    move-result-object p0

    invoke-virtual {p0}, Lcom/alipay/sdk/app/i;->a()I

    move-result p1

    invoke-virtual {p0}, Lcom/alipay/sdk/app/i;->b()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0, v2}, Lcom/alipay/sdk/app/h;->b(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/alipay/sdk/app/h;->a:Ljava/lang/String;

    .line 36
    :goto_1
    new-instance p0, Lcom/alipay/sdk/util/l;

    invoke-direct {p0, p2}, Lcom/alipay/sdk/util/l;-><init>(Landroid/app/Activity;)V

    .line 37
    invoke-virtual {p2, p0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return v5

    .line 38
    :cond_6
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return v5

    .line 39
    :cond_7
    :goto_2
    invoke-static {}, Lcom/alipay/sdk/app/h;->a()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/alipay/sdk/app/h;->a:Ljava/lang/String;

    .line 40
    invoke-virtual {p2}, Landroid/app/Activity;->finish()V

    return v5

    :cond_8
    :goto_3
    :try_start_1
    const-string p0, "com.eg.android.AlipayGphone"

    .line 41
    invoke-static {p2, p0}, Lcom/alipay/sdk/util/j;->c(Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/sdk/util/j$a;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 42
    iget-object p0, p0, Lcom/alipay/sdk/util/j$a;->a:[B

    invoke-static {p0}, Lcom/alipay/sdk/util/j;->f([B)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_9

    const-string v0, "b6cbad6cbd5ed0d209afc69ad3b7a617efaae9b3c47eabe0be42d924936fa78c8001b1fd74b079e5ff9690061dacfa4768e981a526b9ca77156ca36251cf2f906d105481374998a7e6e6e18f75ca98b8ed2eaf86ff402c874cca0a263053f22237858206867d210020daa38c48b20cc9dfd82b44a51aeb5db459b22794e2d649"

    .line 43
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string p1, "biz"

    const-string p2, "ClientSignError"

    .line 44
    invoke-static {p1, p2, p0}, Lcom/alipay/sdk/app/statistic/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v5

    :cond_9
    const-string p0, "intent://platformapi/startapp"

    .line 45
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_a

    .line 46
    invoke-virtual {p1, v7, v6}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 47
    :cond_a
    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 48
    invoke-virtual {p2, p0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    :catchall_0
    :cond_b
    return v5
.end method

.method public static k()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {}, Lcom/alipay/sdk/util/j;->p()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 3
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string v1, "\n"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v3, :cond_1

    .line 5
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 6
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Linux "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static l(Landroid/content/Context;)Z
    .locals 6

    const-string v0, "\\."

    const/4 v1, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v2, "com.eg.android.AlipayGphone"

    const/16 v3, 0x80

    .line 2
    invoke-virtual {p0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-nez p0, :cond_0

    return v1

    .line 3
    :cond_0
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const-string v2, "7.0.0"

    .line 4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v3, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v4, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "0"

    if-ge v0, p0, :cond_1

    :try_start_1
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, p0, :cond_2

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_2
    if-ge v0, p0, :cond_4

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-eq v2, v5, :cond_3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    sub-int/2addr p0, v0

    goto :goto_3

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    const/4 p0, 0x0

    :goto_3
    if-gez p0, :cond_5

    return v1

    :cond_5
    const/4 p0, 0x1

    return p0

    :catch_0
    return v1
.end method

.method public static m(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "^http(s)?://([a-z0-9_\\-]+\\.)*(alipay|taobao)\\.(com|net)(:\\d+)?(/.*)?$"

    .line 1
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0
.end method

.method public static n()Ljava/lang/String;
    .locals 8

    .line 1
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x18

    if-ge v2, v3, :cond_3

    const/4 v3, 0x3

    .line 3
    invoke-virtual {v0, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    const-wide/high16 v4, 0x4039000000000000L    # 25.0

    if-eqz v3, :cond_2

    const/4 v6, 0x1

    if-eq v3, v6, :cond_1

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 5
    :cond_1
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    mul-double v6, v6, v4

    const-wide v3, 0x4058400000000000L    # 97.0

    add-double/2addr v6, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    long-to-int v4, v3

    int-to-char v3, v4

    .line 6
    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 7
    :cond_2
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    mul-double v6, v6, v4

    const-wide v3, 0x4050400000000000L    # 65.0

    add-double/2addr v6, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    long-to-int v4, v3

    int-to-char v3, v4

    .line 8
    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 9
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static o(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    .line 1
    invoke-static {}, Lcom/alipay/sdk/util/j;->d()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/alipay/sdk/util/j;->k()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {p0}, Lcom/alipay/sdk/util/j;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-static {p0}, Lcom/alipay/sdk/util/j;->s(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 5
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " ("

    .line 6
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ";"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ";;"

    .line 7
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")(sdk android)"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static p()Ljava/lang/String;
    .locals 6

    const-string v0, "\n"

    const-string v1, "Unavailable"

    .line 1
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    const-string v4, "/proc/version"

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x100

    invoke-direct {v2, v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    const-string v2, "\\w+\\s+\\w+\\s+([^\\s]+)\\s+\\(([^\\s@]+(?:@[^\\s.]+)?)[^)]*\\)\\s+\\((?:[^(]*\\([^)]*\\))?[^)]*\\)\\s+([^\\s]+)\\s+(?:PREEMPT\\s+)?(.+)"

    .line 4
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 5
    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 6
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-nez v3, :cond_0

    return-object v1

    .line 7
    :cond_0
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v3

    const/4 v4, 0x4

    if-ge v3, v4, :cond_1

    return-object v1

    .line 8
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x3

    .line 9
    invoke-virtual {v2, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v0

    .line 10
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return-object v1
.end method

.method public static q(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    .line 3
    iget-object p0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 4
    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static r()Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lcom/alipay/sdk/cons/a;->a:Ljava/lang/String;

    const-string v1, "://"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static s(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    const-string/jumbo v1, "window"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "*"

    .line 4
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static t()Ljava/lang/String;
    .locals 1

    const-string v0, "-1;-1"

    return-object v0
.end method

.method public static u(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    const-string v0, "com.eg.android.AlipayGphone:"

    const-string v1, ""

    :try_start_0
    const-string v2, "activity"

    .line 1
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 2
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p0

    .line 3
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move-object v2, v1

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 4
    iget-object v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string v5, "com.eg.android.AlipayGphone"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "#M"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 6
    :cond_1
    iget-object v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "#"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 8
    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_2
    move-object v1, v2

    goto :goto_1

    :catchall_0
    nop

    .line 9
    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_3

    const/4 p0, 0x1

    .line 10
    invoke-virtual {v1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 11
    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_4

    const-string v1, "N"

    :cond_4
    return-object v1
.end method

.method private static v(Landroid/content/Context;)Landroid/util/DisplayMetrics;
    .locals 2

    .line 1
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    const-string/jumbo v1, "window"

    .line 2
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 3
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    .line 4
    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    return-object v0
.end method

.method private static w(Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object p0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    .line 4
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 5
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 6
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v4, 0x1

    if-nez v5, :cond_0

    and-int/lit16 v4, v4, 0x80

    if-nez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_2

    .line 7
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v5, "com.eg.android.AlipayGphone"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "-"

    if-eqz v4, :cond_1

    .line 8
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 9
    :cond_1
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v6, "theme"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v6, "com.google."

    .line 10
    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v6, "com.android."

    .line 11
    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 12
    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 13
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
