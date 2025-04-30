.class public Lcom/papa91/view/DragProgressView;
.super Landroid/widget/RelativeLayout;
.source "DragProgressView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/papa91/view/DragProgressView$OnProduceListener;
    }
.end annotation


# instance fields
.field private INTERVAL:J

.field private SIGNAL_MAX:I

.field private dragView:Landroid/view/View;

.field private first:I

.field private init_first_box_time:I

.field private mLayoutRunnable:Ljava/lang/Runnable;

.field mOnClickListener:Landroid/view/View$OnClickListener;

.field mOnProduceListener:Lcom/papa91/view/DragProgressView$OnProduceListener;

.field private max_time_interval:I

.field private min_time_interval:I

.field private progress:Lcom/papa91/view/RoundedRectangularProgressView;

.field private signal:I

.field private signal1:Landroid/widget/ImageView;

.field private signal2:Landroid/widget/ImageView;

.field private signal3:Landroid/widget/ImageView;

.field private spark:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/papa91/view/DragProgressView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 3
    iput p2, p0, Lcom/papa91/view/DragProgressView;->SIGNAL_MAX:I

    const-wide/32 v0, 0xea60

    .line 4
    iput-wide v0, p0, Lcom/papa91/view/DragProgressView;->INTERVAL:J

    .line 5
    invoke-virtual {p0, p1}, Lcom/papa91/view/DragProgressView;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/papa91/view/DragProgressView;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa91/view/DragProgressView;->dragView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$100(Lcom/papa91/view/DragProgressView;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa91/view/DragProgressView;->spark:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/papa91/view/DragProgressView;)Lcom/papa91/view/RoundedRectangularProgressView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa91/view/DragProgressView;->progress:Lcom/papa91/view/RoundedRectangularProgressView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/papa91/view/DragProgressView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/papa91/view/DragProgressView;->signal:I

    return p0
.end method

