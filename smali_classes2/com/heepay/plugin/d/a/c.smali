.class public Lcom/heepay/plugin/d/a/c;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lcom/google/gson/Gson;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iput-object p1, p0, Lcom/heepay/plugin/d/a/c;->b:Ljava/lang/String;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/heepay/plugin/d/a/c;->a:Ljava/util/HashMap;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "javascript:(function(b){console.log(\""

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/heepay/plugin/d/a/c;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " initialization begin\");var a={queue:[],callback:function(){var d=Array.prototype.slice.call(arguments,0);var c=d.shift();var e=d.shift();this.queue[c].apply(this,d);if(!e){delete this.queue[c]}}};"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object p2

    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p2, v2

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v4

    const/16 v5, 0x9

    if-ne v4, v5, :cond_1

    invoke-direct {p0, v3}, Lcom/heepay/plugin/d/a/c;->a(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    const-string v5, "---->methodName"

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/heepay/plugin/c/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/heepay/plugin/d/a/c;->a:Ljava/util/HashMap;

    invoke-virtual {v5, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "a.%s="

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "---->builder"

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/heepay/plugin/c/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const-string p2, "function(){var f=Array.prototype.slice.call(arguments,0);if(f.length<1){throw\""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/heepay/plugin/d/a/c;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " call error, message:miss method name\"}var e=[];for(var h=1;h<f.length;h++){var c=f[h];var j=typeof c;e[e.length]=j;if(j==\"function\"){var d=a.queue.length;a.queue[d]=c;f[h]=d}}var g=JSON.parse(prompt(JSON.stringify({method:f.shift(),types:e,args:f})));if(g.code!=200){throw\""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/heepay/plugin/d/a/c;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " call error, code:\"+g.code+\", message:\"+g.result}return g.result};Object.getOwnPropertyNames(a).forEach(function(d){var c=a[d];if(typeof c===\"function\"&&d!==\"callback\"){a[d]=function(){return c.apply(a,[d].concat(Array.prototype.slice.call(arguments,0)))}}});b."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/heepay/plugin/d/a/c;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "=a;console.log(\""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/heepay/plugin/d/a/c;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " initialization end\")})(window);"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/heepay/plugin/d/a/c;->c:Ljava/lang/String;

    const-string p2, "---->3"

    invoke-static {p2, p1}, Lcom/heepay/plugin/c/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    new-instance p1, Lcom/heepay/plugin/d/a/d;

    const-string p2, "injected name can not be null"

    invoke-direct {p1, p2}, Lcom/heepay/plugin/d/a/d;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Lcom/heepay/plugin/d/a/d; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "js initialization error:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "---->"

    invoke-static {p2, p1}, Lcom/heepay/plugin/c/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method private a(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;
    .locals 3

    if-nez p3, :cond_0

    const-string p3, "null"

    goto :goto_1

    :cond_0
    instance-of v0, p3, Ljava/lang/String;

    const-string v1, "------"

    if-eqz v0, :cond_1

    check-cast p3, Ljava/lang/String;

    const-string v0, "\""

    const-string v2, "\\\""

    invoke-virtual {p3, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "---->\u662f\u5426\u6709\u8fdb\u5165String"

    :goto_0
    invoke-static {v0, v1}, Lcom/heepay/plugin/c/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    instance-of v0, p3, Ljava/lang/Integer;

    if-nez v0, :cond_3

    instance-of v0, p3, Ljava/lang/Long;

    if-nez v0, :cond_3

    instance-of v0, p3, Ljava/lang/Boolean;

    if-nez v0, :cond_3

    instance-of v0, p3, Ljava/lang/Float;

    if-nez v0, :cond_3

    instance-of v0, p3, Ljava/lang/Double;

    if-nez v0, :cond_3

    instance-of v0, p3, Lorg/json/JSONObject;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/heepay/plugin/d/a/c;->d:Lcom/google/gson/Gson;

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lcom/heepay/plugin/d/a/c;->d:Lcom/google/gson/Gson;

    :cond_2
    iget-object v0, p0, Lcom/heepay/plugin/d/a/c;->d:Lcom/google/gson/Gson;

    invoke-virtual {v0, p3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const-string v0, "---->\u662f\u5426\u6709\u8fdb\u5165mGson"

    goto :goto_0

    :cond_3
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    :goto_1
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p3, v0, p2

    const-string/jumbo p2, "{\"code\": %d, \"result\": %s}"

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/heepay/plugin/d/a/c;->b:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " call json: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " result:"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "---->"

    invoke-static {p3, p1}, Lcom/heepay/plugin/c/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2
.end method

.method private a(Ljava/lang/reflect/Method;)Ljava/lang/String;
    .locals 5

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_8

    const/4 v3, 0x0

    aget-object v3, p1, v3

    const-class v4, Landroid/webkit/WebView;

    if-eq v3, v4, :cond_0

    goto/16 :goto_4

    :cond_0
    :goto_0
    if-ge v2, v1, :cond_7

    aget-object v3, p1, v2

    const-class v4, Ljava/lang/String;

    if-ne v3, v4, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_S"

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_1
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v3, v4, :cond_6

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v3, v4, :cond_6

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq v3, v4, :cond_6

    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v3, v4, :cond_2

    goto :goto_2

    :cond_2
    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v3, v4, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_B"

    goto :goto_1

    :cond_3
    const-class v4, Lorg/json/JSONObject;

    if-ne v3, v4, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_O"

    goto :goto_1

    :cond_4
    const-class v4, Lcom/heepay/plugin/d/a/e;

    if-ne v3, v4, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_F"

    goto :goto_1

    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_P"

    goto :goto_1

    :cond_6
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_N"

    goto :goto_1

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_7
    return-object v0

    :cond_8
    :goto_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "method("

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") must use webview to be first parameter, will be pass"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "---->"

    invoke-static {v0, p1}, Lcom/heepay/plugin/c/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/heepay/plugin/d/a/c;->c:Ljava/lang/String;

    return-object v0
.end method

.method public a(Landroid/webkit/WebView;Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0x1f4

    if-nez v0, :cond_d

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "method"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "types"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    const-string v4, "args"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    add-int/lit8 v5, v4, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v7, 0x0

    :goto_0
    const/4 v8, 0x0

    if-ge v6, v4, :cond_7

    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "string"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_S"

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v9, v6, 0x1

    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v10

    if-eqz v10, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    :goto_1
    aput-object v8, v5, v9

    goto/16 :goto_3

    :cond_1
    const-string v10, "number"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_N"

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v7, v7, 0xa

    add-int/2addr v7, v6

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_3

    :cond_2
    const-string v10, "boolean"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_B"

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v8, v6, 0x1

    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v5, v8

    goto :goto_3

    :cond_3
    const-string v10, "object"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_O"

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v9, v6, 0x1

    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v10

    if-eqz v10, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    :goto_2
    aput-object v8, v5, v9

    goto :goto_3

    :cond_5
    const-string v8, "function"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_F"

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v8, v6, 0x1

    new-instance v9, Lcom/heepay/plugin/d/a/e;

    iget-object v10, p0, Lcom/heepay/plugin/d/a/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->getInt(I)I

    move-result v11

    invoke-direct {v9, p1, v10, v11}, Lcom/heepay/plugin/d/a/e;-><init>(Landroid/webkit/WebView;Ljava/lang/String;I)V

    aput-object v9, v5, v8

    goto :goto_3

    :cond_6
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_P"

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_7
    iget-object p1, p0, Lcom/heepay/plugin/d/a/c;->a:Ljava/util/HashMap;

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/reflect/Method;

    if-nez p1, :cond_8

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "not found method("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") with valid parameters"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, v1, p1}, Lcom/heepay/plugin/d/a/c;->a(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_8
    if-lez v7, :cond_b

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    :goto_4
    if-lez v7, :cond_b

    div-int/lit8 v3, v7, 0xa

    mul-int/lit8 v3, v3, 0xa

    sub-int v3, v7, v3

    aget-object v4, v2, v3

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v4, v6, :cond_9

    add-int/lit8 v4, v3, -0x1

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v3

    goto :goto_5

    :cond_9
    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v4, v6, :cond_a

    add-int/lit8 v4, v3, -0x1

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v5, v3

    goto :goto_5

    :cond_a
    add-int/lit8 v4, v3, -0x1

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v5, v3

    :goto_5
    div-int/lit8 v7, v7, 0xa

    goto :goto_4

    :cond_b
    const/16 v0, 0xc8

    invoke-virtual {p1, v8, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p2, v0, p1}, Lcom/heepay/plugin/d/a/c;->a(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_6

    :catch_1
    move-exception p1

    goto :goto_6

    :catch_2
    move-exception p1

    :goto_6
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    const-string v2, "method execute error:"

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    :goto_7
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_8
    invoke-direct {p0, p2, v1, p1}, Lcom/heepay/plugin/d/a/c;->a(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_7

    :cond_d
    const-string p1, "call data empty"

    goto :goto_8
.end method
