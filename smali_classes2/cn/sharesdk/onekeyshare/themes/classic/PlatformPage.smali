.class public abstract Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;
.super Lcn/sharesdk/onekeyshare/OnekeySharePage;
.source "PlatformPage.java"


# instance fields
.field private animHide:Landroid/view/animation/Animation;

.field private animShow:Landroid/view/animation/Animation;

.field private beforeFinish:Ljava/lang/Runnable;

.field private finished:Z

.field private impl:Lcn/sharesdk/onekeyshare/themes/classic/ClassicTheme;

.field private llPanel:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/sharesdk/onekeyshare/OnekeySharePage;-><init>(Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;)V

    .line 2
    invoke-static {p1}, Lcom/mob/tools/utils/ResHelper;->forceCast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/sharesdk/onekeyshare/themes/classic/ClassicTheme;

    iput-object p1, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;->impl:Lcn/sharesdk/onekeyshare/themes/classic/ClassicTheme;

    return-void
.end method

.method static synthetic access$000(Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/OnekeySharePage;->isSilent()Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;Lcn/sharesdk/framework/Platform;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcn/sharesdk/onekeyshare/OnekeySharePage;->isUseClientToShare(Lcn/sharesdk/framework/Platform;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;Lcn/sharesdk/framework/Platform;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcn/sharesdk/onekeyshare/OnekeySharePage;->shareSilently(Lcn/sharesdk/framework/Platform;)V

    return-void
.end method

.method static synthetic access$300(Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/framework/Platform$ShareParams;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcn/sharesdk/onekeyshare/OnekeySharePage;->formateShareData(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/framework/Platform$ShareParams;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;)Lcn/sharesdk/onekeyshare/ShareContentCustomizeCallback;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/OnekeySharePage;->getCustomizeCallback()Lcn/sharesdk/onekeyshare/ShareContentCustomizeCallback;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;)Lcn/sharesdk/onekeyshare/ShareContentCustomizeCallback;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/OnekeySharePage;->getCustomizeCallback()Lcn/sharesdk/onekeyshare/ShareContentCustomizeCallback;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mob/tools/FakeActivity;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$700(Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;)Lcn/sharesdk/onekeyshare/themes/classic/ClassicTheme;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;->impl:Lcn/sharesdk/onekeyshare/themes/classic/ClassicTheme;

    return-object p0
.end method

.method static synthetic access$800(Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;->beforeFinish:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$802(Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;->beforeFinish:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$902(Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;->finished:Z

    return p1
.end method

.method private initAnims()V
    .locals 20

    move-object/from16 v0, p0

    .line 1
    new-instance v10, Landroid/view/animation/TranslateAnimation;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v10, v0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;->animShow:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x12c

    .line 2
    invoke-virtual {v10, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 3
    new-instance v3, Landroid/view/animation/TranslateAnimation;

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x1

    const/high16 v19, 0x3f800000    # 1.0f

    move-object v11, v3

    invoke-direct/range {v11 .. v19}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v3, v0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;->animHide:Landroid/view/animation/Animation;

    .line 4
    invoke-virtual {v3, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    return-void
.end method

.method private isCanShare(Lcn/sharesdk/framework/Platform;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Cmcc"

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Accountkit"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Telecom"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "GooglePlus"

    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "HWAccount"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method protected collectCells()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->getPlatformList()[Lcn/sharesdk/framework/Platform;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    new-array v1, v2, [Lcn/sharesdk/framework/Platform;

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/OnekeySharePage;->getHiddenPlatforms()Ljava/util/HashMap;

    move-result-object v3

    if-nez v3, :cond_1

    .line 4
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 5
    :cond_1
    array-length v4, v1

    :goto_0
    if-ge v2, v4, :cond_3

    aget-object v5, v1, v2

    .line 6
    invoke-virtual {v5}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 7
    invoke-direct {p0, v5}, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;->isCanShare(Lcn/sharesdk/framework/Platform;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 8
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 9
    :cond_3
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/OnekeySharePage;->getCustomerLogos()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 10
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 11
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_4
    return-object v0
.end method

.method protected abstract newAdapter(Ljava/util/ArrayList;)Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;"
        }
    .end annotation
.end method

.method public onCreate()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/mob/tools/FakeActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v2, 0x4c000000    # 3.3554432E7f

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2
    invoke-direct {p0}, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;->initAnims()V

    .line 3
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/mob/tools/FakeActivity;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 5
    iget-object v2, p0, Lcom/mob/tools/FakeActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v2, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 6
    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/mob/tools/FakeActivity;->activity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 7
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v6, 0x3f800000    # 1.0f

    .line 8
    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 9
    new-instance v6, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage$1;

    invoke-direct {v6, p0}, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage$1;-><init>(Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;)V

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 11
    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/mob/tools/FakeActivity;->activity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;->llPanel:Landroid/widget/LinearLayout;

    .line 12
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 13
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 14
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;->llPanel:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;->animShow:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setAnimation(Landroid/view/animation/Animation;)V

    .line 15
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;->llPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 16
    new-instance v0, Lcom/mob/tools/gui/MobViewPager;

    iget-object v1, p0, Lcom/mob/tools/FakeActivity;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/mob/tools/gui/MobViewPager;-><init>(Landroid/content/Context;)V

    .line 17
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;->collectCells()Ljava/util/ArrayList;

    move-result-object v1

    .line 18
    invoke-virtual {p0, v1}, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;->newAdapter(Ljava/util/ArrayList;)Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;

    move-result-object v1

    .line 19
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1}, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;->getPanelHeight()I

    move-result v3

    invoke-direct {v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 20
    iget-object v3, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;->llPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 21
    new-instance v2, Lcn/sharesdk/onekeyshare/themes/classic/IndicatorView;

    iget-object v3, p0, Lcom/mob/tools/FakeActivity;->activity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Lcn/sharesdk/onekeyshare/themes/classic/IndicatorView;-><init>(Landroid/content/Context;)V

    .line 22
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1}, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;->getBottomHeight()I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 23
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;->llPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 24
    invoke-virtual {v1}, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Lcn/sharesdk/onekeyshare/themes/classic/IndicatorView;->setScreenCount(I)V

    const/4 v3, 0x0

    .line 25
    invoke-virtual {v2, v3, v3}, Lcn/sharesdk/onekeyshare/themes/classic/IndicatorView;->onScreenChange(II)V

    .line 26
    invoke-virtual {v1, v2}, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;->setIndicator(Lcn/sharesdk/onekeyshare/themes/classic/IndicatorView;)V

    .line 27
    invoke-virtual {v0, v1}, Lcom/mob/tools/gui/MobViewPager;->setAdapter(Lcom/mob/tools/gui/ViewPagerAdapter;)V

    return-void
.end method

.method public onFinish()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;->finished:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;->finished:Z

    return v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;->animHide:Landroid/view/animation/Animation;

    new-instance v1, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage$4;

    invoke-direct {v1, p0}, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage$4;-><init>(Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 4
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;->llPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->clearAnimation()V

    .line 5
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;->llPanel:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;->animHide:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAnimation(Landroid/view/animation/Animation;)V

    .line 6
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;->llPanel:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v0, 0x1

    return v0
.end method

.method public final performCustomLogoClick(Landroid/view/View;Lcn/sharesdk/onekeyshare/CustomerLogo;)V
    .locals 1

    .line 1
    new-instance v0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage$3;

    invoke-direct {v0, p0, p2, p1}, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage$3;-><init>(Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;Lcn/sharesdk/onekeyshare/CustomerLogo;Landroid/view/View;)V

    iput-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;->beforeFinish:Ljava/lang/Runnable;

    .line 2
    invoke-virtual {p0}, Lcom/mob/tools/FakeActivity;->finish()V

    return-void
.end method

.method public final showEditPage(Lcn/sharesdk/framework/Platform;)V
    .locals 1

    .line 1
    new-instance v0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage$2;

    invoke-direct {v0, p0, p1}, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage$2;-><init>(Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;Lcn/sharesdk/framework/Platform;)V

    iput-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;->beforeFinish:Ljava/lang/Runnable;

    .line 2
    invoke-virtual {p0}, Lcom/mob/tools/FakeActivity;->finish()V

    return-void
.end method
