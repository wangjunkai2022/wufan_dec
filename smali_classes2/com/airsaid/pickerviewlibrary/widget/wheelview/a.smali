.class final Lcom/airsaid/pickerviewlibrary/widget/wheelview/a;
.super Ljava/util/TimerTask;
.source "InertiaTimerTask.java"


# instance fields
.field a:F

.field final b:F

.field final c:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;


# direct methods
.method constructor <init>(Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;F)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/a;->c:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    .line 3
    iput p2, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/a;->b:F

    const/high16 p1, 0x4f000000

    .line 4
    iput p1, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/a;->a:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    .line 1
    iget v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/a;->a:F

    const/4 v1, 0x0

    const/high16 v2, 0x4f000000

    cmpl-float v0, v0, v2

    if-nez v0, :cond_2

    .line 2
    iget v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/a;->b:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v2, 0x44fa0000    # 2000.0f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    .line 3
    iget v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/a;->b:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 4
    iput v2, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/a;->a:F

    goto :goto_0

    :cond_0
    const/high16 v0, -0x3b060000    # -2000.0f

    .line 5
    iput v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/a;->a:F

    goto :goto_0

    .line 6
    :cond_1
    iget v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/a;->b:F

    iput v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/a;->a:F

    .line 7
    :cond_2
    :goto_0
    iget v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/a;->a:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v2, 0x41a00000    # 20.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_3

    iget v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/a;->a:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_3

    .line 8
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/a;->c:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    invoke-virtual {v0}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->a()V

    .line 9
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/a;->c:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    iget-object v0, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->b:Landroid/os/Handler;

    const/16 v1, 0x7d0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    .line 10
    :cond_3
    iget v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/a;->a:F

    const/high16 v3, 0x41200000    # 10.0f

    mul-float v0, v0, v3

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v0, v3

    float-to-int v0, v0

    .line 11
    iget-object v3, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/a;->c:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    iget v4, v3, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->w:I

    sub-int/2addr v4, v0

    iput v4, v3, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->w:I

    .line 12
    iget-boolean v4, v3, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->s:Z

    if-nez v4, :cond_7

    .line 13
    iget v4, v3, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->o:F

    .line 14
    iget v5, v3, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->x:I

    neg-int v5, v5

    int-to-float v5, v5

    mul-float v5, v5, v4

    .line 15
    invoke-virtual {v3}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->getItemsCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    iget-object v6, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/a;->c:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    iget v7, v6, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->x:I

    sub-int/2addr v3, v7

    int-to-float v3, v3

    mul-float v3, v3, v4

    .line 16
    iget v7, v6, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->w:I

    int-to-double v8, v7

    float-to-double v10, v4

    const-wide v12, 0x3fd3333333333333L    # 0.3

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v10, v10, v12

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v8, v10

    float-to-double v12, v5

    cmpg-double v4, v8, v12

    if-gez v4, :cond_4

    add-int/2addr v0, v7

    int-to-float v5, v0

    goto :goto_1

    :cond_4
    int-to-double v8, v7

    .line 17
    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v8, v10

    float-to-double v10, v3

    cmpl-double v4, v8, v10

    if-lez v4, :cond_5

    add-int/2addr v0, v7

    int-to-float v3, v0

    :cond_5
    :goto_1
    int-to-float v0, v7

    cmpg-float v0, v0, v5

    if-gtz v0, :cond_6

    const/high16 v0, 0x42200000    # 40.0f

    .line 18
    iput v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/a;->a:F

    float-to-int v0, v5

    .line 19
    iput v0, v6, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->w:I

    goto :goto_2

    :cond_6
    int-to-float v0, v7

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_7

    float-to-int v0, v3

    .line 20
    iput v0, v6, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->w:I

    const/high16 v0, -0x3de00000    # -40.0f

    .line 21
    iput v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/a;->a:F

    .line 22
    :cond_7
    :goto_2
    iget v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/a;->a:F

    cmpg-float v1, v0, v1

    if-gez v1, :cond_8

    add-float/2addr v0, v2

    .line 23
    iput v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/a;->a:F

    goto :goto_3

    :cond_8
    sub-float/2addr v0, v2

    .line 24
    iput v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/a;->a:F

    .line 25
    :goto_3
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/a;->c:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    iget-object v0, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->b:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
