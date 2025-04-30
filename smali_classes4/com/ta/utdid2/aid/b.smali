.class public Lcom/ta/utdid2/aid/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ta/utdid2/aid/b$a;
    }
.end annotation


# static fields
.field private static final c:Ljava/lang/String; = "com.ta.utdid2.aid.b"

.field private static final d:Ljava/lang/String; = "http://hydra.alibaba.com/"

.field private static final e:Ljava/lang/String; = "/get_aid/"

.field private static final f:Ljava/lang/String; = "auth[token]="

.field private static final g:Ljava/lang/String; = "&type="

.field private static final h:Ljava/lang/String; = "&id="

.field private static final i:Ljava/lang/String; = "&aid="

.field private static final j:Ljava/lang/String; = "data"

.field private static final k:Ljava/lang/String; = "aid"

.field private static final l:Ljava/lang/String; = "action"

.field private static final m:Ljava/lang/String; = "isError"

.field private static final n:Ljava/lang/String; = "status"

.field private static final o:Ljava/lang/String; = "utdid"

.field private static final p:Ljava/lang/String; = "new"

.field private static final q:Ljava/lang/String; = "changed"

.field private static final r:Ljava/lang/String; = "unchanged"

.field private static final s:Ljava/lang/String; = "true"

.field private static final t:Ljava/lang/String; = "false"

.field private static final u:Ljava/lang/String; = "200"

.field private static final v:Ljava/lang/String; = "404"

.field private static final w:Ljava/lang/String; = "401"

.field private static final x:I = 0x3e8

.field private static final y:I = 0xbb8

.field private static z:Lcom/ta/utdid2/aid/b;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ta/utdid2/aid/b;->b:Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lcom/ta/utdid2/aid/b;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/ta/utdid2/aid/b;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/ta/utdid2/aid/b;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ta/utdid2/aid/b;->b:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/ta/utdid2/aid/b;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic d(Lcom/ta/utdid2/aid/b;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ta/utdid2/aid/b;->a:Landroid/content/Context;

    return-object p0
.end method

.method private static e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string v0, "aid"

    const-string v1, "status"

    const-string v2, "action"

    const-string v3, "isError"

    const-string v4, "data"

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 2
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 4
    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 5
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 6
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "new"

    .line 7
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "changed"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 8
    :cond_0
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 10
    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 11
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    .line 12
    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, "404"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "401"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 13
    :cond_2
    sget-boolean p0, Lcom/ta/utdid2/android/utils/d;->b:Z

    if-eqz p0, :cond_3

    .line 14
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "remove the AID, status:"

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const-string p1, ""
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 15
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    goto :goto_0

    :catch_1
    move-exception p0

    .line 16
    invoke-virtual {p0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    :cond_4
    :goto_0
    return-object p1
.end method

.method public static declared-synchronized f(Landroid/content/Context;)Lcom/ta/utdid2/aid/b;
    .locals 2

    const-class v0, Lcom/ta/utdid2/aid/b;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/ta/utdid2/aid/b;->z:Lcom/ta/utdid2/aid/b;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/ta/utdid2/aid/b;

    invoke-direct {v1, p0}, Lcom/ta/utdid2/aid/b;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/ta/utdid2/aid/b;->z:Lcom/ta/utdid2/aid/b;

    .line 3
    :cond_0
    sget-object p0, Lcom/ta/utdid2/aid/b;->z:Lcom/ta/utdid2/aid/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_0
    const-string v1, "UTF-8"

    .line 2
    invoke-static {p2, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 3
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :goto_0
    const-string v1, "http://hydra.alibaba.com/"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/get_aid/?auth[token]="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&type=utdid&id="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&aid="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p1, p2, p3, p4}, Lcom/ta/utdid2/aid/b;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-object p2, p0, Lcom/ta/utdid2/aid/b;->a:Landroid/content/Context;

    invoke-static {p2}, Lcom/ta/utdid2/android/utils/f;->g(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/16 p2, 0xbb8

    goto :goto_0

    :cond_0
    const/16 p2, 0x3e8

    .line 3
    :goto_0
    sget-boolean p3, Lcom/ta/utdid2/android/utils/d;->b:Z

    if-eqz p3, :cond_1

    .line 4
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "url:"

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "; timeout:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 5
    :cond_1
    new-instance p3, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {p3, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 6
    new-instance p1, Lcom/ta/utdid2/aid/b$a;

    invoke-direct {p1, p0, p3}, Lcom/ta/utdid2/aid/b$a;-><init>(Lcom/ta/utdid2/aid/b;Lorg/apache/http/client/methods/HttpPost;)V

    .line 7
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 8
    :try_start_0
    iget-object p3, p0, Lcom/ta/utdid2/aid/b;->b:Ljava/lang/Object;

    monitor-enter p3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    :try_start_1
    iget-object v0, p0, Lcom/ta/utdid2/aid/b;->b:Ljava/lang/Object;

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V

    .line 10
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p2

    :try_start_2
    monitor-exit p3

    throw p2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p2

    .line 11
    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 12
    :goto_1
    invoke-virtual {p1}, Lcom/ta/utdid2/aid/b$a;->a()Ljava/lang/String;

    move-result-object p1

    .line 13
    sget-boolean p2, Lcom/ta/utdid2/android/utils/d;->b:Z

    if-eqz p2, :cond_2

    .line 14
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "mLine:"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    :cond_2
    invoke-static {p1, p4}, Lcom/ta/utdid2/aid/b;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lj2/a;)V
    .locals 9

    .line 1
    invoke-static {p1, p2, p3, p4}, Lcom/ta/utdid2/aid/b;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 2
    sget-boolean v0, Lcom/ta/utdid2/android/utils/d;->b:Z

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "url:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; len:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4
    :cond_0
    new-instance v4, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v4, p3}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 5
    new-instance p3, Lcom/ta/utdid2/aid/b$a;

    move-object v2, p3

    move-object v3, p0

    move-object v5, p5

    move-object v6, p4

    move-object v7, p1

    move-object v8, p2

    invoke-direct/range {v2 .. v8}, Lcom/ta/utdid2/aid/b$a;-><init>(Lcom/ta/utdid2/aid/b;Lorg/apache/http/client/methods/HttpPost;Lj2/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p3}, Ljava/lang/Thread;->start()V

    return-void
.end method
