.class public Lcom/join/android/app/common/dialog/j;
.super Landroidx/fragment/app/DialogFragment;
.source "LocalGameThreeDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/android/app/common/dialog/j$d;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/Button;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Lcom/join/mgps/customview/NoScrollViewPager;

.field public e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/join/mgps/dto/CollectionBeanSub;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/join/mgps/adapter/x;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field private h:Z

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field k:I

.field l:J

.field private m:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field private n:Lcom/github/snowdream/android/app/downloader/DownloadTask;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/join/android/app/common/dialog/j;->h:Z

    .line 3
    new-instance v0, Lcom/join/android/app/common/dialog/j$c;

    invoke-direct {v0, p0}, Lcom/join/android/app/common/dialog/j$c;-><init>(Lcom/join/android/app/common/dialog/j;)V

    iput-object v0, p0, Lcom/join/android/app/common/dialog/j;->m:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic M(Lcom/join/android/app/common/dialog/j;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/join/android/app/common/dialog/j;->g0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    return-void
.end method

.method public static synthetic N(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 0

    invoke-static {p0}, Lcom/join/android/app/common/dialog/j;->f0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    return-void
.end method

.method public static synthetic O(Lcom/join/android/app/common/dialog/j;Lcom/join/mgps/activity/b;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/join/android/app/common/dialog/j;->e0(Lcom/join/mgps/activity/b;I)V

    return-void
.end method

.method static synthetic P(Lcom/join/android/app/common/dialog/j;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/android/app/common/dialog/j;->j0()V

    return-void
.end method

.method static synthetic Q(Lcom/join/android/app/common/dialog/j;)Lcom/join/mgps/customview/NoScrollViewPager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/android/app/common/dialog/j;->d:Lcom/join/mgps/customview/NoScrollViewPager;

    return-object p0
.end method

.method static synthetic R(Lcom/join/android/app/common/dialog/j;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/android/app/common/dialog/j;->i:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic S(Lcom/join/android/app/common/dialog/j;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/android/app/common/dialog/j;->g:Ljava/util/List;

    return-object p0
.end method

.method static synthetic T(Lcom/join/android/app/common/dialog/j;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/android/app/common/dialog/j;->b:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic U(Lcom/join/android/app/common/dialog/j;)Landroid/widget/Button;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/android/app/common/dialog/j;->a:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic V(Lcom/join/android/app/common/dialog/j;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/android/app/common/dialog/j;->c:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic W(Lcom/join/android/app/common/dialog/j;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/android/app/common/dialog/j;->i0()V

    return-void
.end method

.method static synthetic X(Lcom/join/android/app/common/dialog/j;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/android/app/common/dialog/j;->m:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic Z(Lcom/join/android/app/common/dialog/j;)Lcom/join/mgps/adapter/x;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/android/app/common/dialog/j;->f:Lcom/join/mgps/adapter/x;

    return-object p0
.end method

.method static synthetic a0(Lcom/join/android/app/common/dialog/j;)Lcom/github/snowdream/android/app/downloader/DownloadTask;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/android/app/common/dialog/j;->n:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    return-object p0
.end method

.method static synthetic b0(Lcom/join/android/app/common/dialog/j;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Lcom/github/snowdream/android/app/downloader/DownloadTask;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/android/app/common/dialog/j;->n:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    return-object p1
.end method

.method static synthetic c0(Lcom/join/android/app/common/dialog/j;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/android/app/common/dialog/j;->j:Ljava/lang/String;

    return-object p0
.end method

.method private synthetic e0(Lcom/join/mgps/activity/b;I)V
    .locals 1

    .line 1
    iget-object v0, p1, Lcom/join/mgps/activity/b;->e:Lcom/join/mgps/dto/CollectionBeanSub;

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getDownloadtaskDown()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/join/mgps/activity/b;->e:Lcom/join/mgps/dto/CollectionBeanSub;

    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getDownloadtaskDown()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object p1

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/join/android/app/common/dialog/j;->n:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/join/android/app/common/dialog/j;->d:Lcom/join/mgps/customview/NoScrollViewPager;

    add-int/lit8 v0, p2, 0x1

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/NoScrollViewPager;->setCurrentItem(I)V

    .line 3
    iget-object p1, p0, Lcom/join/android/app/common/dialog/j;->b:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 p2, p2, 0x2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/join/android/app/common/dialog/j;->e:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private static synthetic f0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 1

    .line 1
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lg1/f;->n(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic g0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/join/mgps/Util/UtilsMy;->d3(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    return-void
.end method

.method public static h0(Ljava/util/Map;)Lcom/join/android/app/common/dialog/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/join/mgps/dto/CollectionBeanSub;",
            ">;)",
            "Lcom/join/android/app/common/dialog/j;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    new-instance v1, Lcom/join/android/app/common/dialog/j;

    invoke-direct {v1}, Lcom/join/android/app/common/dialog/j;-><init>()V

    .line 3
    invoke-virtual {v1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 4
    iput-object p0, v1, Lcom/join/android/app/common/dialog/j;->e:Ljava/util/Map;

    return-object v1
.end method

.method private i0()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/dialog/j;->d:Lcom/join/mgps/customview/NoScrollViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/join/android/app/common/dialog/j;->f:Lcom/join/mgps/adapter/x;

    invoke-virtual {v1, v0}, Lcom/join/mgps/adapter/x;->getItem(I)Landroidx/fragment/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/activity/b;

    .line 3
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/join/android/app/common/dialog/i;

    invoke-direct {v3, p0, v1, v0}, Lcom/join/android/app/common/dialog/i;-><init>(Lcom/join/android/app/common/dialog/j;Lcom/join/mgps/activity/b;I)V

    const-wide/16 v0, 0x12c

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private initViewPager()V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/join/android/app/common/dialog/j;->e:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 3
    new-instance v3, Lcom/join/mgps/activity/c;

    invoke-direct {v3}, Lcom/join/mgps/activity/c;-><init>()V

    .line 4
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v3, Lcom/join/mgps/activity/b;->d:Ljava/lang/String;

    .line 5
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/join/mgps/dto/CollectionBeanSub;

    iput-object v4, v3, Lcom/join/mgps/activity/b;->e:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 6
    new-instance v4, Lcom/join/mgps/adapter/x$a;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v4, v2, v3}, Lcom/join/mgps/adapter/x$a;-><init>(Ljava/lang/String;Landroidx/fragment/app/Fragment;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_0
    iget-object v1, p0, Lcom/join/android/app/common/dialog/j;->b:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "1/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/join/android/app/common/dialog/j;->e:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    new-instance v1, Lcom/join/mgps/adapter/x;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/join/mgps/adapter/x;-><init>(Landroidx/fragment/app/FragmentManager;Ljava/util/List;)V

    iput-object v1, p0, Lcom/join/android/app/common/dialog/j;->f:Lcom/join/mgps/adapter/x;

    .line 9
    iget-object v0, p0, Lcom/join/android/app/common/dialog/j;->d:Lcom/join/mgps/customview/NoScrollViewPager;

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 10
    iget-object v0, p0, Lcom/join/android/app/common/dialog/j;->d:Lcom/join/mgps/customview/NoScrollViewPager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 11
    iget-object v0, p0, Lcom/join/android/app/common/dialog/j;->d:Lcom/join/mgps/customview/NoScrollViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/NoScrollViewPager;->setNoScroll(Z)V

    .line 12
    iget-object v0, p0, Lcom/join/android/app/common/dialog/j;->d:Lcom/join/mgps/customview/NoScrollViewPager;

    new-instance v1, Lcom/join/android/app/common/dialog/j$a;

    invoke-direct {v1, p0}, Lcom/join/android/app/common/dialog/j$a;-><init>(Lcom/join/android/app/common/dialog/j;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    return-void
.end method

.method private j0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/dialog/j;->a:Landroid/widget/Button;

    const-string v1, "\u786e\u5b9a"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object v0, p0, Lcom/join/android/app/common/dialog/j;->a:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 3
    iget-object v0, p0, Lcom/join/android/app/common/dialog/j;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method private k0()V
    .locals 4

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/join/mgps/activity/MGMainActivity;

    const/4 v1, 0x2

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/join/mgps/activity/MGMainActivity_;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/join/mgps/activity/MGMainActivity_;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v2, 0x24000000

    .line 4
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 5
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "MainPos"

    .line 6
    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "ismygame"

    const/4 v3, 0x1

    .line 7
    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8
    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 9
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 10
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/activity/MGMainActivity;

    .line 11
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/MGMainActivity;->setTabSelect(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    :goto_1
    return-void
.end method


# virtual methods
.method public d0(Z)V
    .locals 2

    const/16 v0, 0x200

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    .line 2
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v1, v1, 0x400

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    .line 6
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v1, v1, -0x401

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/dialog/j;->d:Lcom/join/mgps/customview/NoScrollViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v1, 0x7f09099b

    const/4 v2, 0x0

    if-eq p1, v1, :cond_2

    const v1, 0x7f09099d

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 p1, v0, 0x1

    .line 3
    iget-object v1, p0, Lcom/join/android/app/common/dialog/j;->e:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lt p1, v1, :cond_1

    .line 4
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    .line 5
    iput v2, p1, Landroid/os/Message;->what:I

    .line 6
    iget-object v0, p0, Lcom/join/android/app/common/dialog/j;->m:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 7
    :cond_1
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/join/android/app/common/dialog/j$b;

    invoke-direct {v1, p0, v0}, Lcom/join/android/app/common/dialog/j$b;-><init>(Lcom/join/android/app/common/dialog/j;I)V

    const-wide/16 v2, 0x12c

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 8
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 9
    iget-wide v3, p0, Lcom/join/android/app/common/dialog/j;->l:J

    sub-long v3, v0, v3

    const-wide/16 v5, 0x1f4

    cmp-long p1, v3, v5

    if-gtz p1, :cond_3

    iget p1, p0, Lcom/join/android/app/common/dialog/j;->k:I

    const/4 v3, 0x1

    if-ne p1, v3, :cond_3

    return-void

    .line 10
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v3, "onComfirmGame"

    invoke-static {p1, v3}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 11
    iput-wide v0, p0, Lcom/join/android/app/common/dialog/j;->l:J

    .line 12
    iget-object p1, p0, Lcom/join/android/app/common/dialog/j;->a:Landroid/widget/Button;

    const-string v0, "\u590d\u5236\u4e2d"

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 13
    iget-object p1, p0, Lcom/join/android/app/common/dialog/j;->a:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 14
    iget-object p1, p0, Lcom/join/android/app/common/dialog/j;->c:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 15
    new-instance p1, Lcom/join/android/app/common/dialog/j$d;

    invoke-direct {p1, p0}, Lcom/join/android/app/common/dialog/j$d;-><init>(Lcom/join/android/app/common/dialog/j;)V

    .line 16
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    invoke-virtual {p0, p1}, Lcom/join/android/app/common/dialog/j;->d0(Z)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/u;->e(Landroid/content/Context;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object p3

    invoke-virtual {p3, p0}, Lorg/greenrobot/eventbus/c;->t(Ljava/lang/Object;)V

    .line 2
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object p3

    invoke-virtual {p3}, Lg1/f;->d()Ljava/util/List;

    move-result-object p3

    iput-object p3, p0, Lcom/join/android/app/common/dialog/j;->g:Ljava/util/List;

    .line 3
    sget-object p3, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {p3}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object p3

    invoke-virtual {p3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/join/android/app/common/dialog/j;->i:Ljava/lang/String;

    .line 4
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/join/mgps/Util/u;->d:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/wufan91/31/roms"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/join/android/app/common/dialog/j;->j:Ljava/lang/String;

    .line 5
    new-instance p3, Ljava/io/File;

    iget-object v0, p0, Lcom/join/android/app/common/dialog/j;->j:Ljava/lang/String;

    invoke-direct {p3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7
    invoke-virtual {p3}, Ljava/io/File;->mkdirs()Z

    .line 8
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p3

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    const p3, 0x7f0c017b

    .line 9
    invoke-virtual {p1, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f09099b

    .line 10
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/join/android/app/common/dialog/j;->a:Landroid/widget/Button;

    const p2, 0x7f09099e

    .line 11
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/join/android/app/common/dialog/j;->b:Landroid/widget/TextView;

    const p2, 0x7f09099d

    .line 12
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/join/android/app/common/dialog/j;->c:Landroid/widget/TextView;

    const p2, 0x7f0909a1

    .line 13
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/join/mgps/customview/NoScrollViewPager;

    iput-object p2, p0, Lcom/join/android/app/common/dialog/j;->d:Lcom/join/mgps/customview/NoScrollViewPager;

    .line 14
    iget-object p2, p0, Lcom/join/android/app/common/dialog/j;->a:Landroid/widget/Button;

    invoke-virtual {p2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    iget-object p2, p0, Lcom/join/android/app/common/dialog/j;->c:Landroid/widget/TextView;

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p2, 0x0

    .line 16
    invoke-virtual {p0, p2}, Landroidx/fragment/app/DialogFragment;->setCancelable(Z)V

    .line 17
    invoke-direct {p0}, Lcom/join/android/app/common/dialog/j;->initViewPager()V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.join.android.app.mgsim.wufun.broadcast.refreshMyGame"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 4
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDestroyView()V

    .line 5
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->y(Ljava/lang/Object;)V

    return-void
.end method

.method public onEventMainThread(Lcom/join/mgps/event/l;)V
    .locals 7
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    if-eqz p1, :cond_7

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/join/mgps/event/l;->a()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/event/l;->a()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/join/android/app/common/dialog/j;->d:Lcom/join/mgps/customview/NoScrollViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    if-eqz p1, :cond_7

    .line 4
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v1

    const/16 v2, 0xd

    if-eq v1, v2, :cond_1

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v1

    const/4 v3, 0x5

    if-ne v1, v3, :cond_7

    :cond_1
    iget-object v1, p0, Lcom/join/android/app/common/dialog/j;->n:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-eqz v1, :cond_7

    .line 5
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/join/android/app/common/dialog/j;->n:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 6
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_3

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "\u6e38\u620f\u89e3\u538b\u5931\u8d25\uff01"

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 9
    :cond_2
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/join/android/app/common/dialog/g;

    invoke-direct {v2, p1}, Lcom/join/android/app/common/dialog/g;-><init>(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 10
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/join/mgps/Util/UtilsMy;->N(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Lcom/join/mgps/db/tables/EMUApkTable;

    move-result-object v1

    if-nez v1, :cond_4

    .line 11
    iput-boolean v4, p0, Lcom/join/android/app/common/dialog/j;->h:Z

    goto :goto_0

    :cond_4
    add-int/lit8 v1, v0, 0x1

    .line 12
    iget-object v2, p0, Lcom/join/android/app/common/dialog/j;->e:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-lt v1, v2, :cond_5

    .line 13
    iput-boolean v3, p0, Lcom/join/android/app/common/dialog/j;->h:Z

    .line 14
    :cond_5
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/join/android/app/common/dialog/h;

    invoke-direct {v2, p0, p1}, Lcom/join/android/app/common/dialog/h;-><init>(Lcom/join/android/app/common/dialog/j;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    const-wide/16 v5, 0xc8

    invoke-virtual {v1, v2, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    add-int/2addr v0, v4

    .line 15
    iget-object p1, p0, Lcom/join/android/app/common/dialog/j;->e:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    if-lt v0, p1, :cond_6

    .line 16
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    .line 17
    iput v3, p1, Landroid/os/Message;->what:I

    .line 18
    iget-object v0, p0, Lcom/join/android/app/common/dialog/j;->m:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 19
    :cond_6
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    .line 20
    iput v4, p1, Landroid/os/Message;->what:I

    .line 21
    iget-object v0, p0, Lcom/join/android/app/common/dialog/j;->m:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 22
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_7
    :goto_1
    return-void
.end method
