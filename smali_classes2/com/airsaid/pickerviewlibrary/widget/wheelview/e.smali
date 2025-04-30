.class final Lcom/airsaid/pickerviewlibrary/widget/wheelview/e;
.super Ljava/util/TimerTask;
.source "SmoothScrollTimerTask.java"


# instance fields
.field a:I

.field b:I

.field c:I

.field final d:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;


# direct methods
.method constructor <init>(Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/e;->d:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    .line 3
    iput p2, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/e;->c:I

    const p1, 0x7fffffff

    .line 4
    iput p1, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/e;->a:I

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/e;->b:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/e;->a:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 2
    iget v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/e;->c:I

    iput v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/e;->a:I

    .line 3
    :cond_0
    iget v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/e;->a:I

    int-to-float v1, v0

    const v2, 0x3dcccccd    # 0.1f

    mul-float v1, v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/e;->b:I

    const/4 v2, 0x1

    if-nez v1, :cond_2

    if-gez v0, :cond_1

    const/4 v1, -0x1

    .line 4
    iput v1, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/e;->b:I

    goto :goto_0

    .line 5
    :cond_1
    iput v2, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/e;->b:I

    .line 6
    :cond_2
    :goto_0
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v1, 0xbb8

    if-gt v0, v2, :cond_3

    .line 7
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/e;->d:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    invoke-virtual {v0}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->a()V

    .line 8
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/e;->d:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    iget-object v0, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->b:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/e;->d:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    iget v3, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->w:I

    iget v4, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/e;->b:I

    add-int/2addr v3, v4

    iput v3, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->w:I

    .line 10
    iget-boolean v3, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->s:Z

    if-nez v3, :cond_5

    .line 11
    iget v3, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->o:F

    .line 12
    iget v4, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->x:I

    neg-int v4, v4

    int-to-float v4, v4

    mul-float v4, v4, v3

    .line 13
    invoke-virtual {v0}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->getItemsCount()I

    move-result v0

    sub-int/2addr v0, v2

    iget-object v2, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/e;->d:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    iget v5, v2, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->x:I

    sub-int/2addr v0, v5

    int-to-float v0, v0

    mul-float v0, v0, v3

    .line 14
    iget v3, v2, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->w:I

    int-to-float v5, v3

    cmpg-float v4, v5, v4

    if-lez v4, :cond_4

    int-to-float v4, v3

    cmpl-float v0, v4, v0

    if-ltz v0, :cond_5

    .line 15
    :cond_4
    iget v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/e;->b:I

    sub-int/2addr v3, v0

    iput v3, v2, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->w:I

    .line 16
    invoke-virtual {v2}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->a()V

    .line 17
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/e;->d:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    iget-object v0, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->b:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    .line 18
    :cond_5
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/e;->d:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    iget-object v0, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->b:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 19
    iget v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/e;->a:I

    iget v1, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/e;->b:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/e;->a:I

    :goto_1
    return-void
.end method
