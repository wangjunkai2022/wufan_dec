.class public abstract Lcom/yatoooon/screenadaptation/a;
.super Ljava/lang/Object;
.source "AbsLoadViewHelper.java"


# instance fields
.field protected a:F

.field protected b:F

.field protected c:F

.field protected d:F

.field protected e:I

.field protected f:I

.field protected g:F

.field protected h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;IIFLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p2, p0, Lcom/yatoooon/screenadaptation/a;->e:I

    .line 3
    iput p3, p0, Lcom/yatoooon/screenadaptation/a;->f:I

    .line 4
    iput p4, p0, Lcom/yatoooon/screenadaptation/a;->g:F

    .line 5
    iput-object p5, p0, Lcom/yatoooon/screenadaptation/a;->h:Ljava/lang/String;

    .line 6
    invoke-direct {p0, p1}, Lcom/yatoooon/screenadaptation/a;->j(Landroid/content/Context;)V

    return-void
.end method

.method private j(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/yatoooon/screenadaptation/b;->a(Landroid/content/Context;)[F

    move-result-object p1

    .line 2
    array-length v0, p1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 3
    aget v0, p1, v0

    iput v0, p0, Lcom/yatoooon/screenadaptation/a;->c:F

    const/4 v0, 0x1

    .line 4
    aget v0, p1, v0

    iput v0, p0, Lcom/yatoooon/screenadaptation/a;->d:F

    const/4 v0, 0x2

    .line 5
    aget v0, p1, v0

    iput v0, p0, Lcom/yatoooon/screenadaptation/a;->a:F

    const/4 v0, 0x3

    .line 6
    aget p1, p1, v0

    iput p1, p0, Lcom/yatoooon/screenadaptation/a;->b:F

    :cond_0
    return-void
.end method


# virtual methods
.method public abstract a(I)I
.end method

.method public abstract b(Landroid/view/View;)V
.end method

.method public abstract c(Landroid/view/View;)V
.end method

.method public abstract d(Landroid/view/View;)V
.end method

.method public abstract e(Landroid/view/View;)V
.end method

.method public f(Landroid/view/View;)V
    .locals 1

    .line 1
    new-instance v0, Lt2/c;

    invoke-direct {v0}, Lt2/c;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/yatoooon/screenadaptation/a;->g(Landroid/view/View;Lt2/b;)V

    return-void
.end method

.method public final g(Landroid/view/View;Lt2/b;)V
    .locals 2

    .line 1
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 2
    check-cast p1, Landroid/view/ViewGroup;

    .line 3
    invoke-interface {p2, p1, p0}, Lt2/b;->a(Landroid/view/View;Lcom/yatoooon/screenadaptation/a;)V

    const/4 v0, 0x0

    .line 4
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/yatoooon/screenadaptation/a;->g(Landroid/view/View;Lt2/b;)V

    goto :goto_1

    .line 7
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-interface {p2, v1, p0}, Lt2/b;->a(Landroid/view/View;Lcom/yatoooon/screenadaptation/a;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8
    :cond_1
    invoke-interface {p2, p1, p0}, Lt2/b;->a(Landroid/view/View;Lcom/yatoooon/screenadaptation/a;)V

    :cond_2
    return-void
.end method

.method public abstract h(Landroid/view/View;)V
.end method

.method public i(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/yatoooon/screenadaptation/a;->j(Landroid/content/Context;)V

    return-void
.end method
