.class public Lcom/cmic/sso/sdk/view/LoadingImageView;
.super Landroid/widget/ImageView;
.source "LoadingImageView.java"


# instance fields
.field private a:Landroid/view/animation/Animation;

.field private b:Landroid/view/animation/LinearInterpolator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 10
    iput-object p1, p0, Lcom/cmic/sso/sdk/view/LoadingImageView;->a:Landroid/view/animation/Animation;

    .line 11
    iput-object p1, p0, Lcom/cmic/sso/sdk/view/LoadingImageView;->b:Landroid/view/animation/LinearInterpolator;

    .line 12
    invoke-virtual {p0}, Lcom/cmic/sso/sdk/view/LoadingImageView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lcom/cmic/sso/sdk/view/LoadingImageView;->a:Landroid/view/animation/Animation;

    .line 7
    iput-object p1, p0, Lcom/cmic/sso/sdk/view/LoadingImageView;->b:Landroid/view/animation/LinearInterpolator;

    .line 8
    invoke-virtual {p0}, Lcom/cmic/sso/sdk/view/LoadingImageView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/cmic/sso/sdk/view/LoadingImageView;->a:Landroid/view/animation/Animation;

    .line 3
    iput-object p1, p0, Lcom/cmic/sso/sdk/view/LoadingImageView;->b:Landroid/view/animation/LinearInterpolator;

    .line 4
    invoke-virtual {p0}, Lcom/cmic/sso/sdk/view/LoadingImageView;->a()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "umcsdk_anim_loading"

    invoke-static {v1, v2}, Lcom/cmic/sso/sdk/view/b;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/cmic/sso/sdk/view/LoadingImageView;->a:Landroid/view/animation/Animation;

    .line 2
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lcom/cmic/sso/sdk/view/LoadingImageView;->b:Landroid/view/animation/LinearInterpolator;

    .line 3
    iget-object v1, p0, Lcom/cmic/sso/sdk/view/LoadingImageView;->a:Landroid/view/animation/Animation;

    invoke-virtual {v1, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-void
.end method
