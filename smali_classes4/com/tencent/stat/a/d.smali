.class public Lcom/tencent/stat/a/d;
.super Lcom/tencent/stat/a/e;


# instance fields
.field private a:Ljava/lang/String;

.field private l:I

.field private m:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IILjava/lang/Throwable;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/tencent/stat/a/e;-><init>(Landroid/content/Context;I)V

    const/16 p1, 0x64

    iput p1, p0, Lcom/tencent/stat/a/d;->m:I

    if-eqz p4, :cond_2

    new-instance p1, Ljava/lang/Throwable;

    invoke-direct {p1, p4}, Ljava/lang/Throwable;-><init>(Ljava/lang/Throwable;)V

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p2

    if-eqz p2, :cond_1

    array-length p4, p2

    iget v0, p0, Lcom/tencent/stat/a/d;->m:I

    if-le p4, v0, :cond_1

    new-array p4, v0, [Ljava/lang/StackTraceElement;

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/tencent/stat/a/d;->m:I

    if-ge v0, v1, :cond_0

    aget-object v1, p2, v0

    aput-object v1, p4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p4}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_1
    new-instance p2, Ljava/io/StringWriter;

    invoke-direct {p2}, Ljava/io/StringWriter;-><init>()V

    new-instance p4, Ljava/io/PrintWriter;

    invoke-direct {p4, p2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p1, p4}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/stat/a/d;->a:Ljava/lang/String;

    iput p3, p0, Lcom/tencent/stat/a/d;->l:I

    invoke-virtual {p4}, Ljava/io/PrintWriter;->close()V

    :cond_2
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/tencent/stat/a/e;-><init>(Landroid/content/Context;I)V

    const/16 p1, 0x64

    iput p1, p0, Lcom/tencent/stat/a/d;->m:I

    if-eqz p3, :cond_2

    if-gtz p5, :cond_0

    invoke-static {}, Lcom/tencent/stat/StatConfig;->getMaxReportEventLength()I

    move-result p5

    :cond_0
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p1

    if-gt p1, p5, :cond_1

    iput-object p3, p0, Lcom/tencent/stat/a/d;->a:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    invoke-virtual {p3, p1, p5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/stat/a/d;->a:Ljava/lang/String;

    :cond_2
    :goto_0
    iput p4, p0, Lcom/tencent/stat/a/d;->l:I

    return-void
.end method


# virtual methods
.method public a()Lcom/tencent/stat/a/f;
    .locals 1

    sget-object v0, Lcom/tencent/stat/a/f;->c:Lcom/tencent/stat/a/f;

    return-object v0
.end method

.method public a(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tencent/stat/a/e;->c:J

    return-void
.end method

.method public a(Lorg/json/JSONObject;)Z
    .locals 2

    iget-object v0, p0, Lcom/tencent/stat/a/d;->a:Ljava/lang/String;

    const-string v1, "er"

    invoke-static {p1, v1, v0}, Lcom/tencent/stat/common/k;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/tencent/stat/a/d;->l:I

    const-string v1, "ea"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const/4 p1, 0x1

    return p1
.end method
