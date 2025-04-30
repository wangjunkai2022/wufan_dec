.class public Lcom/join/mgps/activity/PaPaStandAloneActivity;
.super Lcom/BaseFragmentActivity;
.source "PaPaStandAloneActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/PaPaStandAloneActivity$a;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0c005e
.end annotation


# static fields
.field static e:[Ljava/lang/String;


# instance fields
.field a:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field b:Lcom/join/mgps/customview/InterceptEventViewPager;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field c:Lcom/join/mgps/customview/TabPageIndicator;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private d:[Landroidx/fragment/app/Fragment;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string v0, "\u63a8\u8350"

    const-string v1, "\u4e2d\u6587"

    const-string v2, "\u7834\u89e3"

    const-string v3, "\u7f8e\u56fd\u699c"

    const-string v4, "\u65e5\u672c\u699c"

    const-string v5, "\u97e9\u56fd\u699c"

    .line 1
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/join/mgps/activity/PaPaStandAloneActivity;->e:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/BaseFragmentActivity;-><init>()V

    .line 2
    sget-object v0, Lcom/join/mgps/activity/PaPaStandAloneActivity;->e:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Landroidx/fragment/app/Fragment;

    iput-object v0, p0, Lcom/join/mgps/activity/PaPaStandAloneActivity;->d:[Landroidx/fragment/app/Fragment;

    return-void
.end method

.method static synthetic D0(Lcom/join/mgps/activity/PaPaStandAloneActivity;I)Landroidx/fragment/app/Fragment;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/PaPaStandAloneActivity;->G0(I)Landroidx/fragment/app/Fragment;

    move-result-object p0

    return-object p0
.end method

.method private E0(I)I
    .locals 3

    if-eqz p1, :cond_5

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    const/4 v2, 0x3

    if-eq p1, v2, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    return v2

    :cond_1
    return v1

    :cond_2
    return v0

    :cond_3
    const/16 p1, 0xd

    return p1

    :cond_4
    const/16 p1, 0xc

    return p1

    :cond_5
    const/16 p1, 0xb

    return p1
.end method

.method private G0(I)Landroidx/fragment/app/Fragment;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/PaPaStandAloneActivity;->d:[Landroidx/fragment/app/Fragment;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/PaPaStandAloneActivity;->E0(I)I

    move-result v0

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    const/4 v1, 0x5

    if-eq p1, v1, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_1
    invoke-static {v0}, Lcom/join/mgps/fragment/w3;->O(I)Lcom/join/mgps/fragment/w3;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/join/mgps/activity/PaPaStandAloneActivity;->d:[Landroidx/fragment/app/Fragment;

    aput-object v0, v1, p1

    return-object v0

    .line 5
    :cond_2
    invoke-static {v0}, Lcom/join/mgps/fragment/s3;->c0(I)Lcom/join/mgps/fragment/s3;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/join/mgps/activity/PaPaStandAloneActivity;->d:[Landroidx/fragment/app/Fragment;

    aput-object v0, v1, p1

    return-object v0
.end method


# virtual methods
.method public F0()Lcom/join/mgps/customview/InterceptEventViewPager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/PaPaStandAloneActivity;->b:Lcom/join/mgps/customview/InterceptEventViewPager;

    return-object v0
.end method

.method afterViews()V
    .locals 7
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/PaPaStandAloneActivity;->a:Landroid/widget/TextView;

    const-string v1, "\u609f\u996d\u5355\u673a"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    new-instance v0, Lcom/join/mgps/activity/PaPaStandAloneActivity$a;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/join/mgps/activity/PaPaStandAloneActivity$a;-><init>(Lcom/join/mgps/activity/PaPaStandAloneActivity;Landroidx/fragment/app/FragmentManager;)V

    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/PaPaStandAloneActivity;->b:Lcom/join/mgps/customview/InterceptEventViewPager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/join/mgps/customview/InterceptEventViewPager;->setIsAsParentViewPager(Z)V

    .line 4
    iget-object v1, p0, Lcom/join/mgps/activity/PaPaStandAloneActivity;->b:Lcom/join/mgps/customview/InterceptEventViewPager;

    invoke-virtual {v1, v0}, Lcom/join/mgps/customview/InterceptEventViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/PaPaStandAloneActivity;->b:Lcom/join/mgps/customview/InterceptEventViewPager;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/PaPaStandAloneActivity;->b:Lcom/join/mgps/customview/InterceptEventViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/InterceptEventViewPager;->setCurrentItem(I)V

    .line 7
    sget-object v0, Lcom/MApplication;->s:Ljava/lang/String;

    const-string v1, "2308"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/MApplication;->s:Ljava/lang/String;

    const-string v1, "750"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/MApplication;->s:Ljava/lang/String;

    const-string v1, "753"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v1, "\u63a8\u8350"

    const-string v2, "\u4e2d\u6587"

    const-string v3, "\u7ecf\u5178"

    const-string v4, "\u7f8e\u56fd\u699c"

    const-string v5, "\u65e5\u672c\u699c"

    const-string v6, "\u97e9\u56fd\u699c"

    .line 8
    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/join/mgps/activity/PaPaStandAloneActivity;->e:[Ljava/lang/String;

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/PaPaStandAloneActivity;->c:Lcom/join/mgps/customview/TabPageIndicator;

    iget-object v1, p0, Lcom/join/mgps/activity/PaPaStandAloneActivity;->b:Lcom/join/mgps/customview/InterceptEventViewPager;

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/TabPageIndicator;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V

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

.method protected onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/BaseFragmentActivity;->onDestroy()V

    return-void
.end method
