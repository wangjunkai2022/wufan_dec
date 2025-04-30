.class public Lcom/switfpass/pay/thread/f;
.super Ljava/lang/Object;


# static fields
.field public static final f:I = 0x0

.field public static final g:I = -0x1

.field public static final h:I = -0x2

.field public static final i:I = -0x3

.field public static final j:I = -0x4

.field public static final k:I = -0x5

.field public static final l:I = -0x6

.field public static final m:I = 0x1cc

.field public static final n:I = 0x1cd

.field public static final o:I = 0x1ce

.field public static final p:I = 0x1cc

.field public static q:Ljava/util/Map;


# instance fields
.field public a:Lorg/json/JSONObject;

.field public b:Lorg/json/JSONArray;

.field public c:I

.field private d:Ljava/lang/String;

.field public e:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/switfpass/pay/thread/f;->q:Ljava/util/Map;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u7f51\u7edc\u4e0d\u53ef\u7528"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/switfpass/pay/thread/f;->q:Ljava/util/Map;

    const/4 v1, -0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u53d1\u751f\u672a\u77e5\u9519\u8bef"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/switfpass/pay/thread/f;->q:Ljava/util/Map;

    const/4 v1, -0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u7f51\u7edc\u7e41\u5fd9\uff0c\u8bf7\u7a0d\u5019\u518d\u8bd5\uff01"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/switfpass/pay/thread/f;->q:Ljava/util/Map;

    const/4 v1, -0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u8bfb\u53d6\u6570\u636e\u8d85\u65f6"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/switfpass/pay/thread/f;->q:Ljava/util/Map;

    const/4 v1, -0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u7f51\u7edc\u8fde\u63a5\u9519\u8bef"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/switfpass/pay/thread/f;->q:Ljava/util/Map;

    const/4 v1, -0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u9a8c\u8bc1\u6570\u636e\u5931\u8d25"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/switfpass/pay/thread/f;->q:Ljava/util/Map;

    const/16 v1, 0x1cc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u7528\u6237\u540d\u5df2\u7ecf\u5b58\u5728"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/switfpass/pay/thread/f;->q:Ljava/util/Map;

    const/16 v2, 0x1cd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "\u63a8\u8350\u4eba\u4e0d\u5b58\u5728"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/switfpass/pay/thread/f;->q:Ljava/util/Map;

    const/16 v2, 0x1ce

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "\u63a8\u8350\u4eba\u4e0d\u80fd\u63a8\u8350\u4e86"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/switfpass/pay/thread/f;->q:Ljava/util/Map;

    const-string v2, "\u5e94\u7528\u4e0d\u5b58\u5728"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/switfpass/pay/thread/f;->c:I

    return-void
.end method

.method public static a(I)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/switfpass/pay/thread/f;->q:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static d(I)Z
    .locals 0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/switfpass/pay/thread/f;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/switfpass/pay/thread/f;->d:Ljava/lang/String;

    return-object v0

    :cond_0
    sget-object v0, Lcom/switfpass/pay/thread/f;->q:Ljava/util/Map;

    iget v1, p0, Lcom/switfpass/pay/thread/f;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public c()Z
    .locals 1

    iget v0, p0, Lcom/switfpass/pay/thread/f;->c:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/switfpass/pay/thread/f;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public e()Z
    .locals 1

    iget v0, p0, Lcom/switfpass/pay/thread/f;->c:I

    if-gez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/switfpass/pay/thread/f;->d:Ljava/lang/String;

    return-void
.end method
