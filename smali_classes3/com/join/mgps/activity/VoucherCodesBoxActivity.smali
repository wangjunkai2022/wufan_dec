.class public Lcom/join/mgps/activity/VoucherCodesBoxActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "VoucherCodesBoxActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/VoucherCodesBoxActivity$b;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0c0078
.end annotation


# static fields
.field private static final i:[Ljava/lang/String;


# instance fields
.field a:I
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field b:I
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field c:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field d:Landroidx/viewpager/widget/ViewPager;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field e:Lcom/join/mgps/customview/TabPageIndicator;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field f:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private g:Landroidx/fragment/app/FragmentPagerAdapter;

.field private h:[Landroidx/fragment/app/Fragment;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "\u6e38\u620f\u793c\u5305"

    const-string v1, "\u4ee3\u91d1\u5238"

    .line 1
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/join/mgps/activity/VoucherCodesBoxActivity;->i:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [Landroidx/fragment/app/Fragment;

    .line 2
    iput-object v0, p0, Lcom/join/mgps/activity/VoucherCodesBoxActivity;->h:[Landroidx/fragment/app/Fragment;

    return-void
.end method

.method static synthetic C0(Lcom/join/mgps/activity/VoucherCodesBoxActivity;I)Landroidx/fragment/app/Fragment;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/VoucherCodesBoxActivity;->E0(I)Landroidx/fragment/app/Fragment;

    move-result-object p0

    return-object p0
.end method

.method static synthetic D0()[Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/join/mgps/activity/VoucherCodesBoxActivity;->i:[Ljava/lang/String;

    return-object v0
.end method

.method private E0(I)Landroidx/fragment/app/Fragment;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/VoucherCodesBoxActivity;->h:[Landroidx/fragment/app/Fragment;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    if-eqz p1, :cond_2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    new-instance v0, Lcom/join/mgps/fragment/x4;

    invoke-direct {v0}, Lcom/join/mgps/fragment/x4;-><init>()V

    goto :goto_0

    .line 3
    :cond_2
    new-instance v0, Lcom/join/mgps/fragment/p;

    invoke-direct {v0}, Lcom/join/mgps/fragment/p;-><init>()V

    .line 4
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 5
    iget v2, p0, Lcom/join/mgps/activity/VoucherCodesBoxActivity;->a:I

    const-string v3, "uid"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 7
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/activity/VoucherCodesBoxActivity;->h:[Landroidx/fragment/app/Fragment;

    aput-object v0, v1, p1

    return-object v0
.end method


# virtual methods
.method F0()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/VoucherCodesBoxActivity;->h:[Landroidx/fragment/app/Fragment;

    const/4 v1, 0x1

    aget-object v2, v0, v1

    if-nez v2, :cond_0

    return-void

    .line 2
    :cond_0
    aget-object v0, v0, v1

    check-cast v0, Lcom/join/mgps/fragment/x4;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/fragment/w4;->Z()Lcom/join/mgps/dto/AccountVoucherAd;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4
    new-instance v1, Lcom/join/mgps/Util/IntentDateBean;

    invoke-direct {v1}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    const/4 v2, 0x4

    .line 5
    invoke-virtual {v1, v2}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 6
    invoke-virtual {v0}, Lcom/join/mgps/fragment/w4;->Z()Lcom/join/mgps/dto/AccountVoucherAd;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountVoucherAd;->getLink()Lcom/join/mgps/dto/AccountVoucherAdBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountVoucherAdBean;->getLink_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type_val(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0}, Lcom/join/mgps/fragment/w4;->Z()Lcom/join/mgps/dto/AccountVoucherAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountVoucherAd;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/join/mgps/Util/IntentDateBean;->setObject(Ljava/lang/Object;)V

    .line 8
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    invoke-virtual {v0, p0, v1}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    :cond_1
    return-void
.end method

.method afterViews()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/VoucherCodesBoxActivity;->c:Landroid/widget/TextView;

    const-string v1, "\u6e38\u620f\u793c\u5305/\u4ee3\u91d1\u5238"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/VoucherCodesBoxActivity;->f:Landroid/widget/TextView;

    const-string v1, "\u4f7f\u7528\u8bf4\u660e"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/VoucherCodesBoxActivity;->f:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4
    new-instance v0, Lcom/join/mgps/activity/VoucherCodesBoxActivity$b;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/join/mgps/activity/VoucherCodesBoxActivity$b;-><init>(Lcom/join/mgps/activity/VoucherCodesBoxActivity;Landroidx/fragment/app/FragmentManager;)V

    iput-object v0, p0, Lcom/join/mgps/activity/VoucherCodesBoxActivity;->g:Landroidx/fragment/app/FragmentPagerAdapter;

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/VoucherCodesBoxActivity;->d:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/VoucherCodesBoxActivity;->d:Landroidx/viewpager/widget/ViewPager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/VoucherCodesBoxActivity;->e:Lcom/join/mgps/customview/TabPageIndicator;

    iget-object v1, p0, Lcom/join/mgps/activity/VoucherCodesBoxActivity;->d:Landroidx/viewpager/widget/ViewPager;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/customview/TabPageIndicator;->setViewPager(Landroidx/viewpager/widget/ViewPager;I)V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/VoucherCodesBoxActivity;->e:Lcom/join/mgps/customview/TabPageIndicator;

    new-instance v1, Lcom/join/mgps/activity/VoucherCodesBoxActivity$a;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/VoucherCodesBoxActivity$a;-><init>(Lcom/join/mgps/activity/VoucherCodesBoxActivity;)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/TabPageIndicator;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/VoucherCodesBoxActivity;->d:Landroidx/viewpager/widget/ViewPager;

    iget v1, p0, Lcom/join/mgps/activity/VoucherCodesBoxActivity;->b:I

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

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
