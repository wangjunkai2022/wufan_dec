.class public Lcom/join/mgps/activity/VideoSettingActivity;
.super Lcom/BaseActivity;
.source "VideoSettingActivity.java"


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0c05de
.end annotation


# instance fields
.field a:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field b:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field c:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field d:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field e:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field f:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field g:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field h:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field i:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field j:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field k:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field l:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field m:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/BaseActivity;-><init>()V

    return-void
.end method

.method private H0()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/VideoSettingActivity;->e:Landroid/widget/ImageView;

    const v1, 0x7f080079

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/VideoSettingActivity;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/VideoSettingActivity;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/VideoSettingActivity;->k:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/VideoSettingActivity;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/VideoSettingActivity;->m:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 7
    invoke-static {p0}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/pref/h;->e()I

    move-result v0

    .line 8
    invoke-static {p0}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/pref/h;->z()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const v4, 0x7f08069e

    if-eqz v0, :cond_2

    if-eq v0, v3, :cond_1

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/VideoSettingActivity;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/VideoSettingActivity;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/VideoSettingActivity;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :goto_0
    if-eqz v1, :cond_5

    if-eq v1, v3, :cond_4

    if-eq v1, v2, :cond_3

    goto :goto_1

    .line 12
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/VideoSettingActivity;->m:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    .line 13
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/activity/VideoSettingActivity;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    .line 14
    :cond_5
    iget-object v0, p0, Lcom/join/mgps/activity/VideoSettingActivity;->k:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :goto_1
    return-void
.end method


# virtual methods
.method E0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/join/mgps/pref/h;->n0(I)V

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/activity/VideoSettingActivity;->H0()V

    return-void
.end method

.method F0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/join/mgps/pref/h;->n0(I)V

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/activity/VideoSettingActivity;->H0()V

    return-void
.end method

.method G0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/join/mgps/pref/h;->n0(I)V

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/activity/VideoSettingActivity;->H0()V

    return-void
.end method

.method I0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/join/mgps/pref/h;->T(I)V

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/activity/VideoSettingActivity;->H0()V

    return-void
.end method

.method J0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/join/mgps/pref/h;->T(I)V

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/activity/VideoSettingActivity;->H0()V

    return-void
.end method

.method K0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/join/mgps/pref/h;->T(I)V

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/activity/VideoSettingActivity;->H0()V

    return-void
.end method

.method afterview()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/VideoSettingActivity;->a:Landroid/widget/TextView;

    const-string v1, "\u89c6\u9891\u64ad\u653e\u8bbe\u7f6e"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/activity/VideoSettingActivity;->H0()V

    return-void
.end method

.method back_image()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
