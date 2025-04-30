.class public Lcom/netease/nis/quicklogin/utils/LoginUiHelper;
.super Ljava/lang/Object;
.source "LoginUiHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/nis/quicklogin/utils/LoginUiHelper$CustomViewListener;,
        Lcom/netease/nis/quicklogin/utils/LoginUiHelper$g;
    }
.end annotation


# instance fields
.field private a:Landroid/app/Application$ActivityLifecycleCallbacks;

.field private b:Landroid/content/Context;

.field private c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

.field private d:Lcom/netease/nis/quicklogin/utils/h;

.field private e:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/CheckBox;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/CheckBox;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/RelativeLayout;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/RelativeLayout;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/RelativeLayout;",
            ">;"
        }
    .end annotation
.end field

.field private k:Z

.field private l:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private n:Lcom/netease/nis/quicklogin/view/PlayerView;

.field private o:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->k:Z

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->b:Landroid/content/Context;

    .line 4
    invoke-static {p1}, Lcom/netease/nis/quicklogin/utils/h;->a(Landroid/content/Context;)Lcom/netease/nis/quicklogin/utils/h;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->d:Lcom/netease/nis/quicklogin/utils/h;

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/netease/nis/quicklogin/utils/LoginUiHelper;Lcom/netease/nis/quicklogin/view/PlayerView;)Lcom/netease/nis/quicklogin/view/PlayerView;
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->n:Lcom/netease/nis/quicklogin/view/PlayerView;

    return-object p1
.end method

