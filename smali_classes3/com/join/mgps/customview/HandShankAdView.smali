.class public Lcom/join/mgps/customview/HandShankAdView;
.super Landroid/widget/LinearLayout;
.source "HandShankAdView.java"

# interfaces
.implements Lcom/join/mgps/customview/LoadingLayout$b;


# instance fields
.field protected a:Lcom/join/mgps/customview/LoadingLayout;

.field private b:Landroid/widget/LinearLayout;

.field private final c:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Lcom/join/mgps/customview/HandShankAdView$b;

    invoke-direct {p1, p0}, Lcom/join/mgps/customview/HandShankAdView$b;-><init>(Lcom/join/mgps/customview/HandShankAdView;)V

    iput-object p1, p0, Lcom/join/mgps/customview/HandShankAdView;->c:Landroid/view/View$OnClickListener;

    .line 3
    invoke-direct {p0}, Lcom/join/mgps/customview/HandShankAdView;->h()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 4
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 5
    new-instance p1, Lcom/join/mgps/customview/HandShankAdView$b;

    invoke-direct {p1, p0}, Lcom/join/mgps/customview/HandShankAdView$b;-><init>(Lcom/join/mgps/customview/HandShankAdView;)V

    iput-object p1, p0, Lcom/join/mgps/customview/HandShankAdView;->c:Landroid/view/View$OnClickListener;

    .line 6
    invoke-direct {p0}, Lcom/join/mgps/customview/HandShankAdView;->h()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 7
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 8
    new-instance p1, Lcom/join/mgps/customview/HandShankAdView$b;

    invoke-direct {p1, p0}, Lcom/join/mgps/customview/HandShankAdView$b;-><init>(Lcom/join/mgps/customview/HandShankAdView;)V

    iput-object p1, p0, Lcom/join/mgps/customview/HandShankAdView;->c:Landroid/view/View$OnClickListener;

    .line 9
    invoke-direct {p0}, Lcom/join/mgps/customview/HandShankAdView;->h()V

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/customview/HandShankAdView;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/HandShankAdView;->c:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method static synthetic b(Lcom/join/mgps/customview/HandShankAdView;)Landroid/widget/LinearLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/HandShankAdView;->b:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic c(Lcom/join/mgps/customview/HandShankAdView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/customview/HandShankAdView;->g()V

    return-void
.end method

.method static synthetic d(Lcom/join/mgps/customview/HandShankAdView;Lcom/join/mgps/dto/BannerBean;)Lcom/join/mgps/Util/IntentDateBean;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/HandShankAdView;->e(Lcom/join/mgps/dto/BannerBean;)Lcom/join/mgps/Util/IntentDateBean;

    move-result-object p0

    return-object p0
.end method

.method private e(Lcom/join/mgps/dto/BannerBean;)Lcom/join/mgps/Util/IntentDateBean;
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/dto/BannerBean;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    move-result-object p1

    return-object p1
.end method

.method private g()V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/join/mgps/customview/HandShankAdView$e;

    invoke-direct {v1, p0}, Lcom/join/mgps/customview/HandShankAdView$e;-><init>(Lcom/join/mgps/customview/HandShankAdView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private h()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0099

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090983

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/LoadingLayout;

    iput-object v0, p0, Lcom/join/mgps/customview/HandShankAdView;->a:Lcom/join/mgps/customview/LoadingLayout;

    .line 3
    invoke-virtual {v0, p0}, Lcom/join/mgps/customview/LoadingLayout;->setRefreshCallBackListener(Lcom/join/mgps/customview/LoadingLayout$b;)V

    const v0, 0x7f090927

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/customview/HandShankAdView;->b:Landroid/widget/LinearLayout;

    return-void
.end method


# virtual methods
.method public callBack()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/customview/HandShankAdView;->k()V

    .line 2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 3
    instance-of v1, v0, Lcom/join/mgps/activity/HandShankYesActivity;

    if-eqz v1, :cond_0

    .line 4
    check-cast v0, Lcom/join/mgps/activity/HandShankYesActivity;

    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/activity/HandShankYesActivity;->a1()V

    goto :goto_0

    .line 6
    :cond_0
    instance-of v1, v0, Lcom/join/mgps/activity/HandShankNoActivity;

    if-eqz v1, :cond_1

    .line 7
    check-cast v0, Lcom/join/mgps/activity/HandShankNoActivity;

    .line 8
    invoke-virtual {v0}, Lcom/join/mgps/activity/HandShankNoActivity;->Z0()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected f()V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/join/mgps/customview/HandShankAdView$f;

    invoke-direct {v1, p0}, Lcom/join/mgps/customview/HandShankAdView$f;-><init>(Lcom/join/mgps/customview/HandShankAdView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public i()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/customview/HandShankAdView;->g()V

    return-void
.end method

.method protected j()V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/join/mgps/customview/HandShankAdView$d;

    invoke-direct {v1, p0}, Lcom/join/mgps/customview/HandShankAdView$d;-><init>(Lcom/join/mgps/customview/HandShankAdView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected k()V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/join/mgps/customview/HandShankAdView$c;

    invoke-direct {v1, p0}, Lcom/join/mgps/customview/HandShankAdView$c;-><init>(Lcom/join/mgps/customview/HandShankAdView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public l()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/customview/HandShankAdView;->g()V

    return-void
.end method

.method public m(Lcom/join/mgps/dto/HandShankAdBean;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/join/mgps/customview/HandShankAdView$a;

    invoke-direct {v1, p0, p1}, Lcom/join/mgps/customview/HandShankAdView$a;-><init>(Lcom/join/mgps/customview/HandShankAdView;Lcom/join/mgps/dto/HandShankAdBean;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
