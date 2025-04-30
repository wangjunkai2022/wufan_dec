.class public Lcom/join/android/app/component/photoviewer/ImagePagerActivity;
.super Lcom/BaseFragmentActivity;
.source "ImagePagerActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/android/app/component/photoviewer/ImagePagerActivity$g;,
        Lcom/join/android/app/component/photoviewer/ImagePagerActivity$f;
    }
.end annotation


# static fields
.field private static final f:Ljava/lang/String; = "STATE_POSITION"

.field public static final g:Ljava/lang/String; = "image_index"

.field public static final h:Ljava/lang/String; = "image_urls"


# instance fields
.field private a:Lcom/join/android/app/component/photoviewer/MultiTouchViewPager;

.field private b:I

.field private c:Landroid/widget/TextView;

.field d:Lcom/join/android/app/component/photoviewer/ImagePagerActivity$g;

.field e:Landroid/view/View$OnLongClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/BaseFragmentActivity;-><init>()V

    .line 2
    new-instance v0, Lcom/join/android/app/component/photoviewer/ImagePagerActivity$a;

    invoke-direct {v0, p0}, Lcom/join/android/app/component/photoviewer/ImagePagerActivity$a;-><init>(Lcom/join/android/app/component/photoviewer/ImagePagerActivity;)V

    iput-object v0, p0, Lcom/join/android/app/component/photoviewer/ImagePagerActivity;->e:Landroid/view/View$OnLongClickListener;

    return-void
.end method

.method static synthetic D0(Lcom/join/android/app/component/photoviewer/ImagePagerActivity;)Lcom/join/android/app/component/photoviewer/MultiTouchViewPager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/android/app/component/photoviewer/ImagePagerActivity;->a:Lcom/join/android/app/component/photoviewer/MultiTouchViewPager;

    return-object p0
.end method