.method static synthetic a(Lcom/netease/nis/quicklogin/utils/LoginUiHelper;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->l:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic a(Lcom/netease/nis/quicklogin/utils/LoginUiHelper;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->m:Ljava/lang/ref/WeakReference;

    return-object p1
.end method

.method private a()V
    .locals 1

    .line 98
    new-instance v0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$e;

    invoke-direct {v0, p0}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$e;-><init>(Lcom/netease/nis/quicklogin/utils/LoginUiHelper;)V

    iput-object v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->a:Landroid/app/Application$ActivityLifecycleCallbacks;

    return-void
.end method

.method private a(II)V
    .locals 1

    .line 32
    :try_start_0
    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getClickEventListener()Lcom/netease/nis/quicklogin/listener/ClickEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getClickEventListener()Lcom/netease/nis/quicklogin/listener/ClickEventListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/netease/nis/quicklogin/listener/ClickEventListener;->onClick(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 34
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private a(Landroid/app/Activity;)V
    .locals 3

    .line 103
    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getCustomViewHolders()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 104
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$g;

    .line 105
    iget-object v2, v1, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$g;->a:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 106
    invoke-direct {p0, p1, v1}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->a(Landroid/app/Activity;Lcom/netease/nis/quicklogin/utils/LoginUiHelper$g;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private a(Landroid/app/Activity;I)V
    .locals 5

    .line 35
    sget v0, Lcom/netease/nis/quicklogin/R$id;->yd_ll_protocol:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_14

    .line 36
    sget v1, Lcom/netease/nis/quicklogin/R$id;->yd_cb_privacy:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 37
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->e:Ljava/lang/ref/WeakReference;

    .line 38
    sget v2, Lcom/netease/nis/quicklogin/R$id;->yd_rl_privacy:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 39
    iget-object v3, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v3}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->isHidePrivacyCheckBox()Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v2, :cond_1

    const/16 v3, 0x8

    .line 40
    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 41
    :cond_0
    iget-object v3, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v3}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getCheckBoxGravity()I

    move-result v3

    if-eqz v3, :cond_1

    .line 42
    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 43
    iget-object v4, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v4}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getCheckBoxGravity()I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 44
    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 45
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v2}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getPrivacyCheckBoxWidth()I

    move-result v2

    if-eqz v2, :cond_2

    .line 46
    invoke-virtual {v1}, Landroid/widget/CheckBox;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v3}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getPrivacyCheckBoxWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-static {p1, v3}, Lcom/netease/nis/quicklogin/utils/i;->a(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 47
    :cond_2
    iget-object v2, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v2}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getPrivacyCheckBoxHeight()I

    move-result v2

    if-eqz v2, :cond_3

    .line 48
    invoke-virtual {v1}, Landroid/widget/CheckBox;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v2}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getPrivacyCheckBoxHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-static {p1, v2}, Lcom/netease/nis/quicklogin/utils/i;->a(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 49
    :cond_3
    iget-object v1, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->f:Ljava/lang/ref/WeakReference;

    invoke-static {v1}, Lcom/netease/nis/quicklogin/utils/a;->a(Ljava/lang/ref/WeakReference;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    .line 50
    iget-object v1, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 51
    :cond_4
    iget-object v1, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->e:Ljava/lang/ref/WeakReference;

    invoke-static {v1}, Lcom/netease/nis/quicklogin/utils/a;->a(Ljava/lang/ref/WeakReference;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 52
    iget-object v1, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->isPrivacyState()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 53
    iget-object v1, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    const-string v1, "97cf3773301f48ca974131655f05bdfa"

    .line 54
    invoke-static {p1, v1}, Lcom/netease/nis/quicklogin/utils/d;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 55
    iget-object v1, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getCheckedImageDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 56
    iget-object v1, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v3}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getCheckedImageDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 57
    :cond_5
    iget-object v1, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getCheckedImageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 58
    iget-object v1, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->d:Lcom/netease/nis/quicklogin/utils/h;

    iget-object v4, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v4}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getCheckedImageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/netease/nis/quicklogin/utils/h;->c(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setBackgroundResource(I)V

    goto :goto_1

    .line 59
    :cond_6
    iget-object v1, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 60
    iget-object v1, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getUnCheckedImageNameDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 61
    iget-object v1, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v3}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getUnCheckedImageNameDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 62
    :cond_7
    iget-object v1, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getUnCheckedImageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 63
    iget-object v1, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->d:Lcom/netease/nis/quicklogin/utils/h;

    iget-object v4, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v4}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getUnCheckedImageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/netease/nis/quicklogin/utils/h;->c(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setBackgroundResource(I)V

    .line 64
    :cond_8
    :goto_1
    iget-object v1, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    new-instance v3, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$b;

    invoke-direct {v3, p0, p1}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$b;-><init>(Lcom/netease/nis/quicklogin/utils/LoginUiHelper;Landroid/app/Activity;)V

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 65
    :cond_9
    sget p1, Lcom/netease/nis/quicklogin/R$id;->yd_tv_privacy:I

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_14

    .line 66
    new-instance v1, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$c;

    invoke-direct {v1, p0}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$c;-><init>(Lcom/netease/nis/quicklogin/utils/LoginUiHelper;)V

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    iget-object v1, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getPrivacyLineSpacingAdd()F

    move-result v1

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_b

    .line 68
    iget-object v1, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->b:Landroid/content/Context;

    iget-object v4, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v4}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getPrivacyLineSpacingAdd()F

    move-result v4

    invoke-static {v1, v4}, Lcom/netease/nis/quicklogin/utils/i;->a(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    iget-object v4, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 69
    invoke-virtual {v4}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getPrivacyLineSpacingMul()F

    move-result v4

    cmpl-float v3, v4, v3

    if-lez v3, :cond_a

    iget-object v3, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v3}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getPrivacyLineSpacingMul()F

    move-result v3

    goto :goto_2

    :cond_a
    const/high16 v3, 0x3f800000    # 1.0f

    .line 70
    :goto_2
    invoke-virtual {p1, v1, v3}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 71
    :cond_b
    iget-object v1, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-static {p2, v1, p1}, Lcom/netease/nis/quicklogin/utils/a;->a(ILcom/netease/nis/quicklogin/helper/UnifyUiConfig;Landroid/widget/TextView;)V

    .line 72
    iget-object p2, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {p2}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getPrivacySize()I

    move-result p2

    if-eqz p2, :cond_c

    .line 73
    iget-object p2, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {p2}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getPrivacySize()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_3

    .line 74
    :cond_c
    iget-object p2, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {p2}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getPrivacyDpSize()I

    move-result p2

    if-eqz p2, :cond_d

    .line 75
    iget-object p2, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {p2}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getPrivacyDpSize()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, v2, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 76
    :cond_d
    :goto_3
    iget-object p2, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {p2}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getPrivacyTextMarginLeft()I

    move-result p2

    if-eqz p2, :cond_e

    .line 77
    iget-object p2, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {p2}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getPrivacyTextMarginLeft()I

    move-result p2

    invoke-static {p1, p2}, Lcom/netease/nis/quicklogin/utils/i;->b(Landroid/view/View;I)V

    .line 78
    :cond_e
    iget-object p2, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {p2}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getPrivacyTopYOffset()I

    move-result p2

    if-eqz p2, :cond_f

    iget-object p2, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {p2}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getPrivacyBottomYOffset()I

    move-result p2

    if-nez p2, :cond_f

    .line 79
    iget-object p2, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 80
    invoke-virtual {p2}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getPrivacyTopYOffset()I

    move-result p2

    iget-object v1, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->b:Landroid/content/Context;

    .line 81
    invoke-static {v1}, Lcom/netease/nis/quicklogin/utils/i;->b(Landroid/content/Context;)I

    move-result v1

    add-int/2addr p2, v1

    .line 82
    invoke-static {v0, p2}, Lcom/netease/nis/quicklogin/utils/i;->d(Landroid/view/View;I)V

    .line 83
    :cond_f
    iget-object p2, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {p2}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getPrivacyBottomYOffset()I

    move-result p2

    if-eqz p2, :cond_10

    .line 84
    iget-object p2, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 85
    invoke-virtual {p2}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getPrivacyBottomYOffset()I

    move-result p2

    .line 86
    invoke-static {v0, p2}, Lcom/netease/nis/quicklogin/utils/i;->a(Landroid/view/View;I)V

    .line 87
    :cond_10
    iget-object p2, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {p2}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getPrivacyMarginLeft()I

    move-result p2

    if-eqz p2, :cond_11

    .line 88
    iget-object p2, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {p2}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getPrivacyMarginLeft()I

    move-result p2

    invoke-static {v0, p2}, Lcom/netease/nis/quicklogin/utils/i;->e(Landroid/view/View;I)V

    goto :goto_4

    .line 89
    :cond_11
    invoke-static {v0}, Lcom/netease/nis/quicklogin/utils/i;->c(Landroid/view/View;)V

    .line 90
    :goto_4
    iget-object p2, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {p2}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getPrivacyMarginRight()I

    move-result p2

    if-eqz p2, :cond_12

    .line 91
    iget-object p2, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {p2}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getPrivacyMarginRight()I

    move-result p2

    invoke-static {p1, p2}, Lcom/netease/nis/quicklogin/utils/i;->c(Landroid/view/View;I)V

    .line 92
    :cond_12
    iget-object p2, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {p2}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->isPrivacyTextGravityCenter()Z

    move-result p2

    if-eqz p2, :cond_13

    const/16 p2, 0x11

    .line 93
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setGravity(I)V

    .line 94
    :cond_13
    iget-object p2, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {p2}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getPrivacyTextLayoutGravity()I

    move-result p2

    if-eqz p2, :cond_14

    .line 95
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout$LayoutParams;

    .line 96
    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getPrivacyTextLayoutGravity()I

    move-result v0

    iput v0, p2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 97
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_14
    return-void
.end method

.method private a(Landroid/app/Activity;Landroid/view/View;)V
    .locals 1

    .line 99
    sget v0, Lcom/netease/nis/quicklogin/R$id;->yd_rl_root:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_0

    .line 100
    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->n:Lcom/netease/nis/quicklogin/view/PlayerView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 101
    invoke-virtual {p1, p2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;I)V

    .line 102
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->h:Ljava/lang/ref/WeakReference;

    :cond_0
    return-void
.end method

