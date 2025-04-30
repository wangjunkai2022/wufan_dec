.class public Lcom/join/mgps/activity/NowWufunActivity;
.super Lcom/BaseFragmentActivity;
.source "NowWufunActivity.java"


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0c04fa
.end annotation


# instance fields
.field a:I
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field b:Landroid/widget/FrameLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field c:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field d:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field e:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field f:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field g:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field h:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field i:Lcom/join/mgps/activity/c2;

.field j:Lcom/join/mgps/activity/c2;

.field k:Landroidx/fragment/app/FragmentManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/BaseFragmentActivity;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/join/mgps/activity/NowWufunActivity;->a:I

    return-void
.end method

.method private E0(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/NowWufunActivity;->d:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/join/mgps/activity/NowWufunActivity;->F0(Landroid/widget/TextView;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/NowWufunActivity;->e:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/join/mgps/activity/NowWufunActivity;->F0(Landroid/widget/TextView;)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/NowWufunActivity;->f:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/join/mgps/activity/NowWufunActivity;->F0(Landroid/widget/TextView;)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/NowWufunActivity;->g:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/join/mgps/activity/NowWufunActivity;->F0(Landroid/widget/TextView;)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/NowWufunActivity;->h:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/join/mgps/activity/NowWufunActivity;->F0(Landroid/widget/TextView;)V

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/NowWufunActivity;->h:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/join/mgps/activity/NowWufunActivity;->L0(Landroid/widget/TextView;)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/NowWufunActivity;->g:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/join/mgps/activity/NowWufunActivity;->L0(Landroid/widget/TextView;)V

    goto :goto_0

    .line 8
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/NowWufunActivity;->f:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/join/mgps/activity/NowWufunActivity;->L0(Landroid/widget/TextView;)V

    goto :goto_0

    .line 9
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/activity/NowWufunActivity;->e:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/join/mgps/activity/NowWufunActivity;->L0(Landroid/widget/TextView;)V

    goto :goto_0

    .line 10
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/activity/NowWufunActivity;->d:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/join/mgps/activity/NowWufunActivity;->L0(Landroid/widget/TextView;)V

    :goto_0
    return-void
.end method

.method private F0(Landroid/widget/TextView;)V
    .locals 1

    const-string v0, "#696969"

    .line 1
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, 0x7f080969

    .line 2
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    return-void
.end method

.method private H0(Landroidx/fragment/app/FragmentTransaction;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/NowWufunActivity;->i:Lcom/join/mgps/activity/c2;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/NowWufunActivity;->j:Lcom/join/mgps/activity/c2;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    :cond_1
    return-void
.end method

.method private K0(I)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/NowWufunActivity;->E0(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/NowWufunActivity;->k:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 3
    invoke-direct {p0, v0}, Lcom/join/mgps/activity/NowWufunActivity;->H0(Landroidx/fragment/app/FragmentTransaction;)V

    const v1, 0x7f090536

    if-eqz p1, :cond_2

    const/4 v2, 0x4

    if-eq p1, v2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/NowWufunActivity;->j:Lcom/join/mgps/activity/c2;

    if-nez p1, :cond_1

    .line 5
    new-instance p1, Lcom/join/mgps/activity/c2;

    invoke-direct {p1}, Lcom/join/mgps/activity/c2;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/activity/NowWufunActivity;->j:Lcom/join/mgps/activity/c2;

    .line 6
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const/4 v2, 0x2

    const-string v3, "type"

    .line 7
    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 8
    iget-object v2, p0, Lcom/join/mgps/activity/NowWufunActivity;->j:Lcom/join/mgps/activity/c2;

    invoke-virtual {v2, p1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 9
    iget-object p1, p0, Lcom/join/mgps/activity/NowWufunActivity;->j:Lcom/join/mgps/activity/c2;

    invoke-virtual {v0, v1, p1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_0

    .line 11
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/NowWufunActivity;->i:Lcom/join/mgps/activity/c2;

    if-nez p1, :cond_3

    .line 12
    new-instance p1, Lcom/join/mgps/activity/c2;

    invoke-direct {p1}, Lcom/join/mgps/activity/c2;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/activity/NowWufunActivity;->i:Lcom/join/mgps/activity/c2;

    .line 13
    invoke-virtual {v0, v1, p1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_0

    .line 14
    :cond_3
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 15
    :goto_0
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method

.method private L0(Landroid/widget/TextView;)V
    .locals 1

    const/4 v0, -0x1

    .line 1
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, 0x7f08096a

    .line 2
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    return-void
.end method


# virtual methods
.method D0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    const/4 v0, 0x2

    .line 1
    invoke-direct {p0, v0}, Lcom/join/mgps/activity/NowWufunActivity;->K0(I)V

    return-void
.end method

.method G0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lcom/join/mgps/activity/NowWufunActivity;->K0(I)V

    return-void
.end method

.method I0(Landroid/content/Intent;)V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Receiver;
        actions = {
            "com.intent.nowwufun.everdaytab"
        }
    .end annotation

    const/4 p1, 0x3

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/NowWufunActivity;->K0(I)V

    return-void
.end method

.method J0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/join/mgps/activity/NowWufunActivity;->K0(I)V

    return-void
.end method

.method M0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    const/4 v0, 0x4

    .line 1
    invoke-direct {p0, v0}, Lcom/join/mgps/activity/NowWufunActivity;->K0(I)V

    return-void
.end method

.method N0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    const/4 v0, 0x3

    .line 1
    invoke-direct {p0, v0}, Lcom/join/mgps/activity/NowWufunActivity;->K0(I)V

    return-void
.end method

.method afterviews()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/NowWufunActivity;->c:Landroid/widget/TextView;

    const-string v1, "\u4eca\u65e5\u609f\u996d"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/NowWufunActivity;->k:Landroidx/fragment/app/FragmentManager;

    .line 3
    iget v0, p0, Lcom/join/mgps/activity/NowWufunActivity;->a:I

    invoke-direct {p0, v0}, Lcom/join/mgps/activity/NowWufunActivity;->K0(I)V

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
