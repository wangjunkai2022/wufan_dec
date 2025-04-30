.class public Lcom/join/mgps/customview/ReboundFrameLayout;
.super Landroid/widget/FrameLayout;
.source "ReboundFrameLayout.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/facebook/rebound/m;


# instance fields
.field private a:I

.field private b:I

.field private c:Lcom/facebook/rebound/i;

.field private d:Lcom/facebook/rebound/o;

.field private e:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x64

    .line 2
    iput p1, p0, Lcom/join/mgps/customview/ReboundFrameLayout;->a:I

    const/16 p1, 0xa

    .line 3
    iput p1, p0, Lcom/join/mgps/customview/ReboundFrameLayout;->b:I

    .line 4
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/customview/ReboundFrameLayout;->e:Landroid/os/Handler;

    .line 5
    invoke-direct {p0}, Lcom/join/mgps/customview/ReboundFrameLayout;->e()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p1, 0x64

    .line 7
    iput p1, p0, Lcom/join/mgps/customview/ReboundFrameLayout;->a:I

    const/16 p1, 0xa

    .line 8
    iput p1, p0, Lcom/join/mgps/customview/ReboundFrameLayout;->b:I

    .line 9
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/customview/ReboundFrameLayout;->e:Landroid/os/Handler;

    .line 10
    invoke-direct {p0}, Lcom/join/mgps/customview/ReboundFrameLayout;->e()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p1, 0x64

    .line 12
    iput p1, p0, Lcom/join/mgps/customview/ReboundFrameLayout;->a:I

    const/16 p1, 0xa

    .line 13
    iput p1, p0, Lcom/join/mgps/customview/ReboundFrameLayout;->b:I

    .line 14
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/customview/ReboundFrameLayout;->e:Landroid/os/Handler;

    .line 15
    invoke-direct {p0}, Lcom/join/mgps/customview/ReboundFrameLayout;->e()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/16 p1, 0x64

    .line 17
    iput p1, p0, Lcom/join/mgps/customview/ReboundFrameLayout;->a:I

    const/16 p1, 0xa

    .line 18
    iput p1, p0, Lcom/join/mgps/customview/ReboundFrameLayout;->b:I

    .line 19
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/customview/ReboundFrameLayout;->e:Landroid/os/Handler;

    .line 20
    invoke-direct {p0}, Lcom/join/mgps/customview/ReboundFrameLayout;->e()V

    return-void
.end method

.method private e()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/facebook/rebound/o;->m()Lcom/facebook/rebound/o;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/customview/ReboundFrameLayout;->d:Lcom/facebook/rebound/o;

    .line 2
    invoke-virtual {v0}, Lcom/facebook/rebound/c;->d()Lcom/facebook/rebound/i;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/customview/ReboundFrameLayout;->c:Lcom/facebook/rebound/i;

    .line 3
    invoke-virtual {v0, p0}, Lcom/facebook/rebound/i;->a(Lcom/facebook/rebound/m;)Lcom/facebook/rebound/i;

    .line 4
    invoke-virtual {p0, p0}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/customview/ReboundFrameLayout;->c:Lcom/facebook/rebound/i;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/facebook/rebound/i;->x(D)Lcom/facebook/rebound/i;

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/rebound/i;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/facebook/rebound/i;->f()D

    move-result-wide v0

    double-to-float p1, v0

    const v0, 0x3e99999a    # 0.3f

    mul-float p1, p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setScaleY(F)V

    return-void
.end method

.method public b(Lcom/facebook/rebound/i;)V
    .locals 0

    return-void
.end method

.method public c(Lcom/facebook/rebound/i;)V
    .locals 0

    return-void
.end method

.method public d(Lcom/facebook/rebound/i;)V
    .locals 0

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_2

    const-wide/16 v0, 0xc8

    const-wide/16 v2, 0x0

    if-eq p1, p2, :cond_1

    const/4 v4, 0x3

    if-eq p1, v4, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/customview/ReboundFrameLayout;->c:Lcom/facebook/rebound/i;

    invoke-virtual {p1, v2, v3}, Lcom/facebook/rebound/i;->x(D)Lcom/facebook/rebound/i;

    .line 3
    iget-object p1, p0, Lcom/join/mgps/customview/ReboundFrameLayout;->e:Landroid/os/Handler;

    new-instance v2, Lcom/join/mgps/customview/ReboundFrameLayout$b;

    invoke-direct {v2, p0}, Lcom/join/mgps/customview/ReboundFrameLayout$b;-><init>(Lcom/join/mgps/customview/ReboundFrameLayout;)V

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return p2

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/customview/ReboundFrameLayout;->c:Lcom/facebook/rebound/i;

    invoke-virtual {p1, v2, v3}, Lcom/facebook/rebound/i;->x(D)Lcom/facebook/rebound/i;

    .line 5
    iget-object p1, p0, Lcom/join/mgps/customview/ReboundFrameLayout;->e:Landroid/os/Handler;

    new-instance v2, Lcom/join/mgps/customview/ReboundFrameLayout$a;

    invoke-direct {v2, p0}, Lcom/join/mgps/customview/ReboundFrameLayout$a;-><init>(Lcom/join/mgps/customview/ReboundFrameLayout;)V

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return p2

    .line 6
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/customview/ReboundFrameLayout;->c:Lcom/facebook/rebound/i;

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p1, v0, v1}, Lcom/facebook/rebound/i;->x(D)Lcom/facebook/rebound/i;

    return p2
.end method
