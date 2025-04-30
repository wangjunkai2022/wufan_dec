.class public Lcom/switfpass/pay/activity/WebViewEx;
.super Landroid/webkit/WebView;


# static fields
.field private static final c:[Ljava/lang/String;


# instance fields
.field private a:Ljava/util/HashMap;

.field private b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-string v0, "getClass"

    const-string v1, "hashCode"

    const-string v2, "notify"

    const-string v3, "notifyAll"

    const-string v4, "equals"

    const-string v5, "toString"

    const-string v6, "wait"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/switfpass/pay/activity/WebViewEx;->c:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/switfpass/pay/activity/WebViewEx;->a:Ljava/util/HashMap;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/switfpass/pay/activity/WebViewEx;->b:Ljava/lang/String;

    invoke-direct {p0}, Lcom/switfpass/pay/activity/WebViewEx;->g()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/switfpass/pay/activity/WebViewEx;->a:Ljava/util/HashMap;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/switfpass/pay/activity/WebViewEx;->b:Ljava/lang/String;

    invoke-direct {p0}, Lcom/switfpass/pay/activity/WebViewEx;->g()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/switfpass/pay/activity/WebViewEx;->a:Ljava/util/HashMap;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/switfpass/pay/activity/WebViewEx;->b:Ljava/lang/String;

    invoke-direct {p0}, Lcom/switfpass/pay/activity/WebViewEx;->g()V

    return-void
.end method

.method static synthetic a(Lcom/switfpass/pay/activity/WebViewEx;Landroid/webkit/WebView;)V
    .locals 0

    instance-of p1, p1, Lcom/switfpass/pay/activity/WebViewEx;

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/switfpass/pay/activity/WebViewEx;->h()V

    :cond_0
    return-void
.end method

.method private static b(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/StringBuilder;)V
    .locals 10

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    if-eqz p1, :cond_8

    if-nez p2, :cond_0

    goto/16 :goto_6

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-string v0, "if(typeof(window."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")!=\'undefined\'){"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "    console.log(\'window."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_js_interface_name is exist!!\');"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}else {"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "    window."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "={"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v0, :cond_1

    const-string p0, "    };"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :cond_1
    aget-object v3, p1, v2

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/switfpass/pay/activity/WebViewEx;->e(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7

    const-string v5, "        "

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":function("

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    array-length v5, v5

    const-string v6, ","

    const-string v7, "arg"

    if-lez v5, :cond_3

    add-int/lit8 v8, v5, -0x1

    const/4 v9, 0x0

    :goto_1
    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-lt v9, v8, :cond_2

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    invoke-virtual {p2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    const-string v8, ") {"

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v3

    sget-object v8, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq v3, v8, :cond_4

    const-string v3, "            return prompt(\'MyApp:\'+"

    goto :goto_3

    :cond_4
    const-string v3, "            prompt(\'MyApp:\'+"

    :goto_3
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "JSON.stringify({"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "obj:\'"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\',"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "func:\'"

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "args:["

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-lez v5, :cond_6

    add-int/lit8 v5, v5, -0x1

    const/4 v3, 0x0

    :goto_4
    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-lt v3, v5, :cond_5

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_5
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_6
    :goto_5
    const-string v3, "]})"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ");"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "        }, "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_8
    :goto_6
    return-void
.end method

.method private c(Landroid/webkit/JsPromptResult;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Z
    .locals 6

    iget-object v0, p0, Lcom/switfpass/pay/activity/WebViewEx;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    invoke-virtual {p1}, Landroid/webkit/JsPromptResult;->cancel()V

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p4, :cond_1

    array-length v2, p4

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-lez v2, :cond_5

    new-array v3, v2, [Ljava/lang/Class;

    const/4 v1, 0x0

    :goto_1
    if-lt v1, v2, :cond_2

    move-object v1, v3

    goto :goto_3

    :cond_2
    aget-object v4, p4, v1

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Ljava/lang/Integer;

    if-ne v4, v5, :cond_3

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    goto :goto_2

    :cond_3
    const-class v5, Ljava/lang/Boolean;

    if-ne v4, v5, :cond_4

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    goto :goto_2

    :cond_4
    const-class v4, Ljava/lang/String;

    :goto_2
    aput-object v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    :goto_3
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3, p3, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p3

    invoke-virtual {p3, p2, p4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    sget-object p4, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq p3, p4, :cond_6

    const/4 p3, 0x0

    goto :goto_4

    :cond_6
    const/4 p3, 0x1

    :goto_4
    if-eqz p3, :cond_7

    const-string p2, ""

    goto :goto_5

    :cond_7
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_5
    invoke-virtual {p1, p2}, Landroid/webkit/JsPromptResult;->confirm(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_6

    :catch_0
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    :catch_1
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    :goto_6
    invoke-virtual {p1}, Landroid/webkit/JsPromptResult;->cancel()V

    return v0
.end method

.method static synthetic d(Lcom/switfpass/pay/activity/WebViewEx;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/switfpass/pay/activity/WebViewEx;->f(Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z

    move-result p0

    return p0
.end method

.method private static e(Ljava/lang/String;)Z
    .locals 5

    sget-object v0, Lcom/switfpass/pay/activity/WebViewEx;->c:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v1, :cond_0

    return v2

    :cond_0
    aget-object v4, v0, v3

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private f(Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .locals 7

    const-string v0, "MyApp:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "obj"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "func"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "args"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_2

    new-array v3, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    :goto_0
    if-lt v5, v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    invoke-direct {p0, p2, p1, v2, v3}, Lcom/switfpass/pay/activity/WebViewEx;->c(Landroid/webkit/JsPromptResult;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    invoke-virtual {p2}, Landroid/webkit/JsPromptResult;->cancel()V

    return v1
.end method

.method private g()V
    .locals 3

    new-instance v0, Lcom/switfpass/pay/activity/x;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/switfpass/pay/activity/x;-><init>(Lcom/switfpass/pay/activity/WebViewEx;B)V

    invoke-super {p0, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    new-instance v0, Lcom/switfpass/pay/activity/y;

    invoke-direct {v0, p0, v1}, Lcom/switfpass/pay/activity/y;-><init>(Lcom/switfpass/pay/activity/WebViewEx;B)V

    invoke-super {p0, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    if-eqz v1, :cond_1

    invoke-static {}, Lcom/switfpass/pay/activity/WebViewEx;->k()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "searchBoxJavaBridge_"

    invoke-super {p0, v0}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    const-string v0, "accessibility"

    invoke-super {p0, v0}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    const-string v0, "accessibilityTraversal"

    invoke-super {p0, v0}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private h()V
    .locals 1

    iget-object v0, p0, Lcom/switfpass/pay/activity/WebViewEx;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/switfpass/pay/activity/WebViewEx;->i()V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/switfpass/pay/activity/WebViewEx;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/switfpass/pay/activity/WebViewEx;->b:Ljava/lang/String;

    invoke-direct {p0}, Lcom/switfpass/pay/activity/WebViewEx;->i()V

    return-void
.end method

.method private i()V
    .locals 1

    iget-object v0, p0, Lcom/switfpass/pay/activity/WebViewEx;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method private j()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/switfpass/pay/activity/WebViewEx;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/switfpass/pay/activity/WebViewEx;->b:Ljava/lang/String;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/switfpass/pay/activity/WebViewEx;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:(function JsAddJavascriptInterface_(){"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    :try_start_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v2, v1}, Lcom/switfpass/pay/activity/WebViewEx;->b(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/StringBuilder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    const-string v0, "})()"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static k()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/switfpass/pay/activity/WebViewEx;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/switfpass/pay/activity/WebViewEx;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public removeJavascriptInterface(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/switfpass/pay/activity/WebViewEx;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/switfpass/pay/activity/WebViewEx;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/switfpass/pay/activity/WebViewEx;->b:Ljava/lang/String;

    invoke-direct {p0}, Lcom/switfpass/pay/activity/WebViewEx;->h()V

    return-void
.end method