.method private a(Landroid/app/Activity;Lcom/netease/nis/quicklogin/utils/LoginUiHelper$g;)V
    .locals 2

    .line 107
    iget-object v0, p2, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$g;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_2

    .line 108
    iget v0, p2, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$g;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 109
    sget v0, Lcom/netease/nis/quicklogin/R$id;->yd_rl_navigation:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    .line 110
    iget-object v0, p2, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$g;->a:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 111
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->i:Ljava/lang/ref/WeakReference;

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    .line 112
    sget v0, Lcom/netease/nis/quicklogin/R$id;->yd_rl_body:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    .line 113
    iget-object v0, p2, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$g;->a:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 114
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->j:Ljava/lang/ref/WeakReference;

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 115
    sget v0, Lcom/netease/nis/quicklogin/R$id;->yd_rl_root:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    .line 116
    iget-object v0, p2, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$g;->a:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 117
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->h:Ljava/lang/ref/WeakReference;

    .line 118
    :cond_2
    :goto_0
    iget-object p1, p2, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$g;->a:Landroid/view/View;

    if-eqz p1, :cond_3

    .line 119
    new-instance v0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$f;

    invoke-direct {v0, p0, p2}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$f;-><init>(Lcom/netease/nis/quicklogin/utils/LoginUiHelper;Lcom/netease/nis/quicklogin/utils/LoginUiHelper$g;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    return-void
.end method

.method private a(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 3

    .line 120
    instance-of v0, p1, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/netease/nis/quicklogin/ui/ProtocolDetailActivity;

    if-eqz v0, :cond_3

    :cond_0
    const-string v0, "onActivityResumed"

    .line 121
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, " ---> "

    const-string v2, "[ActivityLifecycle] "

    if-nez v0, :cond_2

    const-string v0, "onActivityDestroyed"

    .line 122
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 123
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/nis/basesdk/Logger;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 124
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " isNotSetLoginUi="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->k:Z

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/nis/basesdk/Logger;->d(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private a(Landroid/app/Activity;Z)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->j(Landroid/app/Activity;)V

    .line 26
    invoke-direct {p0, p1}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->h(Landroid/app/Activity;)V

    .line 27
    invoke-direct {p0, p1}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->i(Landroid/app/Activity;)V

    .line 28
    invoke-direct {p0, p1}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->f(Landroid/app/Activity;)V

    .line 29
    invoke-direct {p0, p1}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->g(Landroid/app/Activity;)V

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->a(Landroid/app/Activity;I)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x2

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->a(Landroid/app/Activity;I)V

    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/netease/nis/quicklogin/utils/LoginUiHelper;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->a(II)V

    return-void
.end method

.method static synthetic a(Lcom/netease/nis/quicklogin/utils/LoginUiHelper;Landroid/app/Activity;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->d(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic a(Lcom/netease/nis/quicklogin/utils/LoginUiHelper;Landroid/app/Activity;Landroid/view/View;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->a(Landroid/app/Activity;Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/netease/nis/quicklogin/utils/LoginUiHelper;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->a(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/netease/nis/quicklogin/utils/LoginUiHelper;Landroid/app/Activity;Z)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->a(Landroid/app/Activity;Z)V

    return-void
.end method

.method static synthetic a(Lcom/netease/nis/quicklogin/utils/LoginUiHelper;Z)Z
    .locals 0

    .line 9
    iput-boolean p1, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->k:Z

    return p1
.end method

.method static synthetic b(Lcom/netease/nis/quicklogin/utils/LoginUiHelper;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->m:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method private b(Landroid/app/Activity;)Z
    .locals 1

    .line 7
    instance-of v0, p1, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;

    if-nez v0, :cond_1

    instance-of p1, p1, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method static synthetic b(Lcom/netease/nis/quicklogin/utils/LoginUiHelper;Landroid/app/Activity;)Z
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->n(Landroid/app/Activity;)Z

    move-result p0

    return p0
.end method

.method static synthetic c(Lcom/netease/nis/quicklogin/utils/LoginUiHelper;)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    return-object p0
.end method

.method private c(Landroid/app/Activity;)V
    .locals 8

    .line 3
    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getBackgroundImage()Ljava/lang/String;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getBackgroundImageDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 5
    iget-object v2, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v2}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getBackgroundGif()Ljava/lang/String;

    move-result-object v2

    .line 6
    iget-object v3, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v3}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getBackgroundGifDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    if-eqz v1, :cond_3

    .line 8
    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    if-nez v3, :cond_3

    .line 9
    sget v4, Lcom/netease/nis/quicklogin/R$id;->yd_rl_root:I

    invoke-virtual {p1, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 10
    instance-of v6, p1, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;

    if-eqz v6, :cond_1

    .line 11
    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 12
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    :cond_1
    if-eqz v1, :cond_2

    .line 13
    invoke-virtual {v4, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 14
    :cond_2
    iget-object v1, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->d:Lcom/netease/nis/quicklogin/utils/h;

    invoke-virtual {v1, v0}, Lcom/netease/nis/quicklogin/utils/h;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 15
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getBackgroundVideo()Ljava/lang/String;

    move-result-object v0

    .line 16
    iget-object v1, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getBackgroundVideoImage()Ljava/lang/String;

    move-result-object v1

    .line 17
    iget-object v4, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v4}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getBackgroundVideoImageDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 18
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const/4 v7, -0x1

    if-eqz v6, :cond_7

    if-eqz v3, :cond_4

    goto :goto_2

    .line 19
    :cond_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 20
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    if-eqz v4, :cond_9

    .line 21
    :cond_5
    sget v2, Lcom/netease/nis/quicklogin/R$id;->yd_rl_root:I

    invoke-virtual {p1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    .line 22
    invoke-virtual {p1, v5}, Landroid/widget/RelativeLayout;->setFitsSystemWindows(Z)V

    .line 23
    new-instance v2, Lcom/netease/nis/quicklogin/view/PlayerView;

    iget-object v3, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->b:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/netease/nis/quicklogin/view/PlayerView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->n:Lcom/netease/nis/quicklogin/view/PlayerView;

    .line 24
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 25
    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getBackgroundVideoImageDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 26
    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->n:Lcom/netease/nis/quicklogin/view/PlayerView;

    invoke-virtual {v0, v4}, Lcom/netease/nis/quicklogin/view/PlayerView;->setLoadingImageResId(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 27
    :cond_6
    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->n:Lcom/netease/nis/quicklogin/view/PlayerView;

    iget-object v2, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->d:Lcom/netease/nis/quicklogin/utils/h;

    invoke-virtual {v2, v1}, Lcom/netease/nis/quicklogin/utils/h;->c(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netease/nis/quicklogin/view/PlayerView;->setLoadingImageResId(I)V

    .line 28
    :goto_1
    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->n:Lcom/netease/nis/quicklogin/view/PlayerView;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 29
    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->n:Lcom/netease/nis/quicklogin/view/PlayerView;

    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/view/PlayerView;->e()V

    .line 30
    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->n:Lcom/netease/nis/quicklogin/view/PlayerView;

    invoke-virtual {p1, v0, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;I)V

    .line 31
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->h:Ljava/lang/ref/WeakReference;

    goto :goto_4

    .line 32
    :cond_7
    :goto_2
    sget v0, Lcom/netease/nis/quicklogin/R$id;->yd_rl_root:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    .line 33
    invoke-virtual {p1, v5}, Landroid/widget/RelativeLayout;->setFitsSystemWindows(Z)V

    .line 34
    new-instance v0, Lcom/netease/nis/quicklogin/view/GifView;

    iget-object v1, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/netease/nis/quicklogin/view/GifView;-><init>(Landroid/content/Context;)V

    if-eqz v3, :cond_8

    .line 35
    invoke-virtual {v0, v3}, Lcom/netease/nis/quicklogin/view/GifView;->setGifDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 36
    :cond_8
    iget-object v1, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->d:Lcom/netease/nis/quicklogin/utils/h;

    invoke-virtual {v1, v2}, Lcom/netease/nis/quicklogin/utils/h;->c(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netease/nis/quicklogin/view/GifView;->setGifResId(I)V

    .line 37
    :goto_3
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 38
    invoke-virtual {p1, v0, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;I)V

    .line 39
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->h:Ljava/lang/ref/WeakReference;

    :cond_9
    :goto_4
    return-void
.end method

.method static synthetic c(Lcom/netease/nis/quicklogin/utils/LoginUiHelper;Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic d(Lcom/netease/nis/quicklogin/utils/LoginUiHelper;)Lcom/netease/nis/quicklogin/view/PlayerView;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->n:Lcom/netease/nis/quicklogin/view/PlayerView;

    return-object p0
.end method

.method private d(Landroid/app/Activity;)V
    .locals 2

    .line 3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    .line 5
    invoke-virtual {p1, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 7
    invoke-virtual {p1, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 8
    invoke-virtual {p1, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic d(Lcom/netease/nis/quicklogin/utils/LoginUiHelper;Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->l(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic e(Lcom/netease/nis/quicklogin/utils/LoginUiHelper;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->h:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method private e(Landroid/app/Activity;)V
    .locals 3

    .line 3
    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getActivityEnterAnimation()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getActivityExitAnimation()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getActivityEnterAnimation()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->d:Lcom/netease/nis/quicklogin/utils/h;

    iget-object v2, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v2}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getActivityEnterAnimation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/netease/nis/quicklogin/utils/h;->a(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 6
    :goto_0
    iget-object v2, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v2}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getActivityExitAnimation()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 7
    iget-object v1, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->d:Lcom/netease/nis/quicklogin/utils/h;

    iget-object v2, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v2}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getActivityExitAnimation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netease/nis/quicklogin/utils/h;->a(Ljava/lang/String;)I

    move-result v1

    .line 8
    :cond_2
    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_3
    return-void
.end method

.method static synthetic e(Lcom/netease/nis/quicklogin/utils/LoginUiHelper;Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->m(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic f(Lcom/netease/nis/quicklogin/utils/LoginUiHelper;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->i:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method private f(Landroid/app/Activity;)V
    .locals 2

    .line 3
    sget v0, Lcom/netease/nis/quicklogin/R$id;->yd_tv_brand:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_6

    .line 4
    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getSloganSize()I

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getSloganSize()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getSloganDpSize()I

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getSloganDpSize()I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 8
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getSloganColor()I

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getSloganColor()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getSloganTopYOffset()I

    move-result v0

    if-eqz v0, :cond_3

    .line 11
    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getSloganTopYOffset()I

    move-result v0

    invoke-static {p1, v0}, Lcom/netease/nis/quicklogin/utils/i;->d(Landroid/view/View;I)V

    .line 12
    :cond_3
    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getSloganBottomYOffset()I

    move-result v0

    if-eqz v0, :cond_4

    .line 13
    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getSloganBottomYOffset()I

    move-result v0

    invoke-static {p1, v0}, Lcom/netease/nis/quicklogin/utils/i;->a(Landroid/view/View;I)V

    .line 14
    :cond_4
    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getSloganXOffset()I

    move-result v0

    if-eqz v0, :cond_5

    .line 15
    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getSloganXOffset()I

    move-result v0

    invoke-static {p1, v0}, Lcom/netease/nis/quicklogin/utils/i;->e(Landroid/view/View;I)V

    goto :goto_1

    .line 16
    :cond_5
    invoke-static {p1}, Lcom/netease/nis/quicklogin/utils/i;->b(Landroid/view/View;)V

    :cond_6
    :goto_1
    return-void
.end method

.method static synthetic f(Lcom/netease/nis/quicklogin/utils/LoginUiHelper;Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->e(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic g(Lcom/netease/nis/quicklogin/utils/LoginUiHelper;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->j:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method private g(Landroid/app/Activity;)V
    .locals 3

    .line 3
    sget v0, Lcom/netease/nis/quicklogin/R$id;->yd_btn_oauth:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/nis/quicklogin/view/FastClickButton;

    if-eqz v0, :cond_a

    .line 4
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setAllCaps(Z)V

    .line 6
    iget-object v1, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getLoginBtnWidth()I

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v2}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getLoginBtnWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-static {p1, v2}, Lcom/netease/nis/quicklogin/utils/i;->a(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 8
    :cond_0
    iget-object v1, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getLoginBtnHeight()I

    move-result v1

    if-eqz v1, :cond_1

    .line 9
    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v2}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getLoginBtnHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-static {p1, v2}, Lcom/netease/nis/quicklogin/utils/i;->a(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 10
    :cond_1
    iget-object v1, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getLoginBtnText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 11
    iget-object v1, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getLoginBtnText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 12
    :cond_2
    iget-object v1, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getLoginBtnTextColor()I

    move-result v1

    if-eqz v1, :cond_3

    .line 13
    iget-object v1, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getLoginBtnTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 14
    :cond_3
    iget-object v1, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getLoginBtnTextSize()I

    move-result v1

    if-eqz v1, :cond_4

    .line 15
    iget-object v1, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getLoginBtnTextSize()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    goto :goto_0

    .line 16
    :cond_4
    iget-object v1, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getLoginBtnTextDpSize()I

    move-result v1

    if-eqz v1, :cond_5

    .line 17
    iget-object v1, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getLoginBtnTextDpSize()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/widget/Button;->setTextSize(IF)V

    .line 18
    :cond_5
    :goto_0
    iget-object v1, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getLoginBtnTopYOffset()I

    move-result v1

    if-eqz v1, :cond_6

    .line 19
    iget-object v1, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getLoginBtnTopYOffset()I

    move-result v1

    invoke-static {v0, v1}, Lcom/netease/nis/quicklogin/utils/i;->d(Landroid/view/View;I)V

    .line 20
    :cond_6
    iget-object v1, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getLoginBtnBottomYOffset()I

    move-result v1

    if-eqz v1, :cond_7

    .line 21
    iget-object v1, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getLoginBtnBottomYOffset()I

    move-result v1

    invoke-static {v0, v1}, Lcom/netease/nis/quicklogin/utils/i;->a(Landroid/view/View;I)V

    .line 22
    :cond_7
    iget-object v1, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getLoginBtnXOffset()I

    move-result v1

    if-eqz v1, :cond_8

    .line 23
    iget-object v1, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getLoginBtnXOffset()I

    move-result v1

    invoke-static {v0, v1}, Lcom/netease/nis/quicklogin/utils/i;->e(Landroid/view/View;I)V

    goto :goto_1

    .line 24
    :cond_8
    invoke-static {v0}, Lcom/netease/nis/quicklogin/utils/i;->b(Landroid/view/View;)V

    .line 25
    :goto_1
    iget-object v1, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getLoginBtnBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 26
    iget-object p1, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getLoginBtnBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 27
    :cond_9
    iget-object v1, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getLoginBtnBackgroundRes()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 28
    invoke-static {p1}, Lcom/netease/nis/quicklogin/utils/h;->a(Landroid/content/Context;)Lcom/netease/nis/quicklogin/utils/h;

    move-result-object p1

    iget-object v1, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getLoginBtnBackgroundRes()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/netease/nis/quicklogin/utils/h;->b(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_a
    :goto_2
    return-void
.end method

.method static synthetic g(Lcom/netease/nis/quicklogin/utils/LoginUiHelper;Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->a(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic h(Lcom/netease/nis/quicklogin/utils/LoginUiHelper;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->e:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method private h(Landroid/app/Activity;)V
    .locals 4

    .line 3
    sget v0, Lcom/netease/nis/quicklogin/R$id;->yd_iv_logo:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    if-eqz p1, :cond_9

    .line 4
    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getLogoWidth()I

    move-result v0

    .line 5
    iget-object v1, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getLogoHeight()I

    move-result v1

    if-nez v0, :cond_0

    if-eqz v1, :cond_3

    :cond_0
    const/high16 v2, 0x428c0000    # 70.0f

    if-nez v0, :cond_1

    .line 6
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v3, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->b:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/netease/nis/quicklogin/utils/i;->a(Landroid/content/Context;F)I

    move-result v2

    iget-object v3, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->b:Landroid/content/Context;

    int-to-float v1, v1

    invoke-static {v3, v1}, Lcom/netease/nis/quicklogin/utils/i;->a(Landroid/content/Context;F)I

    move-result v1

    invoke-direct {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    .line 7
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v3, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->b:Landroid/content/Context;

    int-to-float v0, v0

    invoke-static {v3, v0}, Lcom/netease/nis/quicklogin/utils/i;->a(Landroid/content/Context;F)I

    move-result v0

    iget-object v3, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->b:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/netease/nis/quicklogin/utils/i;->a(Landroid/content/Context;F)I

    move-result v2

    invoke-direct {v1, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    move-object v0, v1

    goto :goto_0

    .line 8
    :cond_2
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v3, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->b:Landroid/content/Context;

    int-to-float v0, v0

    invoke-static {v3, v0}, Lcom/netease/nis/quicklogin/utils/i;->a(Landroid/content/Context;F)I

    move-result v0

    iget-object v3, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->b:Landroid/content/Context;

    int-to-float v1, v1

    invoke-static {v3, v1}, Lcom/netease/nis/quicklogin/utils/i;->a(Landroid/content/Context;F)I

    move-result v1

    invoke-direct {v2, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    move-object v0, v2

    .line 9
    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 10
    :cond_3
    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getLogoTopYOffset()I

    move-result v0

    if-eqz v0, :cond_4

    .line 11
    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getLogoTopYOffset()I

    move-result v0

    invoke-static {p1, v0}, Lcom/netease/nis/quicklogin/utils/i;->d(Landroid/view/View;I)V

    .line 12
    :cond_4
    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getLogoBottomYOffset()I

    move-result v0

    if-eqz v0, :cond_5

    .line 13
    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getLogoBottomYOffset()I

    move-result v0

    invoke-static {p1, v0}, Lcom/netease/nis/quicklogin/utils/i;->a(Landroid/view/View;I)V

    .line 14
    :cond_5
    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getLogoXOffset()I

    move-result v0

    if-eqz v0, :cond_6

    .line 15
    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getLogoXOffset()I

    move-result v0

    invoke-static {p1, v0}, Lcom/netease/nis/quicklogin/utils/i;->e(Landroid/view/View;I)V

    goto :goto_1

    .line 16
    :cond_6
    invoke-static {p1}, Lcom/netease/nis/quicklogin/utils/i;->b(Landroid/view/View;)V

    .line 17
    :goto_1
    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getLogoIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 18
    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getLogoIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 19
    :cond_7
    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getLogoIconName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 20
    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->d:Lcom/netease/nis/quicklogin/utils/h;

    iget-object v1, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getLogoIconName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/nis/quicklogin/utils/h;->c(Ljava/lang/String;)I

    move-result v0

    .line 21
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 22
    :cond_8
    :goto_2
    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->isHideLogo()Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x4

    .line 23
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_9
    return-void
.end method

.method static synthetic h(Lcom/netease/nis/quicklogin/utils/LoginUiHelper;Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->k(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic i(Lcom/netease/nis/quicklogin/utils/LoginUiHelper;)Lcom/netease/nis/quicklogin/utils/h;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->d:Lcom/netease/nis/quicklogin/utils/h;

    return-object p0
.end method

.method private i(Landroid/app/Activity;)V
    .locals 3

    .line 3
    sget v0, Lcom/netease/nis/quicklogin/R$id;->yd_et_number:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    if-eqz v0, :cond_8

    .line 4
    iget-object v1, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getMaskNumberSize()I

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    iget-object v1, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getMaskNumberSize()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextSize(F)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getMaskNumberDpSize()I

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    iget-object v1, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getMaskNumberDpSize()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 8
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getMaskNumberColor()I

    move-result v1

    if-eqz v1, :cond_2

    .line 9
    iget-object v1, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getMaskNumberColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 10
    :cond_2
    iget-object v1, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getMaskNumberTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 11
    iget-object v1, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getMaskNumberTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 12
    :cond_3
    iget-object v1, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getMaskNumberTopYOffset()I

    move-result v1

    if-eqz v1, :cond_4

    .line 13
    iget-object v1, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getMaskNumberTopYOffset()I

    move-result v1

    invoke-static {v0, v1}, Lcom/netease/nis/quicklogin/utils/i;->d(Landroid/view/View;I)V

    .line 14
    :cond_4
    iget-object v1, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getMaskNumberBottomYOffset()I

    move-result v1

    if-eqz v1, :cond_5

    .line 15
    iget-object v1, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getMaskNumberBottomYOffset()I

    move-result v1

    invoke-static {v0, v1}, Lcom/netease/nis/quicklogin/utils/i;->a(Landroid/view/View;I)V

    .line 16
    :cond_5
    iget-object v1, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getMaskNumberBackgroundRes()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 17
    invoke-static {p1}, Lcom/netease/nis/quicklogin/utils/h;->a(Landroid/content/Context;)Lcom/netease/nis/quicklogin/utils/h;

    move-result-object p1

    iget-object v1, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getMaskNumberBackgroundRes()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/netease/nis/quicklogin/utils/h;->b(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 18
    :cond_6
    iget-object p1, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getMaskNumberXOffset()I

    move-result p1

    if-eqz p1, :cond_7

    .line 19
    iget-object p1, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getMaskNumberXOffset()I

    move-result p1

    invoke-static {v0, p1}, Lcom/netease/nis/quicklogin/utils/i;->e(Landroid/view/View;I)V

    goto :goto_1

    .line 20
    :cond_7
    invoke-static {v0}, Lcom/netease/nis/quicklogin/utils/i;->b(Landroid/view/View;)V

    .line 21
    :goto_1
    iget-object p1, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getMaskNumberListener()Lcom/netease/nis/quicklogin/listener/MaskNumberListener;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 22
    :try_start_0
    iget-object p1, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getMaskNumberListener()Lcom/netease/nis/quicklogin/listener/MaskNumberListener;

    move-result-object p1

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/netease/nis/quicklogin/listener/MaskNumberListener;->onGetMaskNumber(Landroid/widget/TextView;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 23
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_8
    :goto_2
    return-void
.end method

.method static synthetic i(Lcom/netease/nis/quicklogin/utils/LoginUiHelper;Landroid/app/Activity;)Z
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->b(Landroid/app/Activity;)Z

    move-result p0

    return p0
.end method

.method static synthetic j(Lcom/netease/nis/quicklogin/utils/LoginUiHelper;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->g:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method private j(Landroid/app/Activity;)V
    .locals 6

    .line 2
    sget v0, Lcom/netease/nis/quicklogin/R$id;->yd_rl_navigation:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    if-eqz v0, :cond_2

    .line 3
    iget-object v2, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v2}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getNavBackgroundColor()I

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    iget-object v2, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v2}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getNavBackgroundColor()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 5
    :cond_0
    iget-object v2, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v2}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->isHideNav()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 7
    :cond_1
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 8
    iget-object v3, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->b:Landroid/content/Context;

    iget-object v4, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v4}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getNavHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-static {v3, v4}, Lcom/netease/nis/quicklogin/utils/i;->a(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 9
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 10
    :cond_2
    sget v0, Lcom/netease/nis/quicklogin/R$id;->yd_iv_navigation:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_9

    .line 11
    iget-object v2, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v2}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->isHideBackIcon()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 12
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 13
    :cond_3
    iget-object v1, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getNavBackIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 14
    iget-object v1, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getNavBackIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 15
    :cond_4
    iget-object v1, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getNavBackIcon()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 16
    iget-object v1, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->d:Lcom/netease/nis/quicklogin/utils/h;

    iget-object v2, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v2}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getNavBackIcon()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netease/nis/quicklogin/utils/h;->c(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 17
    :cond_5
    :goto_0
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 18
    iget-object v2, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v3}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getNavBackIconWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2, v3}, Lcom/netease/nis/quicklogin/utils/i;->a(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 19
    iget-object v2, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v3}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getNavBackIconHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2, v3}, Lcom/netease/nis/quicklogin/utils/i;->a(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 20
    iget-object v2, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v2}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getNavBackIconGravity()I

    move-result v2

    const/16 v3, 0xb

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v2}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->isDialogMode()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 21
    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_2

    .line 22
    :cond_6
    iget-object v2, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v2}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getNavBackIconGravity()I

    move-result v2

    const/4 v4, 0x5

    if-ne v2, v4, :cond_7

    goto :goto_1

    :cond_7
    const/16 v3, 0x9

    :goto_1
    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 23
    :goto_2
    iget-object v2, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v2}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getNavBackIconMargin()I

    move-result v2

    if-eqz v2, :cond_8

    .line 24
    iget-object v2, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v2}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getNavBackIconMargin()I

    move-result v2

    iget-object v3, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 25
    invoke-virtual {v3}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getNavBackIconMargin()I

    move-result v3

    iget-object v4, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 26
    invoke-virtual {v4}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getNavBackIconMargin()I

    move-result v4

    iget-object v5, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 27
    invoke-virtual {v5}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getNavBackIconMargin()I

    move-result v5

    .line 28
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 29
    :cond_8
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 30
    new-instance v1, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$a;

    invoke-direct {v1, p0, p1}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$a;-><init>(Lcom/netease/nis/quicklogin/utils/LoginUiHelper;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    :cond_9
    sget v0, Lcom/netease/nis/quicklogin/R$id;->yd_tv_navigation:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_f

    .line 32
    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getNavTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 33
    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getNavTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    :cond_a
    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getNavTitleColor()I

    move-result v0

    if-eqz v0, :cond_b

    .line 35
    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getNavTitleColor()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 36
    :cond_b
    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getNavTitleSize()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    .line 37
    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getNavTitleSize()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_3

    .line 38
    :cond_c
    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getNavTitleDpSize()I

    move-result v0

    if-eqz v0, :cond_d

    .line 39
    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getNavTitleDpSize()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 40
    :cond_d
    :goto_3
    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->isNavTitleBold()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 41
    invoke-static {v1}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 42
    :cond_e
    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getNavTitleDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 43
    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getNavTitleDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 44
    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getNavTitleDrawablePadding()I

    move-result v0

    if-eqz v0, :cond_f

    .line 45
    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getNavTitleDrawablePadding()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    :cond_f
    return-void
.end method

.method static synthetic k(Lcom/netease/nis/quicklogin/utils/LoginUiHelper;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->b:Landroid/content/Context;

    return-object p0
.end method

.method private k(Landroid/app/Activity;)V
    .locals 4

    .line 2
    sget v0, Lcom/netease/nis/quicklogin/R$id;->yd_rl_navigation:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    .line 3
    iget-object v1, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getProtocolNavColor()I

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getProtocolNavColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getProtocolNavHeight()I

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 7
    iget-object v2, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v3}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getProtocolNavHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2, v3}, Lcom/netease/nis/quicklogin/utils/i;->a(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 8
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 9
    :cond_1
    sget v0, Lcom/netease/nis/quicklogin/R$id;->yd_tv_navigation:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 10
    iget-object v1, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getProtocolNavTitleSize()I

    move-result v1

    if-eqz v1, :cond_2

    .line 11
    iget-object v1, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getProtocolNavTitleSize()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_0

    .line 12
    :cond_2
    iget-object v1, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getProtocolNavTitleDpSize()I

    move-result v1

    if-eqz v1, :cond_3

    .line 13
    iget-object v1, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getProtocolNavTitleDpSize()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 14
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getProtocolNavTitleColor()I

    move-result v1

    if-eqz v1, :cond_4

    .line 15
    iget-object v1, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getProtocolNavTitleColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 16
    :cond_4
    sget v0, Lcom/netease/nis/quicklogin/R$id;->yd_iv_navigation:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    if-eqz p1, :cond_9

    .line 17
    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getProtocolNavBackIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 18
    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getProtocolNavBackIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 19
    :cond_5
    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getProtocolNavBackIcon()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 20
    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->d:Lcom/netease/nis/quicklogin/utils/h;

    iget-object v1, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getProtocolNavBackIcon()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/nis/quicklogin/utils/h;->b(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 21
    :cond_6
    :goto_1
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 22
    iget-object v1, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getProtocolNavBackIconWidth()I

    move-result v1

    if-eqz v1, :cond_7

    .line 23
    iget-object v1, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v2}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getProtocolNavBackIconWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1, v2}, Lcom/netease/nis/quicklogin/utils/i;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 24
    :cond_7
    iget-object v1, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getProtocolNavBackIconHeight()I

    move-result v1

    if-eqz v1, :cond_8

    .line 25
    iget-object v1, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v2}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getProtocolNavBackIconHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1, v2}, Lcom/netease/nis/quicklogin/utils/i;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 26
    :cond_8
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_9
    return-void
.end method

.method private l(Landroid/app/Activity;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getStatusBarColor()I

    move-result v0

    invoke-static {p1, v0}, Lcom/netease/nis/quicklogin/utils/i;->a(Landroid/app/Activity;I)V

    .line 3
    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->isStatusBarDarkColor()Z

    move-result v0

    invoke-static {p1, v0}, Lcom/netease/nis/quicklogin/utils/i;->a(Landroid/app/Activity;Z)V

    return-void
.end method

.method static synthetic l(Lcom/netease/nis/quicklogin/utils/LoginUiHelper;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->k:Z

    return p0
.end method

.method private m(Landroid/app/Activity;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020002

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 4
    invoke-direct {p0, p1}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->j(Landroid/app/Activity;)V

    .line 5
    invoke-direct {p0, p1}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->h(Landroid/app/Activity;)V

    .line 6
    invoke-direct {p0, p1}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->f(Landroid/app/Activity;)V

    .line 7
    invoke-static {v0}, Lcom/netease/nis/quicklogin/utils/i;->a(Landroid/view/View;)Ljava/util/List;

    move-result-object v2

    .line 8
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/16 v4, 0x8

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 9
    instance-of v5, v3, Landroid/widget/TextView;

    if-eqz v5, :cond_1

    .line 10
    move-object v5, v3

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 11
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "****"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v6

    sget v7, Lcom/netease/nis/quicklogin/R$id;->yd_et_number:I

    if-eq v6, v7, :cond_1

    .line 12
    invoke-virtual {p1, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 13
    invoke-virtual {p1, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    invoke-virtual {v6, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 14
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 15
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 16
    :cond_1
    instance-of v5, v3, Landroid/widget/CheckBox;

    if-eqz v5, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v5

    sget v6, Lcom/netease/nis/quicklogin/R$id;->yd_cb_privacy:I

    if-eq v5, v6, :cond_0

    .line 17
    check-cast v3, Landroid/widget/CheckBox;

    .line 18
    invoke-virtual {v3}, Landroid/widget/CheckBox;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    if-eqz v5, :cond_2

    .line 19
    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 20
    :cond_2
    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v4, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->f:Ljava/lang/ref/WeakReference;

    goto :goto_0

    .line 21
    :cond_3
    invoke-direct {p0, p1}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->i(Landroid/app/Activity;)V

    .line 22
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x3

    if-lt v2, v3, :cond_4

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v3, v3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_4

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    .line 23
    :goto_1
    instance-of v2, v0, Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_5

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    .line 24
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 25
    invoke-direct {p0, p1}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->g(Landroid/app/Activity;)V

    .line 26
    sget v2, Lcom/netease/nis/quicklogin/R$id;->yd_btn_oauth:I

    invoke-virtual {p1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 27
    invoke-virtual {p1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/netease/nis/quicklogin/view/FastClickButton;

    .line 28
    new-instance v3, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$d;

    invoke-direct {v3, p0, v2, v0, p1}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$d;-><init>(Lcom/netease/nis/quicklogin/utils/LoginUiHelper;Lcom/netease/nis/quicklogin/view/FastClickButton;Landroid/view/ViewGroup;Landroid/app/Activity;)V

    invoke-virtual {v2, v3}, Lcom/netease/nis/quicklogin/view/FastClickButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    :cond_5
    invoke-direct {p0, p1, v1}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->a(Landroid/app/Activity;I)V

    return-void
.end method

.method private n(Landroid/app/Activity;)Z
    .locals 11

    .line 1
    instance-of v0, p1, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;

    if-eqz v0, :cond_3

    .line 2
    sget v0, Lcom/netease/nis/quicklogin/R$id;->yd_rl_root:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    if-nez v0, :cond_1

    const-string v8, "\u79fb\u52a8\u63a5\u53e3\u6dfb\u52a0\u6613\u76fe\u5e03\u5c40\u6587\u4ef6\u5931\u8d25"

    .line 3
    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->l:Ljava/lang/ref/WeakReference;

    invoke-static {v0}, Lcom/netease/nis/quicklogin/utils/a;->a(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->l:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;

    iget-object v1, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->o:Ljava/lang/String;

    invoke-virtual {v0, v1, v8}, Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;->onGetMobileNumberError(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :cond_0
    invoke-static {}, Lcom/netease/nis/quicklogin/utils/g;->c()Lcom/netease/nis/quicklogin/utils/g;

    move-result-object v1

    sget-object v2, Lcom/netease/nis/quicklogin/utils/g$c;->c:Lcom/netease/nis/quicklogin/utils/g$c;

    sget-object v0, Lcom/netease/nis/quicklogin/b/b;->h:Lcom/netease/nis/quicklogin/b/b;

    .line 6
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    iget-object v4, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->o:Ljava/lang/String;

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 8
    invoke-virtual/range {v1 .. v10}, Lcom/netease/nis/quicklogin/utils/g;->a(Lcom/netease/nis/quicklogin/utils/g$c;ILjava/lang/String;IIILjava/lang/String;J)V

    .line 9
    invoke-static {}, Lcom/netease/nis/quicklogin/utils/g;->c()Lcom/netease/nis/quicklogin/utils/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/utils/g;->d()V

    .line 10
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    const/4 p1, 0x0

    return p1

    .line 11
    :cond_1
    iget-object v1, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getLoadingView()Landroid/view/ViewGroup;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 12
    iget-object p1, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getLoadingView()Landroid/view/ViewGroup;

    move-result-object p1

    .line 13
    invoke-virtual {p1}, Landroid/view/ViewGroup;->bringToFront()V

    .line 14
    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    const/16 v1, 0x8

    .line 15
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 16
    :cond_2
    sget v1, Lcom/netease/nis/quicklogin/R$id;->yd_rl_loading:I

    invoke-virtual {p1, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 17
    :goto_0
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->h:Ljava/lang/ref/WeakReference;

    .line 18
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->g:Ljava/lang/ref/WeakReference;

    :cond_3
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public a(ILandroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 19
    iget-object p1, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->i:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_2

    .line 20
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 21
    iget-object p1, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->j:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_2

    .line 22
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 23
    :cond_1
    iget-object p1, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->h:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_2

    .line 24
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public a(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;Ljava/lang/String;)V
    .locals 0

    .line 10
    iput-object p1, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 11
    iput-object p2, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->o:Ljava/lang/String;

    .line 12
    iget-object p1, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->a:Landroid/app/Application$ActivityLifecycleCallbacks;

    if-nez p1, :cond_0

    .line 13
    invoke-direct {p0}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->a()V

    goto :goto_0

    .line 14
    :cond_0
    iget-object p2, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->b:Landroid/content/Context;

    check-cast p2, Landroid/app/Application;

    invoke-virtual {p2, p1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 15
    :goto_0
    iget-object p1, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->b:Landroid/content/Context;

    check-cast p1, Landroid/app/Application;

    iget-object p2, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->a:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {p1, p2}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method public a(Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;)V
    .locals 1

    .line 16
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->l:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->g:Ljava/lang/ref/WeakReference;

    invoke-static {v0}, Lcom/netease/nis/quicklogin/utils/a;->a(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 18
    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public b()V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->m:Ljava/lang/ref/WeakReference;

    invoke-static {v0}, Lcom/netease/nis/quicklogin/utils/a;->a(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->m:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public b(Z)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->e:Ljava/lang/ref/WeakReference;

    invoke-static {v0}, Lcom/netease/nis/quicklogin/utils/a;->a(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_0
    return-void
.end method
