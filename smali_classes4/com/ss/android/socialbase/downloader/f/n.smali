.class public Lcom/ss/android/socialbase/downloader/f/n;
.super Ljava/lang/Object;
.source "SegmentStrategy.java"


# instance fields
.field private final a:Lorg/json/JSONObject;

.field private b:I


# direct methods
.method private constructor <init>(Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/f/n;->a:Lorg/json/JSONObject;

    return-void
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/ss/android/socialbase/downloader/f/n;
    .locals 1
    .param p0    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 3
    new-instance v0, Lcom/ss/android/socialbase/downloader/f/n;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/f/n;-><init>(Lorg/json/JSONObject;)V

    return-object v0
.end method

.method private b(I)I
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/n;->a:Lorg/json/JSONObject;

    const-string v1, "thread_count"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0x10

    if-le v0, v1, :cond_0

    const/16 v0, 0x10

    :cond_0
    const/4 v1, 0x1

    if-gtz v0, :cond_2

    .line 3
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/f/n;->p()I

    move-result v0

    if-lez v0, :cond_1

    return p1

    :cond_1
    return v1

    .line 4
    :cond_2
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/f/n;->p()I

    move-result v2

    if-ne v2, v1, :cond_3

    .line 5
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1

    :cond_3
    return v0
.end method

.method private p()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/n;->a:Lorg/json/JSONObject;

    const-string v1, "url_balance"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 2
    iget v0, p0, Lcom/ss/android/socialbase/downloader/f/n;->b:I

    return v0
.end method

.method public a(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/f/n;->b(I)I

    move-result p1

    iput p1, p0, Lcom/ss/android/socialbase/downloader/f/n;->b:I

    return-void
.end method

.method public b()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/f/n;->p()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public c()Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/f/n;->p()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public d()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/n;->a:Lorg/json/JSONObject;

    const-string v1, "buffer_count"

    const/16 v2, 0x200

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public e()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/n;->a:Lorg/json/JSONObject;

    const-string v1, "buffer_size"

    const/16 v2, 0x2000

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public f()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/n;->a:Lorg/json/JSONObject;

    const-string v1, "segment_mode"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public g()J
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/n;->a:Lorg/json/JSONObject;

    const-string v1, "segment_min_kb"

    const/16 v2, 0x200

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x400

    mul-long v0, v0, v2

    const-wide/32 v2, 0x10000

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    move-wide v0, v2

    :cond_0
    return-wide v0
.end method

.method public h()J
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/n;->a:Lorg/json/JSONObject;

    const-string v1, "segment_min_init_mb"

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    const-wide/32 v2, 0x100000

    mul-long v0, v0, v2

    const-wide/32 v2, 0x500000

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    move-wide v0, v2

    :cond_0
    return-wide v0
.end method

.method public i()J
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/n;->a:Lorg/json/JSONObject;

    const-string v1, "segment_max_kb"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    const-wide/32 v2, 0x100000

    mul-long v0, v0, v2

    .line 2
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/f/n;->g()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const-wide/16 v0, -0x1

    :cond_0
    return-wide v0
.end method

.method public j()J
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/n;->a:Lorg/json/JSONObject;

    const-string v1, "connect_timeout"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x7d0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public k()J
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/n;->a:Lorg/json/JSONObject;

    const-string v1, "read_timeout"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0xfa0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public l()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/n;->a:Lorg/json/JSONObject;

    const-string v1, "ip_strategy"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public m()F
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/n;->a:Lorg/json/JSONObject;

    const-string v1, "main_ratio"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public n()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/n;->a:Lorg/json/JSONObject;

    const-string v1, "ratio_segment"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public o()F
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/n;->a:Lorg/json/JSONObject;

    const-string v1, "poor_speed_ratio"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float v0, v0

    const/4 v1, 0x0

    .line 2
    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method
