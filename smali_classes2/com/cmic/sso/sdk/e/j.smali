.class public Lcom/cmic/sso/sdk/e/j;
.super Ljava/lang/Object;
.source "SIMUtils.java"


# static fields
.field private static b:Lcom/cmic/sso/sdk/e/j;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/cmic/sso/sdk/e/j;->a:Landroid/content/Context;

    return-void
.end method

.method public static a()Lcom/cmic/sso/sdk/e/j;
    .locals 1

    .line 2
    sget-object v0, Lcom/cmic/sso/sdk/e/j;->b:Lcom/cmic/sso/sdk/e/j;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/cmic/sso/sdk/e/j;

    invoke-direct {v0, p0}, Lcom/cmic/sso/sdk/e/j;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/cmic/sso/sdk/e/j;->b:Lcom/cmic/sso/sdk/e/j;

    return-void
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "46011"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v1, 0x9

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "46009"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "46007"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_3
    const-string v0, "46006"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_4
    const-string v0, "46005"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_5
    const-string v0, "46004"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_6
    const-string v0, "46003"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_7
    const-string v0, "46002"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_8
    const-string v0, "46001"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_0

    :cond_8
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_9
    const-string v0, "46000"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_0

    :cond_9
    const/4 v1, 0x0

    :goto_0
    const-string p1, "SIMUtils"

    packed-switch v1, :pswitch_data_0

    const-string p1, "0"

    return-object p1

    :pswitch_0
    const-string/jumbo v0, "\u4e2d\u56fd\u7535\u4fe1"

    .line 6
    invoke-static {p1, v0}, Lcom/cmic/sso/sdk/e/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "3"

    return-object p1

    :pswitch_1
    const-string/jumbo v0, "\u4e2d\u56fd\u8054\u901a"

    .line 7
    invoke-static {p1, v0}, Lcom/cmic/sso/sdk/e/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "2"

    return-object p1

    :pswitch_2
    const-string/jumbo v0, "\u4e2d\u56fd\u79fb\u52a8"

    .line 8
    invoke-static {p1, v0}, Lcom/cmic/sso/sdk/e/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "1"

    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        0x2f60c6e -> :sswitch_9
        0x2f60c6f -> :sswitch_8
        0x2f60c70 -> :sswitch_7
        0x2f60c71 -> :sswitch_6
        0x2f60c72 -> :sswitch_5
        0x2f60c73 -> :sswitch_4
        0x2f60c74 -> :sswitch_3
        0x2f60c75 -> :sswitch_2
        0x2f60c77 -> :sswitch_1
        0x2f60c8e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/cmic/sso/sdk/e/j;->c()Ljava/lang/String;

    move-result-object p1

    .line 5
    :cond_0
    invoke-direct {p0, p1}, Lcom/cmic/sso/sdk/e/j;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Lcom/cmic/sso/sdk/b/a;->a()Lcom/cmic/sso/sdk/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmic/sso/sdk/b/a;->b()Lcom/cmic/sso/sdk/b/a$a;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/cmic/sso/sdk/b/a$a;->a()I

    move-result v0

    if-ltz v0, :cond_0

    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/cmic/sso/sdk/e/j;->a:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SysOperator= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SIMUtils"

    invoke-static {v2, v1}, Lcom/cmic/sso/sdk/e/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method
