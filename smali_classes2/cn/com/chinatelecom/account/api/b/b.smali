.class public Lcn/com/chinatelecom/account/api/b/b;
.super Ljava/lang/Object;


# static fields
.field public static final a:[B

.field public static final b:[B

.field public static final c:[B

.field public static final d:[B

.field public static final e:[B

.field private static final f:Ljava/lang/String; = "b"


# instance fields
.field private g:Lcn/com/chinatelecom/account/api/c/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x4

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Lcn/com/chinatelecom/account/api/b/b;->a:[B

    const/16 v1, 0x9

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    sput-object v1, Lcn/com/chinatelecom/account/api/b/b;->b:[B

    new-array v1, v0, [B

    fill-array-data v1, :array_2

    sput-object v1, Lcn/com/chinatelecom/account/api/b/b;->c:[B

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    sput-object v0, Lcn/com/chinatelecom/account/api/b/b;->d:[B

    const/16 v0, 0xa

    new-array v0, v0, [B

    fill-array-data v0, :array_4

    sput-object v0, Lcn/com/chinatelecom/account/api/b/b;->e:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x7at
        0x63t
        0x7at
        0x66t
    .end array-data

    :array_1
    .array-data 1
        0x2ct
        0x68t
        0x78t
        0x63t
        0x6dt
        0x4bt
        0x7at
        0x7at
        0x37t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x2ct
        0x79t
        0x7et
        0x37t
    .end array-data

    :array_3
    .array-data 1
        0x2ct
        0x68t
        0x7et
        0x37t
    .end array-data

    :array_4
    .array-data 1
        0x2ct
        0x6bt
        0x7ft
        0x7et
        0x62t
        0x5et
        0x73t
        0x7at
        0x6ft
        0x37t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Network;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 8

    const-string v1, ""

    :try_start_0
    new-instance v2, Lcn/com/chinatelecom/account/api/d/g$a;

    invoke-direct {v2}, Lcn/com/chinatelecom/account/api/d/g$a;-><init>()V

    invoke-virtual {v2, p6}, Lcn/com/chinatelecom/account/api/d/g$a;->a(Ljava/lang/String;)Lcn/com/chinatelecom/account/api/d/g$a;

    invoke-static {}, Lcn/com/chinatelecom/account/api/d/c;->a()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcn/com/chinatelecom/account/api/e/b;->f:[B

    invoke-static {v4}, Lcn/com/chinatelecom/account/api/a/d;->a([B)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v3, v4}, Lcn/com/chinatelecom/account/api/d/g$a;->a(ZLjava/lang/String;Ljava/lang/String;)Lcn/com/chinatelecom/account/api/d/g$a;

    invoke-virtual {v2, p5}, Lcn/com/chinatelecom/account/api/d/g$a;->b(Ljava/lang/String;)Lcn/com/chinatelecom/account/api/d/g$a;

    invoke-virtual {v2, p4}, Lcn/com/chinatelecom/account/api/d/g$a;->a(Landroid/net/Network;)Lcn/com/chinatelecom/account/api/d/g$a;

    const/4 v3, 0x0

    invoke-static {v3}, Lcn/com/chinatelecom/account/api/CtSetting;->getConnTimeout(Lcn/com/chinatelecom/account/api/CtSetting;)I

    move-result v6

    invoke-virtual {v2, v6}, Lcn/com/chinatelecom/account/api/d/g$a;->a(I)Lcn/com/chinatelecom/account/api/d/g$a;

    invoke-static {v3}, Lcn/com/chinatelecom/account/api/CtSetting;->getReadTimeout(Lcn/com/chinatelecom/account/api/CtSetting;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcn/com/chinatelecom/account/api/d/g$a;->b(I)Lcn/com/chinatelecom/account/api/d/g$a;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sget-object v6, Lcn/com/chinatelecom/account/api/b/b;->a:[B

    invoke-static {v6}, Lcn/com/chinatelecom/account/api/a/d;->a([B)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcn/com/chinatelecom/account/api/Helper;->dnprecohdjs()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lcn/com/chinatelecom/account/api/d/g$a;->a(Ljava/util/Map;)Lcn/com/chinatelecom/account/api/d/g$a;

    invoke-virtual {v2}, Lcn/com/chinatelecom/account/api/d/g$a;->a()Lcn/com/chinatelecom/account/api/d/g;

    move-result-object v2

    new-instance v3, Lcn/com/chinatelecom/account/api/d/b;

    invoke-direct {v3, p1}, Lcn/com/chinatelecom/account/api/d/b;-><init>(Landroid/content/Context;)V

    invoke-interface {v3, p3, v1, v5, v2}, Lcn/com/chinatelecom/account/api/d/e;->a(Ljava/lang/String;Ljava/lang/String;ILcn/com/chinatelecom/account/api/d/g;)Lcn/com/chinatelecom/account/api/d/h;

    move-result-object v2

    const/4 v5, 0x1

    move-object v1, p1

    move-object v3, p2

    move-object v4, p4

    move-object v6, p5

    invoke-static/range {v1 .. v6}, Lcn/com/chinatelecom/account/api/e/a;->a(Landroid/content/Context;Lcn/com/chinatelecom/account/api/d/h;Ljava/lang/String;Landroid/net/Network;ZLjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {p5, v1, p3}, Lcn/com/chinatelecom/account/api/e/f;->b(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcn/com/chinatelecom/account/api/e/j;->g()Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {p5}, Lcn/com/chinatelecom/account/api/e/f;->a(Ljava/lang/String;)Lcn/com/chinatelecom/account/api/e/e;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "gpm \uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/com/chinatelecom/account/api/e/e;->g(Ljava/lang/String;)Lcn/com/chinatelecom/account/api/e/e;

    move-result-object v2

    const v3, 0x138e6

    invoke-virtual {v2, v3}, Lcn/com/chinatelecom/account/api/e/e;->a(I)Lcn/com/chinatelecom/account/api/e/e;

    move-result-object v2

    sget-object v3, Lcn/com/chinatelecom/account/api/e/j;->k:[B

    invoke-static {v3}, Lcn/com/chinatelecom/account/api/a/d;->a([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/com/chinatelecom/account/api/e/e;->e(Ljava/lang/String;)Lcn/com/chinatelecom/account/api/e/e;

    sget-object v2, Lcn/com/chinatelecom/account/api/b/b;->f:Ljava/lang/String;

    const-string v3, "GPM Throwable"

    invoke-static {v2, v3, v0}, Lcn/com/chinatelecom/account/api/CtAuth;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object v1
.end method

.method static synthetic a(Lcn/com/chinatelecom/account/api/b/b;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Network;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcn/com/chinatelecom/account/api/b/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Network;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method private a()V
    .locals 1

    iget-object v0, p0, Lcn/com/chinatelecom/account/api/b/b;->g:Lcn/com/chinatelecom/account/api/c/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/com/chinatelecom/account/api/c/c;->a()V

    :cond_0
    return-void
.end method

.method private a(ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Lcn/com/chinatelecom/account/api/b/a;)V
    .locals 1

    invoke-static {p3}, Lcn/com/chinatelecom/account/api/e/f;->a(Ljava/lang/String;)Lcn/com/chinatelecom/account/api/e/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/com/chinatelecom/account/api/e/e;->a(I)Lcn/com/chinatelecom/account/api/e/e;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcn/com/chinatelecom/account/api/e/e;->e(Ljava/lang/String;)Lcn/com/chinatelecom/account/api/e/e;

    move-result-object v0

    invoke-virtual {v0, p4, p5}, Lcn/com/chinatelecom/account/api/e/e;->b(J)Lcn/com/chinatelecom/account/api/e/e;

    move-result-object p4

    invoke-virtual {p4, p6}, Lcn/com/chinatelecom/account/api/e/e;->g(Ljava/lang/String;)Lcn/com/chinatelecom/account/api/e/e;

    invoke-static {p3}, Lcn/com/chinatelecom/account/api/e/f;->c(Ljava/lang/String;)V

    invoke-static {p1, p2, p3}, Lcn/com/chinatelecom/account/api/e/j;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p7, :cond_0

    invoke-interface {p7, p1}, Lcn/com/chinatelecom/account/api/b/a;->callbackPreCode(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Network;JLjava/lang/String;Ljava/lang/String;Lcn/com/chinatelecom/account/api/b/a;)V
    .locals 13

    new-instance v0, Lcn/com/chinatelecom/account/api/c/d;

    invoke-direct {v0}, Lcn/com/chinatelecom/account/api/c/d;-><init>()V

    new-instance v12, Lcn/com/chinatelecom/account/api/b/b$3;

    move-object v1, v12

    move-object v2, p0

    move-wide/from16 v3, p5

    move-object v5, p1

    move-object v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    invoke-direct/range {v1 .. v11}, Lcn/com/chinatelecom/account/api/b/b$3;-><init>(Lcn/com/chinatelecom/account/api/b/b;JLandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Network;Ljava/lang/String;Ljava/lang/String;Lcn/com/chinatelecom/account/api/b/a;)V

    invoke-virtual {v0, v12}, Lcn/com/chinatelecom/account/api/c/d;->a(Lcn/com/chinatelecom/account/api/c/e;)V

    return-void
.end method

.method static synthetic a(Lcn/com/chinatelecom/account/api/b/b;)V
    .locals 0

    invoke-direct {p0}, Lcn/com/chinatelecom/account/api/b/b;->a()V

    return-void
.end method

.method static synthetic a(Lcn/com/chinatelecom/account/api/b/b;ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Lcn/com/chinatelecom/account/api/b/a;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcn/com/chinatelecom/account/api/b/b;->a(ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Lcn/com/chinatelecom/account/api/b/a;)V

    return-void
.end method

.method static synthetic a(Lcn/com/chinatelecom/account/api/b/b;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Network;JLjava/lang/String;Ljava/lang/String;Lcn/com/chinatelecom/account/api/b/a;)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lcn/com/chinatelecom/account/api/b/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Network;JLjava/lang/String;Ljava/lang/String;Lcn/com/chinatelecom/account/api/b/a;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcn/com/chinatelecom/account/api/b/a;)V
    .locals 8

    invoke-static {}, Lcn/com/chinatelecom/account/api/CtAuth;->getInstance()Lcn/com/chinatelecom/account/api/CtAuth;

    move-result-object v0

    invoke-virtual {v0}, Lcn/com/chinatelecom/account/api/CtAuth;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, ""

    if-nez v1, :cond_0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "st"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string p1, "bt"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v4, "authType"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    move-object p1, v2

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    move-object v7, v2

    move-object v2, p1

    move-object p1, v7

    goto :goto_2

    :cond_0
    move-object p1, v2

    :goto_2
    invoke-static {v0}, Lcn/com/chinatelecom/account/api/e/a;->a(Landroid/content/Context;)J

    move-result-wide v4

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v6, Lcn/com/chinatelecom/account/api/b/b;->b:[B

    invoke-static {v6}, Lcn/com/chinatelecom/account/api/a/d;->a([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v6, Lcn/com/chinatelecom/account/api/CtAuth;->mAppId:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v6, Lcn/com/chinatelecom/account/api/b/b;->c:[B

    invoke-static {v6}, Lcn/com/chinatelecom/account/api/a/d;->a([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v3, Lcn/com/chinatelecom/account/api/b/b;->d:[B

    invoke-static {v3}, Lcn/com/chinatelecom/account/api/a/d;->a([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v2, "tyx"

    :cond_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v2, Lcn/com/chinatelecom/account/api/b/b;->e:[B

    invoke-static {v2}, Lcn/com/chinatelecom/account/api/a/d;->a([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string p1, "2"

    :cond_2
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v4, v5, p1}, Lcn/com/chinatelecom/account/api/e/h;->a(Landroid/content/Context;JLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_3

    invoke-interface {p2, p1}, Lcn/com/chinatelecom/account/api/b/a;->callbackPreCodeParams(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcn/com/chinatelecom/account/api/b/a;)V
    .locals 11

    invoke-static {}, Lcn/com/chinatelecom/account/api/CtAuth;->getInstance()Lcn/com/chinatelecom/account/api/CtAuth;

    move-result-object v0

    invoke-virtual {v0}, Lcn/com/chinatelecom/account/api/CtAuth;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v0, 0x0

    invoke-static {v0}, Lcn/com/chinatelecom/account/api/CtSetting;->getTotalTimeout(Lcn/com/chinatelecom/account/api/CtSetting;)I

    move-result v0

    invoke-static {}, Lcn/com/chinatelecom/account/api/e/d;->a()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2}, Lcn/com/chinatelecom/account/api/e/d;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v8}, Lcn/com/chinatelecom/account/api/e/f;->a(Ljava/lang/String;)Lcn/com/chinatelecom/account/api/e/e;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcn/com/chinatelecom/account/api/e/e;->a(Ljava/lang/String;)Lcn/com/chinatelecom/account/api/e/e;

    move-result-object v1

    const-string v3, "preCodeByJs"

    invoke-virtual {v1, v3}, Lcn/com/chinatelecom/account/api/e/e;->c(Ljava/lang/String;)Lcn/com/chinatelecom/account/api/e/e;

    move-result-object v1

    invoke-static {v2}, Lcn/com/chinatelecom/account/api/e/g;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcn/com/chinatelecom/account/api/e/e;->b(Ljava/lang/String;)Lcn/com/chinatelecom/account/api/e/e;

    move-result-object v1

    invoke-static {v2}, Lcn/com/chinatelecom/account/api/e/g;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcn/com/chinatelecom/account/api/e/e;->f(Ljava/lang/String;)Lcn/com/chinatelecom/account/api/e/e;

    int-to-long v6, v0

    const/4 v5, 0x0

    const-string v9, "preCodeByJs"

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v10, p3

    invoke-direct/range {v1 .. v10}, Lcn/com/chinatelecom/account/api/b/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Network;JLjava/lang/String;Ljava/lang/String;Lcn/com/chinatelecom/account/api/b/a;)V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Lcn/com/chinatelecom/account/api/b/a;)V
    .locals 10

    invoke-static {}, Lcn/com/chinatelecom/account/api/CtAuth;->getInstance()Lcn/com/chinatelecom/account/api/CtAuth;

    move-result-object v0

    invoke-virtual {v0}, Lcn/com/chinatelecom/account/api/CtAuth;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v0, 0x0

    invoke-static {v0}, Lcn/com/chinatelecom/account/api/CtSetting;->getTotalTimeout(Lcn/com/chinatelecom/account/api/CtSetting;)I

    move-result v4

    invoke-static {}, Lcn/com/chinatelecom/account/api/e/d;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5}, Lcn/com/chinatelecom/account/api/e/d;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3}, Lcn/com/chinatelecom/account/api/e/f;->a(Ljava/lang/String;)Lcn/com/chinatelecom/account/api/e/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/com/chinatelecom/account/api/e/e;->a(Ljava/lang/String;)Lcn/com/chinatelecom/account/api/e/e;

    move-result-object v0

    const-string v1, "preCodeByJs"

    invoke-virtual {v0, v1}, Lcn/com/chinatelecom/account/api/e/e;->c(Ljava/lang/String;)Lcn/com/chinatelecom/account/api/e/e;

    move-result-object v0

    const-string v1, "BOTH"

    invoke-virtual {v0, v1}, Lcn/com/chinatelecom/account/api/e/e;->b(Ljava/lang/String;)Lcn/com/chinatelecom/account/api/e/e;

    move-result-object v0

    invoke-static {v5}, Lcn/com/chinatelecom/account/api/e/g;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/com/chinatelecom/account/api/e/e;->f(Ljava/lang/String;)Lcn/com/chinatelecom/account/api/e/e;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    new-instance v0, Lcn/com/chinatelecom/account/api/c/c;

    invoke-direct {v0, v5}, Lcn/com/chinatelecom/account/api/c/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/com/chinatelecom/account/api/b/b;->g:Lcn/com/chinatelecom/account/api/c/c;

    new-instance v9, Lcn/com/chinatelecom/account/api/b/b$1;

    move-object v1, v9

    move-object v2, p0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    invoke-direct/range {v1 .. v8}, Lcn/com/chinatelecom/account/api/b/b$1;-><init>(Lcn/com/chinatelecom/account/api/b/b;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcn/com/chinatelecom/account/api/b/a;)V

    invoke-virtual {v0, v9}, Lcn/com/chinatelecom/account/api/c/c;->a(Lcn/com/chinatelecom/account/api/c/b;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcn/com/chinatelecom/account/api/c/c;

    invoke-direct {v0, v5}, Lcn/com/chinatelecom/account/api/c/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/com/chinatelecom/account/api/b/b;->g:Lcn/com/chinatelecom/account/api/c/c;

    new-instance v9, Lcn/com/chinatelecom/account/api/b/b$2;

    move-object v1, v9

    move-object v2, p0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    invoke-direct/range {v1 .. v8}, Lcn/com/chinatelecom/account/api/b/b$2;-><init>(Lcn/com/chinatelecom/account/api/b/b;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcn/com/chinatelecom/account/api/b/a;)V

    invoke-virtual {v0, v9, p2}, Lcn/com/chinatelecom/account/api/c/c;->a(Lcn/com/chinatelecom/account/api/c/b;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