.method static synthetic E0(Lcom/join/android/app/component/photoviewer/ImagePagerActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/android/app/component/photoviewer/ImagePagerActivity;->K0()V

    return-void
.end method

.method static synthetic F0(Lcom/join/android/app/component/photoviewer/ImagePagerActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/android/app/component/photoviewer/ImagePagerActivity;->L0(Landroid/view/View;)V

    return-void
.end method

.method static synthetic G0(Lcom/join/android/app/component/photoviewer/ImagePagerActivity;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/android/app/component/photoviewer/ImagePagerActivity;->c:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic H0(Lcom/join/android/app/component/photoviewer/ImagePagerActivity;)Landroid/os/AsyncTask;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/android/app/component/photoviewer/ImagePagerActivity;->J0()Landroid/os/AsyncTask;

    move-result-object p0

    return-object p0
.end method

.method static synthetic I0(Lcom/join/android/app/component/photoviewer/ImagePagerActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/android/app/component/photoviewer/ImagePagerActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method private J0()Landroid/os/AsyncTask;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/android/app/component/photoviewer/ImagePagerActivity$d;

    invoke-direct {v0, p0}, Lcom/join/android/app/component/photoviewer/ImagePagerActivity$d;-><init>(Lcom/join/android/app/component/photoviewer/ImagePagerActivity;)V

    return-object v0
.end method

.method private K0()V
    .locals 9

    .line 1
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c02cf

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 2
    new-instance v0, Lcom/join/android/app/component/photoviewer/ImagePagerActivity$g;

    const/4 v7, -0x1

    const/4 v8, -0x2

    move-object v3, v0

    move-object v4, p0

    move-object v5, p0

    invoke-direct/range {v3 .. v8}, Lcom/join/android/app/component/photoviewer/ImagePagerActivity$g;-><init>(Lcom/join/android/app/component/photoviewer/ImagePagerActivity;Landroid/content/Context;Landroid/view/View;II)V

    iput-object v0, p0, Lcom/join/android/app/component/photoviewer/ImagePagerActivity;->d:Lcom/join/android/app/component/photoviewer/ImagePagerActivity$g;

    .line 3
    new-instance v1, Lcom/join/android/app/component/photoviewer/ImagePagerActivity$c;

    invoke-direct {v1, p0}, Lcom/join/android/app/component/photoviewer/ImagePagerActivity$c;-><init>(Lcom/join/android/app/component/photoviewer/ImagePagerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    return-void
.end method

.method private L0(Landroid/view/View;)V
    .locals 3

    const p1, 0x7f09016c

    .line 1
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/join/android/app/component/photoviewer/ImagePagerActivity;->d:Lcom/join/android/app/component/photoviewer/ImagePagerActivity$g;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/join/android/app/component/photoviewer/ImagePagerActivity;->K0()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/android/app/component/photoviewer/ImagePagerActivity;->d:Lcom/join/android/app/component/photoviewer/ImagePagerActivity$g;

    const v1, 0x7f1204c7

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 4
    iget-object v0, p0, Lcom/join/android/app/component/photoviewer/ImagePagerActivity;->d:Lcom/join/android/app/component/photoviewer/ImagePagerActivity$g;

    invoke-virtual {v0}, Lcom/join/android/app/component/photoviewer/ImagePagerActivity$g;->getHeight()I

    move-result v0

    neg-int v0, v0

    if-nez v0, :cond_1

    const/high16 v0, -0x3d480000    # -92.0f

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float v1, v1, v0

    float-to-int v0, v1

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/join/android/app/component/photoviewer/ImagePagerActivity;->d:Lcom/join/android/app/component/photoviewer/ImagePagerActivity$g;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v0}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    const v0, 0x3e99999a    # 0.3f

    .line 8
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method private showToast(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/join/android/app/component/photoviewer/ImagePagerActivity$e;

    invoke-direct {v0, p0, p1}, Lcom/join/android/app/component/photoviewer/ImagePagerActivity$e;-><init>(Lcom/join/android/app/component/photoviewer/ImagePagerActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lcom/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0c02ce

    .line 2
    invoke-virtual {p0, v0}, Lcom/BaseFragmentActivity;->setContentView(I)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "image_index"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/join/android/app/component/photoviewer/ImagePagerActivity;->b:I

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "image_urls"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090ba4

    .line 5
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/join/android/app/component/photoviewer/MultiTouchViewPager;

    iput-object v1, p0, Lcom/join/android/app/component/photoviewer/ImagePagerActivity;->a:Lcom/join/android/app/component/photoviewer/MultiTouchViewPager;

    .line 6
    new-instance v1, Lcom/join/android/app/component/photoviewer/ImagePagerActivity$f;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v3

    invoke-direct {v1, p0, v3, v0}, Lcom/join/android/app/component/photoviewer/ImagePagerActivity$f;-><init>(Lcom/join/android/app/component/photoviewer/ImagePagerActivity;Landroidx/fragment/app/FragmentManager;[Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/join/android/app/component/photoviewer/ImagePagerActivity;->a:Lcom/join/android/app/component/photoviewer/MultiTouchViewPager;

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    const v0, 0x7f09075b

    .line 8
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/android/app/component/photoviewer/ImagePagerActivity;->c:Landroid/widget/TextView;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x1

    .line 9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    iget-object v2, p0, Lcom/join/android/app/component/photoviewer/ImagePagerActivity;->a:Lcom/join/android/app/component/photoviewer/MultiTouchViewPager;

    invoke-virtual {v2}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const v1, 0x7f110447

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/join/android/app/component/photoviewer/ImagePagerActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object v0, p0, Lcom/join/android/app/component/photoviewer/ImagePagerActivity;->a:Lcom/join/android/app/component/photoviewer/MultiTouchViewPager;

    new-instance v1, Lcom/join/android/app/component/photoviewer/ImagePagerActivity$b;

    invoke-direct {v1, p0}, Lcom/join/android/app/component/photoviewer/ImagePagerActivity$b;-><init>(Lcom/join/android/app/component/photoviewer/ImagePagerActivity;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    if-eqz p1, :cond_0

    const-string v0, "STATE_POSITION"

    .line 12
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/join/android/app/component/photoviewer/ImagePagerActivity;->b:I

    .line 13
    :cond_0
    iget-object p1, p0, Lcom/join/android/app/component/photoviewer/ImagePagerActivity;->a:Lcom/join/android/app/component/photoviewer/MultiTouchViewPager;

    iget v0, p0, Lcom/join/android/app/component/photoviewer/ImagePagerActivity;->b:I

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 14
    invoke-direct {p0}, Lcom/join/android/app/component/photoviewer/ImagePagerActivity;->K0()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/photoviewer/ImagePagerActivity;->d:Lcom/join/android/app/component/photoviewer/ImagePagerActivity$g;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/join/android/app/component/photoviewer/ImagePagerActivity;->d:Lcom/join/android/app/component/photoviewer/ImagePagerActivity$g;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 2
    :cond_0
    invoke-super {p0}, Lcom/BaseFragmentActivity;->onDestroy()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/photoviewer/ImagePagerActivity;->a:Lcom/join/android/app/component/photoviewer/MultiTouchViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    const-string v1, "STATE_POSITION"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method