.method static synthetic access$400(Lcom/papa91/view/DragProgressView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/papa91/view/DragProgressView;->SIGNAL_MAX:I

    return p0
.end method


# virtual methods
.method disableSpark()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/view/DragProgressView;->spark:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/papa91/view/DragProgressView;->spark:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    :cond_0
    return-void
.end method

.method enableSpark()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/view/DragProgressView;->spark:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/papa91/view/DragProgressView;->spark:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    :cond_0
    return-void
.end method

.method getDimension(I)I
    .locals 2

    int-to-float p1, p1

    .line 1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method

.method public getSignal()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/view/DragProgressView;->signal:I

    return v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/papa91/mix/R$layout;->drag_progress_view:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    invoke-static {}, Lcom/yatoooon/screenadaptation/e;->a()Lcom/yatoooon/screenadaptation/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yatoooon/screenadaptation/a;->f(Landroid/view/View;)V

    .line 3
    sget v0, Lcom/papa91/mix/R$id;->progress:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/papa91/view/RoundedRectangularProgressView;

    iput-object v0, p0, Lcom/papa91/view/DragProgressView;->progress:Lcom/papa91/view/RoundedRectangularProgressView;

    .line 4
    sget v0, Lcom/papa91/mix/R$id;->spark:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/papa91/view/DragProgressView;->spark:Landroid/widget/ImageView;

    .line 5
    sget v0, Lcom/papa91/mix/R$id;->signal1:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/papa91/view/DragProgressView;->signal1:Landroid/widget/ImageView;

    .line 6
    sget v0, Lcom/papa91/mix/R$id;->signal2:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/papa91/view/DragProgressView;->signal2:Landroid/widget/ImageView;

    .line 7
    sget v0, Lcom/papa91/mix/R$id;->signal3:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/papa91/view/DragProgressView;->signal3:Landroid/widget/ImageView;

    .line 8
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 9
    iput-object p1, p0, Lcom/papa91/view/DragProgressView;->dragView:Landroid/view/View;

    .line 10
    new-instance p1, Lcom/papa91/view/DragProgressView$1;

    invoke-direct {p1, p0}, Lcom/papa91/view/DragProgressView$1;-><init>(Lcom/papa91/view/DragProgressView;)V

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    .line 11
    iget-object p1, p0, Lcom/papa91/view/DragProgressView;->progress:Lcom/papa91/view/RoundedRectangularProgressView;

    new-instance v0, Lcom/papa91/view/DragProgressView$2;

    invoke-direct {v0, p0}, Lcom/papa91/view/DragProgressView$2;-><init>(Lcom/papa91/view/DragProgressView;)V

    invoke-virtual {p1, v0}, Lcom/papa91/view/RoundedRectangularProgressView;->setOnProgressListener(Lcom/papa91/view/RoundedRectangularProgressView$OnProgressListener;)V

    return-void
.end method

.method public isRunning()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/view/DragProgressView;->progress:Lcom/papa91/view/RoundedRectangularProgressView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/papa91/view/RoundedRectangularProgressView;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->onSizeChanged(IIII)V

    return-void
.end method

.method public pause()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/view/DragProgressView;->progress:Lcom/papa91/view/RoundedRectangularProgressView;

    invoke-virtual {v0}, Lcom/papa91/view/RoundedRectangularProgressView;->pause()V

    return-void
.end method

.method removeAnimate(Landroid/widget/ImageView;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    sget v0, Lcom/papa91/mix/R$drawable;->ic_gray_jb:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    .line 2
    iget-object v0, p0, Lcom/papa91/view/DragProgressView;->mLayoutRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4
    :cond_0
    new-instance v0, Lcom/papa91/view/DragProgressView$3;

    invoke-direct {v0, p0}, Lcom/papa91/view/DragProgressView$3;-><init>(Lcom/papa91/view/DragProgressView;)V

    iput-object v0, p0, Lcom/papa91/view/DragProgressView;->mLayoutRunnable:Ljava/lang/Runnable;

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public resume()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/papa91/view/DragProgressView;->signal:I

    iget v1, p0, Lcom/papa91/view/DragProgressView;->SIGNAL_MAX:I

    if-ge v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/papa91/view/DragProgressView;->enableSpark()V

    .line 3
    iget-object v0, p0, Lcom/papa91/view/DragProgressView;->progress:Lcom/papa91/view/RoundedRectangularProgressView;

    invoke-virtual {v0}, Lcom/papa91/view/RoundedRectangularProgressView;->resume()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/papa91/view/DragProgressView;->stop()V

    :goto_0
    return-void
.end method

.method public setInterval(III)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/papa91/view/DragProgressView;->init_first_box_time:I

    .line 4
    iput p2, p0, Lcom/papa91/view/DragProgressView;->min_time_interval:I

    .line 5
    iput p3, p0, Lcom/papa91/view/DragProgressView;->max_time_interval:I

    return-void
.end method

.method public setInterval(J)V
    .locals 1

    .line 1
    iput-wide p1, p0, Lcom/papa91/view/DragProgressView;->INTERVAL:J

    .line 2
    iget-object v0, p0, Lcom/papa91/view/DragProgressView;->progress:Lcom/papa91/view/RoundedRectangularProgressView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/papa91/view/RoundedRectangularProgressView;->setInterval(J)V

    :cond_0
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/view/DragProgressView;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setOnProduceListener(Lcom/papa91/view/DragProgressView$OnProduceListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/view/DragProgressView;->mOnProduceListener:Lcom/papa91/view/DragProgressView$OnProduceListener;

    return-void
.end method

.method public setProgress(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/view/DragProgressView;->progress:Lcom/papa91/view/RoundedRectangularProgressView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/papa91/view/RoundedRectangularProgressView;->setProgress(F)V

    :cond_0
    return-void
.end method

.method public setSignal(I)V
    .locals 4

    const/4 v0, 0x0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1
    :cond_0
    iget v1, p0, Lcom/papa91/view/DragProgressView;->SIGNAL_MAX:I

    if-le p1, v1, :cond_1

    move p1, v1

    .line 2
    :cond_1
    :goto_0
    iput p1, p0, Lcom/papa91/view/DragProgressView;->signal:I

    const/4 p1, 0x3

    new-array v1, p1, [Landroid/widget/ImageView;

    .line 3
    iget-object v2, p0, Lcom/papa91/view/DragProgressView;->signal1:Landroid/widget/ImageView;

    aput-object v2, v1, v0

    iget-object v2, p0, Lcom/papa91/view/DragProgressView;->signal2:Landroid/widget/ImageView;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/papa91/view/DragProgressView;->signal3:Landroid/widget/ImageView;

    aput-object v3, v1, v2

    :goto_1
    if-ge v0, p1, :cond_3

    .line 4
    iget v2, p0, Lcom/papa91/view/DragProgressView;->signal:I

    if-ge v0, v2, :cond_2

    .line 5
    aget-object v2, v1, v0

    invoke-virtual {p0, v2}, Lcom/papa91/view/DragProgressView;->startAnimate(Landroid/widget/ImageView;)V

    goto :goto_2

    .line 6
    :cond_2
    aget-object v2, v1, v0

    invoke-virtual {p0, v2}, Lcom/papa91/view/DragProgressView;->removeAnimate(Landroid/widget/ImageView;)V

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 7
    :cond_3
    iget p1, p0, Lcom/papa91/view/DragProgressView;->signal:I

    iget v0, p0, Lcom/papa91/view/DragProgressView;->SIGNAL_MAX:I

    if-lt p1, v0, :cond_4

    .line 8
    invoke-virtual {p0}, Lcom/papa91/view/DragProgressView;->stop()V

    :cond_4
    return-void
.end method

.method public setSignalMax(I)V
    .locals 1

    const/4 v0, 0x3

    .line 1
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/papa91/view/DragProgressView;->SIGNAL_MAX:I

    .line 2
    iget v0, p0, Lcom/papa91/view/DragProgressView;->signal:I

    if-lt v0, p1, :cond_0

    invoke-virtual {p0}, Lcom/papa91/view/DragProgressView;->stop()V

    :cond_0
    return-void
.end method

.method public start()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/papa91/view/DragProgressView;->signal:I

    iget v1, p0, Lcom/papa91/view/DragProgressView;->SIGNAL_MAX:I

    if-lt v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/papa91/view/DragProgressView;->stop()V

    return-void

    .line 3
    :cond_0
    iget v0, p0, Lcom/papa91/view/DragProgressView;->first:I

    if-nez v0, :cond_1

    .line 4
    iget v0, p0, Lcom/papa91/view/DragProgressView;->init_first_box_time:I

    mul-int/lit16 v0, v0, 0x3e8

    const/4 v1, 0x1

    .line 5
    iput v1, p0, Lcom/papa91/view/DragProgressView;->first:I

    goto :goto_0

    .line 6
    :cond_1
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iget v1, p0, Lcom/papa91/view/DragProgressView;->max_time_interval:I

    iget v2, p0, Lcom/papa91/view/DragProgressView;->min_time_interval:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    iget v1, p0, Lcom/papa91/view/DragProgressView;->min_time_interval:I

    add-int/2addr v0, v1

    mul-int/lit16 v0, v0, 0x3e8

    .line 7
    :goto_0
    iget-object v1, p0, Lcom/papa91/view/DragProgressView;->progress:Lcom/papa91/view/RoundedRectangularProgressView;

    if-eqz v1, :cond_2

    int-to-long v2, v0

    .line 8
    invoke-virtual {v1, v2, v3}, Lcom/papa91/view/RoundedRectangularProgressView;->setInterval(J)V

    .line 9
    iget-object v0, p0, Lcom/papa91/view/DragProgressView;->progress:Lcom/papa91/view/RoundedRectangularProgressView;

    invoke-virtual {v0}, Lcom/papa91/view/RoundedRectangularProgressView;->start()V

    .line 10
    :cond_2
    invoke-virtual {p0}, Lcom/papa91/view/DragProgressView;->enableSpark()V

    return-void
.end method

.method startAnimate(Landroid/widget/ImageView;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    sget v0, Lcom/papa91/mix/R$drawable;->gif_gd_gg_animation:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    .line 3
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    return-void
.end method

.method public stop()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/view/DragProgressView;->progress:Lcom/papa91/view/RoundedRectangularProgressView;

    invoke-virtual {v0}, Lcom/papa91/view/RoundedRectangularProgressView;->stop()V

    .line 2
    invoke-virtual {p0}, Lcom/papa91/view/DragProgressView;->disableSpark()V

    return-void
.end method
