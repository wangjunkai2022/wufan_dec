.class public Lcom/join/mgps/activity/ImagePagerActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "ImagePagerActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/ImagePagerActivity$b;
    }
.end annotation


# static fields
.field private static final d:Ljava/lang/String; = "STATE_POSITION"

.field public static final e:Ljava/lang/String; = "image_index"

.field public static final f:Ljava/lang/String; = "image_urls"


# instance fields
.field private a:Lcom/join/android/app/component/photoviewer/HackyViewPager;

.field private b:I

.field private c:Lcom/join/mgps/customview/CirclePageIndicator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    return-void
.end method

.method static synthetic C0(Lcom/join/mgps/activity/ImagePagerActivity;)Lcom/join/mgps/customview/CirclePageIndicator;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/ImagePagerActivity;->c:Lcom/join/mgps/customview/CirclePageIndicator;

    return-object p0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0c02d1

    .line 2
    invoke-virtual {p0, v0}, Landroidx/activity/ComponentActivity;->setContentView(I)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "image_index"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/join/mgps/activity/ImagePagerActivity;->b:I

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

    check-cast v1, Lcom/join/android/app/component/photoviewer/HackyViewPager;

    iput-object v1, p0, Lcom/join/mgps/activity/ImagePagerActivity;->a:Lcom/join/android/app/component/photoviewer/HackyViewPager;

    .line 6
    new-instance v1, Lcom/join/mgps/activity/ImagePagerActivity$b;

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/join/mgps/activity/ImagePagerActivity$b;-><init>(Lcom/join/mgps/activity/ImagePagerActivity;Landroidx/fragment/app/FragmentManager;[Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/ImagePagerActivity;->a:Lcom/join/android/app/component/photoviewer/HackyViewPager;

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    const v0, 0x7f09075b

    .line 9
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/CirclePageIndicator;

    iput-object v0, p0, Lcom/join/mgps/activity/ImagePagerActivity;->c:Lcom/join/mgps/customview/CirclePageIndicator;

    .line 10
    iget-object v1, p0, Lcom/join/mgps/activity/ImagePagerActivity;->a:Lcom/join/android/app/component/photoviewer/HackyViewPager;

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/CirclePageIndicator;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/ImagePagerActivity;->a:Lcom/join/android/app/component/photoviewer/HackyViewPager;

    new-instance v1, Lcom/join/mgps/activity/ImagePagerActivity$a;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ImagePagerActivity$a;-><init>(Lcom/join/mgps/activity/ImagePagerActivity;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    if-eqz p1, :cond_0

    const-string v0, "STATE_POSITION"

    .line 12
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/join/mgps/activity/ImagePagerActivity;->b:I

    .line 13
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/ImagePagerActivity;->a:Lcom/join/android/app/component/photoviewer/HackyViewPager;

    iget v0, p0, Lcom/join/mgps/activity/ImagePagerActivity;->b:I

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 14
    iget-object p1, p0, Lcom/join/mgps/activity/ImagePagerActivity;->c:Lcom/join/mgps/customview/CirclePageIndicator;

    iget v0, p0, Lcom/join/mgps/activity/ImagePagerActivity;->b:I

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/CirclePageIndicator;->setCurrentItem(I)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ImagePagerActivity;->a:Lcom/join/android/app/component/photoviewer/HackyViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    const-string v1, "STATE_POSITION"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method
