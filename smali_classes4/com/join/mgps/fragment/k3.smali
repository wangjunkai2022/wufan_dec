.class public Lcom/join/mgps/fragment/k3;
.super Landroidx/fragment/app/Fragment;
.source "MyShopFragment.java"


# annotations
.annotation build Lorg/androidannotations/annotations/EFragment;
    value = 0x7f0c033b
.end annotation


# instance fields
.field a:Landroid/widget/RadioButton;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field b:Landroid/widget/RadioButton;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field c:Landroid/widget/RadioButton;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field d:Landroid/widget/RadioButton;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field e:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field f:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field g:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field h:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field i:Landroid/widget/FrameLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field j:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field k:Lcom/join/mgps/fragment/o4;

.field l:Lcom/join/mgps/fragment/o4;

.field m:Lcom/join/mgps/fragment/o4;

.field n:Lcom/join/mgps/fragment/o4;

.field o:Lcom/join/mgps/fragment/o4;

.field p:Ljava/lang/String;

.field q:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public M()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/k3;->k:Lcom/join/mgps/fragment/o4;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/join/mgps/fragment/o4;->k0()V

    :cond_0
    return-void
.end method

.method N(Landroidx/fragment/app/FragmentTransaction;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/k3;->k:Lcom/join/mgps/fragment/o4;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/k3;->l:Lcom/join/mgps/fragment/o4;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/fragment/k3;->m:Lcom/join/mgps/fragment/o4;

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/fragment/k3;->n:Lcom/join/mgps/fragment/o4;

    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/fragment/k3;->o:Lcom/join/mgps/fragment/o4;

    if-eqz v0, :cond_4

    .line 10
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    :cond_4
    return-void
.end method

.method O()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/join/mgps/fragment/k3;->q:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/fragment/k3;->a:Landroid/widget/RadioButton;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0603db

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setTextColor(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/k3;->b:Landroid/widget/RadioButton;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setTextColor(I)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/fragment/k3;->d:Landroid/widget/RadioButton;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setTextColor(I)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/fragment/k3;->c:Landroid/widget/RadioButton;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setTextColor(I)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/fragment/k3;->a:Landroid/widget/RadioButton;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0800b7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/fragment/k3;->b:Landroid/widget/RadioButton;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/fragment/k3;->d:Landroid/widget/RadioButton;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 9
    iget-object v0, p0, Lcom/join/mgps/fragment/k3;->c:Landroid/widget/RadioButton;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method P()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/fragment/k3;->O()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/fragment/k3;->b:Landroid/widget/RadioButton;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0602a5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setTextColor(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/k3;->b:Landroid/widget/RadioButton;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0800b6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x3

    .line 4
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/k3;->X(I)V

    return-void
.end method

.method Q()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->isTourist()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/fragment/k3;->O()V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/k3;->d:Landroid/widget/RadioButton;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0602a5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setTextColor(I)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/fragment/k3;->d:Landroid/widget/RadioButton;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0800b6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x4

    .line 5
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/k3;->X(I)V

    return-void

    .line 6
    :cond_1
    :goto_0
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentUtil;->goLogin(Landroid/content/Context;)Z

    return-void
.end method

.method R()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/fragment/k3;->O()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/fragment/k3;->c:Landroid/widget/RadioButton;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0602a5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setTextColor(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/k3;->c:Landroid/widget/RadioButton;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0800b6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x2

    .line 4
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/k3;->X(I)V

    return-void
.end method

.method S()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/fragment/k3;->O()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/fragment/k3;->a:Landroid/widget/RadioButton;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0602a5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setTextColor(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/k3;->a:Landroid/widget/RadioButton;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0800b6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/k3;->X(I)V

    return-void
.end method

.method T()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/fragment/k3;->O()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/fragment/k3;->b:Landroid/widget/RadioButton;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0602a5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setTextColor(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/k3;->b:Landroid/widget/RadioButton;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0800b6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x3

    .line 4
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/k3;->X(I)V

    return-void
.end method

.method U()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->isTourist()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/fragment/k3;->O()V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/k3;->d:Landroid/widget/RadioButton;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0800b6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/fragment/k3;->d:Landroid/widget/RadioButton;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0602a5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setTextColor(I)V

    const/4 v0, 0x4

    .line 5
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/k3;->X(I)V

    return-void

    .line 6
    :cond_1
    :goto_0
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentUtil;->goLogin(Landroid/content/Context;)Z

    return-void
.end method

.method V()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/fragment/k3;->O()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/fragment/k3;->c:Landroid/widget/RadioButton;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0602a5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setTextColor(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/k3;->c:Landroid/widget/RadioButton;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0800b6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x2

    .line 4
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/k3;->X(I)V

    return-void
.end method

.method W()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/fragment/k3;->O()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/fragment/k3;->a:Landroid/widget/RadioButton;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0800b6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/k3;->a:Landroid/widget/RadioButton;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0602a5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setTextColor(I)V

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/k3;->X(I)V

    return-void
.end method

.method X(I)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/k3;->N(Landroidx/fragment/app/FragmentTransaction;)V

    .line 3
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const/4 v2, 0x1

    const v3, 0x7f090534

    const-string v4, "gameid"

    const-string v5, "typeIndex"

    const-string v6, "type"

    if-ne p1, v2, :cond_1

    .line 4
    invoke-virtual {v1, v6, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5
    iget p1, p0, Lcom/join/mgps/fragment/k3;->q:I

    invoke-virtual {v1, v5, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/fragment/k3;->p:Ljava/lang/String;

    invoke-virtual {v1, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Lcom/join/mgps/fragment/k3;->k:Lcom/join/mgps/fragment/o4;

    if-nez p1, :cond_0

    .line 8
    new-instance p1, Lcom/join/mgps/fragment/p4;

    invoke-direct {p1}, Lcom/join/mgps/fragment/p4;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/fragment/k3;->k:Lcom/join/mgps/fragment/o4;

    .line 9
    invoke-virtual {p1, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 10
    iget-object p1, p0, Lcom/join/mgps/fragment/k3;->k:Lcom/join/mgps/fragment/o4;

    invoke-virtual {v0, v3, p1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    goto/16 :goto_1

    .line 11
    :cond_0
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    goto/16 :goto_1

    :cond_1
    const/4 v7, 0x2

    if-ne p1, v7, :cond_3

    .line 12
    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 13
    iget-object p1, p0, Lcom/join/mgps/fragment/k3;->p:Ljava/lang/String;

    invoke-virtual {v1, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iget p1, p0, Lcom/join/mgps/fragment/k3;->q:I

    invoke-virtual {v1, v5, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 15
    iget-object p1, p0, Lcom/join/mgps/fragment/k3;->l:Lcom/join/mgps/fragment/o4;

    if-nez p1, :cond_2

    .line 16
    new-instance p1, Lcom/join/mgps/fragment/p4;

    invoke-direct {p1}, Lcom/join/mgps/fragment/p4;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/fragment/k3;->l:Lcom/join/mgps/fragment/o4;

    .line 17
    invoke-virtual {p1, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 18
    iget-object p1, p0, Lcom/join/mgps/fragment/k3;->l:Lcom/join/mgps/fragment/o4;

    invoke-virtual {v0, v3, p1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    goto/16 :goto_1

    .line 19
    :cond_2
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    goto/16 :goto_1

    :cond_3
    const/4 v7, 0x3

    if-ne p1, v7, :cond_5

    .line 20
    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 21
    iget-object p1, p0, Lcom/join/mgps/fragment/k3;->p:Ljava/lang/String;

    invoke-virtual {v1, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    iget p1, p0, Lcom/join/mgps/fragment/k3;->q:I

    invoke-virtual {v1, v5, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 23
    iget-object p1, p0, Lcom/join/mgps/fragment/k3;->m:Lcom/join/mgps/fragment/o4;

    if-nez p1, :cond_4

    .line 24
    new-instance p1, Lcom/join/mgps/fragment/p4;

    invoke-direct {p1}, Lcom/join/mgps/fragment/p4;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/fragment/k3;->m:Lcom/join/mgps/fragment/o4;

    .line 25
    invoke-virtual {p1, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 26
    iget-object p1, p0, Lcom/join/mgps/fragment/k3;->m:Lcom/join/mgps/fragment/o4;

    invoke-virtual {v0, v3, p1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    goto/16 :goto_1

    .line 27
    :cond_4
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    goto/16 :goto_1

    :cond_5
    const/4 v7, 0x4

    if-ne p1, v7, :cond_9

    .line 28
    sget-object p1, Lcom/join/mgps/rpc/g;->N:Lcom/join/mgps/dto/AccountBean;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result p1

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/Util/b;->isTourist()Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_0

    .line 29
    :cond_6
    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 30
    iget-object p1, p0, Lcom/join/mgps/fragment/k3;->p:Ljava/lang/String;

    invoke-virtual {v1, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    iget p1, p0, Lcom/join/mgps/fragment/k3;->q:I

    invoke-virtual {v1, v5, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 32
    iget-object p1, p0, Lcom/join/mgps/fragment/k3;->n:Lcom/join/mgps/fragment/o4;

    if-nez p1, :cond_7

    .line 33
    new-instance p1, Lcom/join/mgps/fragment/p4;

    invoke-direct {p1}, Lcom/join/mgps/fragment/p4;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/fragment/k3;->n:Lcom/join/mgps/fragment/o4;

    .line 34
    invoke-virtual {p1, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 35
    iget-object p1, p0, Lcom/join/mgps/fragment/k3;->n:Lcom/join/mgps/fragment/o4;

    invoke-virtual {v0, v3, p1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_1

    .line 36
    :cond_7
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_1

    .line 37
    :cond_8
    :goto_0
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/IntentUtil;->goLogin(Landroid/content/Context;)Z

    return-void

    .line 38
    :cond_9
    sget-object p1, Lcom/join/mgps/rpc/g;->N:Lcom/join/mgps/dto/AccountBean;

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result p1

    if-eqz p1, :cond_c

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/Util/b;->isTourist()Z

    move-result p1

    if-eqz p1, :cond_a

    goto :goto_2

    .line 39
    :cond_a
    invoke-virtual {v1, v6, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 40
    iget-object p1, p0, Lcom/join/mgps/fragment/k3;->p:Ljava/lang/String;

    invoke-virtual {v1, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    iget p1, p0, Lcom/join/mgps/fragment/k3;->q:I

    invoke-virtual {v1, v5, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 42
    iget-object p1, p0, Lcom/join/mgps/fragment/k3;->o:Lcom/join/mgps/fragment/o4;

    if-nez p1, :cond_b

    .line 43
    new-instance p1, Lcom/join/mgps/fragment/p4;

    invoke-direct {p1}, Lcom/join/mgps/fragment/p4;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/fragment/k3;->o:Lcom/join/mgps/fragment/o4;

    .line 44
    invoke-virtual {p1, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 45
    iget-object p1, p0, Lcom/join/mgps/fragment/k3;->o:Lcom/join/mgps/fragment/o4;

    invoke-virtual {v0, v3, p1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_1

    .line 46
    :cond_b
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 47
    :goto_1
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void

    .line 48
    :cond_c
    :goto_2
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/IntentUtil;->goLogin(Landroid/content/Context;)Z

    return-void
.end method

.method Z(I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/k3;->N(Landroidx/fragment/app/FragmentTransaction;)V

    .line 3
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    const-string p1, "type"

    .line 4
    invoke-virtual {v1, p1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5
    iget p1, p0, Lcom/join/mgps/fragment/k3;->q:I

    const-string v2, "typeIndex"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/fragment/k3;->p:Ljava/lang/String;

    const-string v2, "gameid"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Lcom/join/mgps/fragment/k3;->o:Lcom/join/mgps/fragment/o4;

    if-nez p1, :cond_0

    .line 8
    new-instance p1, Lcom/join/mgps/fragment/p4;

    invoke-direct {p1}, Lcom/join/mgps/fragment/p4;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/fragment/k3;->o:Lcom/join/mgps/fragment/o4;

    .line 9
    invoke-virtual {p1, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    const p1, 0x7f090534

    .line 10
    iget-object v1, p0, Lcom/join/mgps/fragment/k3;->o:Lcom/join/mgps/fragment/o4;

    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 12
    :cond_1
    :goto_0
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method afterView()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "gameid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/fragment/k3;->p:Ljava/lang/String;

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/join/mgps/fragment/k3;->q:I

    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/k3;->a:Landroid/widget/RadioButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/fragment/k3;->O()V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/fragment/k3;->a:Landroid/widget/RadioButton;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0602a5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setTextColor(I)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/fragment/k3;->a:Landroid/widget/RadioButton;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0800b6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 7
    iget v0, p0, Lcom/join/mgps/fragment/k3;->q:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 8
    iget-object v0, p0, Lcom/join/mgps/fragment/k3;->j:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 9
    invoke-virtual {p0, v1}, Lcom/join/mgps/fragment/k3;->X(I)V

    goto :goto_0

    .line 10
    :cond_0
    sget-object v0, Lcom/join/mgps/rpc/g;->N:Lcom/join/mgps/dto/AccountBean;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->isTourist()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/fragment/k3;->j:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const/4 v0, 0x5

    .line 12
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/k3;->X(I)V

    :goto_0
    return-void

    .line 13
    :cond_2
    :goto_1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentUtil;->goLogin(Landroid/content/Context;)Z

    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V

    if-nez p1, :cond_3

    .line 2
    iget p1, p0, Lcom/join/mgps/fragment/k3;->q:I

    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 3
    iget-object p1, p0, Lcom/join/mgps/fragment/k3;->o:Lcom/join/mgps/fragment/o4;

    if-eqz p1, :cond_2

    .line 4
    sget-object p1, Lcom/join/mgps/rpc/g;->N:Lcom/join/mgps/dto/AccountBean;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/Util/b;->isTourist()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/fragment/k3;->o:Lcom/join/mgps/fragment/o4;

    invoke-virtual {p1}, Lcom/join/mgps/fragment/o4;->j0()V

    goto :goto_1

    .line 6
    :cond_1
    :goto_0
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/IntentUtil;->goLogin(Landroid/content/Context;)Z

    return-void

    .line 7
    :cond_2
    :goto_1
    iget p1, p0, Lcom/join/mgps/fragment/k3;->q:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 8
    iget-object p1, p0, Lcom/join/mgps/fragment/k3;->k:Lcom/join/mgps/fragment/o4;

    if-eqz p1, :cond_3

    .line 9
    invoke-virtual {p1}, Lcom/join/mgps/fragment/o4;->i0()V

    :cond_3
    return-void
.end method
