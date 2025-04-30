.class public Lcom/join/mgps/fragment/z;
.super Ljava/lang/Object;
.source "CurrentFragmentImpl.java"

# interfaces
.implements Lcom/join/mgps/fragment/y;


# instance fields
.field private final a:Landroidx/viewpager/widget/ViewPager;

.field private final b:Landroidx/fragment/app/FragmentManager;

.field private final c:Lcom/join/mgps/adapter/x;


# direct methods
.method public constructor <init>(Landroidx/viewpager/widget/ViewPager;Landroidx/fragment/app/FragmentManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/join/mgps/fragment/z;->a:Landroidx/viewpager/widget/ViewPager;

    .line 3
    iput-object p2, p0, Lcom/join/mgps/fragment/z;->b:Landroidx/fragment/app/FragmentManager;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/x;

    iput-object p1, p0, Lcom/join/mgps/fragment/z;->c:Lcom/join/mgps/adapter/x;

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Lcom/join/mgps/adapter/x;

    invoke-direct {p1, p2}, Lcom/join/mgps/adapter/x;-><init>(Landroidx/fragment/app/FragmentManager;)V

    iput-object p1, p0, Lcom/join/mgps/fragment/z;->c:Lcom/join/mgps/adapter/x;

    :goto_0
    return-void
.end method

.method private static b(IJ)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android:switcher:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a()Lcom/join/mgps/fragment/u0;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/z;->a:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x0

    if-ltz v0, :cond_1

    .line 2
    iget-object v2, p0, Lcom/join/mgps/fragment/z;->c:Lcom/join/mgps/adapter/x;

    .line 3
    invoke-virtual {v2}, Lcom/join/mgps/adapter/x;->getCount()I

    move-result v2

    if-lt v0, v2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v2, p0, Lcom/join/mgps/fragment/z;->a:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getId()I

    move-result v2

    iget-object v3, p0, Lcom/join/mgps/fragment/z;->c:Lcom/join/mgps/adapter/x;

    invoke-virtual {v3, v0}, Lcom/join/mgps/adapter/x;->getItemId(I)J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/join/mgps/fragment/z;->b(IJ)Ljava/lang/String;

    move-result-object v0

    .line 5
    iget-object v2, p0, Lcom/join/mgps/fragment/z;->b:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v2, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    move-object v1, v0

    check-cast v1, Lcom/join/mgps/fragment/u0;

    :cond_1
    :goto_0
    return-object v1
.end method
