.class public final Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment;
.super Landroidx/fragment/app/Fragment;
.source "ModGameCloudArchiveFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment$MyReceiver;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u00002\u00020\u00012\u00020\u0002:\u0001FB\u0007\u00a2\u0006\u0004\u0008D\u0010EJ\u0008\u0010\u0004\u001a\u00020\u0003H\u0002J\u0008\u0010\u0005\u001a\u00020\u0003H\u0002J&\u0010\r\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\u0007\u001a\u00020\u00062\u0008\u0010\t\u001a\u0004\u0018\u00010\u00082\u0008\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016J\u001a\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u000c2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016J\u0006\u0010\u0010\u001a\u00020\u0003J\u0012\u0010\u0012\u001a\u00020\u00032\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u000cH\u0016J\u0008\u0010\u0013\u001a\u00020\u0003H\u0016R\"\u0010\u0015\u001a\u00020\u00148\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0015\u0010\u0016\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR$\u0010\u001c\u001a\u0004\u0018\u00010\u001b8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001c\u0010\u001d\u001a\u0004\u0008\u001e\u0010\u001f\"\u0004\u0008 \u0010!R!\u0010\'\u001a\u00060\"R\u00020\u00008B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008#\u0010$\u001a\u0004\u0008%\u0010&R\"\u0010(\u001a\u00020\u00148\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008(\u0010\u0016\u001a\u0004\u0008)\u0010\u0018\"\u0004\u0008*\u0010\u001aR\u001d\u0010/\u001a\u00020+8F@\u0006X\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008,\u0010$\u001a\u0004\u0008-\u0010.R\u001d\u00104\u001a\u0002008F@\u0006X\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00081\u0010$\u001a\u0004\u00082\u00103R\u001d\u00109\u001a\u0002058F@\u0006X\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00086\u0010$\u001a\u0004\u00087\u00108R$\u0010:\u001a\u0004\u0018\u00010\u00148\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008:\u0010\u0016\u001a\u0004\u0008;\u0010\u0018\"\u0004\u0008<\u0010\u001aR$\u0010>\u001a\u0004\u0018\u00010=8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008>\u0010?\u001a\u0004\u0008@\u0010A\"\u0004\u0008B\u0010C\u00a8\u0006G"
    }
    d2 = {
        "Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment;",
        "Landroidx/fragment/app/Fragment;",
        "Landroid/view/View$OnClickListener;",
        "",
        "showTabUi",
        "startupload",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "Landroid/view/ViewGroup;",
        "container",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Landroid/view/View;",
        "onCreateView",
        "view",
        "onViewCreated",
        "initData",
        "v",
        "onClick",
        "onDestroy",
        "",
        "gameId",
        "Ljava/lang/String;",
        "getGameId",
        "()Ljava/lang/String;",
        "setGameId",
        "(Ljava/lang/String;)V",
        "Lcom/join/mgps/dto/ModGameDetailBean;",
        "modgameBean",
        "Lcom/join/mgps/dto/ModGameDetailBean;",
        "getModgameBean",
        "()Lcom/join/mgps/dto/ModGameDetailBean;",
        "setModgameBean",
        "(Lcom/join/mgps/dto/ModGameDetailBean;)V",
        "Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment$MyReceiver;",
        "receiver$delegate",
        "Lkotlin/Lazy;",
        "getReceiver",
        "()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment$MyReceiver;",
        "receiver",
        "runingArchiveId",
        "getRuningArchiveId",
        "setRuningArchiveId",
        "Lcom/join/kotlin/ui/cloudarchive/dialog/NoticeArchiveDialog;",
        "noticeDialog$delegate",
        "getNoticeDialog",
        "()Lcom/join/kotlin/ui/cloudarchive/dialog/NoticeArchiveDialog;",
        "noticeDialog",
        "Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;",
        "viewModleShareViewModle$delegate",
        "getViewModleShareViewModle",
        "()Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;",
        "viewModleShareViewModle",
        "Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;",
        "viewModle$delegate",
        "getViewModle",
        "()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;",
        "viewModle",
        "imagePath",
        "getImagePath",
        "setImagePath",
        "Lcom/join/android/app/mgsim/wufun/databinding/z30;",
        "dataBinding",
        "Lcom/join/android/app/mgsim/wufun/databinding/z30;",
        "getDataBinding",
        "()Lcom/join/android/app/mgsim/wufun/databinding/z30;",
        "setDataBinding",
        "(Lcom/join/android/app/mgsim/wufun/databinding/z30;)V",
        "<init>",
        "()V",
        "MyReceiver",
        "app_wufunNormalRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field private dataBinding:Lcom/join/android/app/mgsim/wufun/databinding/z30;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private gameId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private imagePath:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private modgameBean:Lcom/join/mgps/dto/ModGameDetailBean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final noticeDialog$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final receiver$delegate:Lkotlin/Lazy;

.field private runingArchiveId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final viewModle$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final viewModleShareViewModle$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 2
    new-instance v0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment$viewModle$2;

    invoke-direct {v0, p0}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment$viewModle$2;-><init>(Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment;->viewModle$delegate:Lkotlin/Lazy;

    .line 3
    new-instance v0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment$viewModleShareViewModle$2;

    invoke-direct {v0, p0}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment$viewModleShareViewModle$2;-><init>(Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment;->viewModleShareViewModle$delegate:Lkotlin/Lazy;

    .line 4
    new-instance v0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment$receiver$2;

    invoke-direct {v0, p0}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment$receiver$2;-><init>(Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment;->receiver$delegate:Lkotlin/Lazy;

    const-string v0, "1"

    .line 5
    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment;->gameId:Ljava/lang/String;

    const-string v0, "0"

    .line 6
    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment;->runingArchiveId:Ljava/lang/String;

    .line 7
    sget-object v0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment$noticeDialog$2;->INSTANCE:Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment$noticeDialog$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment;->noticeDialog$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$startupload(Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment;->startupload()V

    return-void
.end method

.method private final getReceiver()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment$MyReceiver;
    .locals 1

    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment;->receiver$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment$MyReceiver;

    return-object v0
.end method

.method private final showTabUi()V
    .locals 8

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3
    iget-object v2, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment;->gameId:Ljava/lang/String;

    const-string v3, "gameId"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "type"

    const/4 v4, 0x2

    .line 4
    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5
    iget-object v4, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment;->modgameBean:Lcom/join/mgps/dto/ModGameDetailBean;

    const-string v5, "datas"

    invoke-virtual {v1, v5, v4}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 6
    new-instance v4, Lcom/join/mgps/adapter/x$a;

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    .line 8
    const-class v7, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    .line 9
    invoke-static {v6, v7, v1}, Landroidx/fragment/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    const-string v6, "\u672c\u5730"

    .line 10
    invoke-direct {v4, v6, v1}, Lcom/join/mgps/adapter/x$a;-><init>(Ljava/lang/String;Landroidx/fragment/app/Fragment;)V

    .line 11
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    new-instance v1, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;

    invoke-direct {v1}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;-><init>()V

    .line 13
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 14
    iget-object v6, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment;->gameId:Ljava/lang/String;

    invoke-virtual {v4, v3, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x3

    .line 15
    invoke-virtual {v4, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 16
    iget-object v2, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment;->modgameBean:Lcom/join/mgps/dto/ModGameDetailBean;

    invoke-virtual {v4, v5, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 17
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    move-result-object v2

    iget-object v3, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment;->modgameBean:Lcom/join/mgps/dto/ModGameDetailBean;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcom/join/mgps/dto/ModGameDetailBean;->getMod_game_info()Lcom/join/mgps/dto/GamedetialModleFourBean;

    move-result-object v3

    const-string v5, "modgameBean!!.mod_game_info"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "modgameBean!!.mod_game_info.packageName"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->setPackageName(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v1, v4}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 19
    new-instance v2, Lcom/join/mgps/adapter/x$a;

    const-string v3, "\u5df2\u53d1\u5e03"

    invoke-direct {v2, v3, v1}, Lcom/join/mgps/adapter/x$a;-><init>(Ljava/lang/String;Landroidx/fragment/app/Fragment;)V

    .line 20
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    new-instance v1, Lcom/join/mgps/adapter/x;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/join/mgps/adapter/x;-><init>(Landroidx/fragment/app/FragmentManager;Ljava/util/List;)V

    .line 22
    iget-object v2, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment;->dataBinding:Lcom/join/android/app/mgsim/wufun/databinding/z30;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v2, v2, Lcom/join/android/app/mgsim/wufun/databinding/z30;->G:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v2, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 23
    iget-object v1, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment;->dataBinding:Lcom/join/android/app/mgsim/wufun/databinding/z30;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, v1, Lcom/join/android/app/mgsim/wufun/databinding/z30;->E:Lcom/flyco/tablayout/SlidingTabLayout;

    iget-object v2, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment;->dataBinding:Lcom/join/android/app/mgsim/wufun/databinding/z30;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v2, v2, Lcom/join/android/app/mgsim/wufun/databinding/z30;->G:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1, v2}, Lcom/flyco/tablayout/SlidingTabLayout;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 24
    iget-object v1, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment;->dataBinding:Lcom/join/android/app/mgsim/wufun/databinding/z30;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, v1, Lcom/join/android/app/mgsim/wufun/databinding/z30;->G:Landroidx/viewpager/widget/ViewPager;

    new-instance v2, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment$showTabUi$1;

    invoke-direct {v2, p0, v0}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment$showTabUi$1;-><init>(Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    return-void
.end method

.method private final startupload()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment$startupload$1;

    invoke-direct {v1, p0}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment$startupload$1;-><init>(Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment;)V

    invoke-static {v0, v1}, Lcom/join/kotlin/domain/ext/EXTKt;->checkHasNetWork(Landroid/content/Context;Lkotlin/jvm/functions/Function0;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final getDataBinding()Lcom/join/android/app/mgsim/wufun/databinding/z30;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment;->dataBinding:Lcom/join/android/app/mgsim/wufun/databinding/z30;

    return-object v0
.end method

.method public final getGameId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment;->gameId:Ljava/lang/String;

    return-object v0
.end method

.method public final getImagePath()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment;->imagePath:Ljava/lang/String;

    return-object v0
.end method

.method public final getModgameBean()Lcom/join/mgps/dto/ModGameDetailBean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment;->modgameBean:Lcom/join/mgps/dto/ModGameDetailBean;

    return-object v0
.end method

.method public final getNoticeDialog()Lcom/join/kotlin/ui/cloudarchive/dialog/NoticeArchiveDialog;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment;->noticeDialog$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/kotlin/ui/cloudarchive/dialog/NoticeArchiveDialog;

    return-object v0
.end method

.method public final getRuningArchiveId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment;->runingArchiveId:Ljava/lang/String;

    return-object v0
.end method

.method public final getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment;->viewModle$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    return-object v0
.end method

.method public final getViewModleShareViewModle()Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment;->viewModleShareViewModle$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;

    return-object v0
.end method

.method public final initData()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "gameId"

    const-string v2, ""

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(\"gameId\", \"\")"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment;->gameId:Ljava/lang/String;

    const-string v1, "datas"

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.join.mgps.dto.ModGameDetailBean"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/join/mgps/dto/ModGameDetailBean;

    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment;->modgameBean:Lcom/join/mgps/dto/ModGameDetailBean;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment;->dataBinding:Lcom/join/android/app/mgsim/wufun/databinding/z30;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/android/app/mgsim/wufun/databinding/z30;->i1(Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;)V

    .line 5
    :cond_1
    invoke-direct {p0}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment;->showTabUi()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object p1

    .line 2
    sget-object v0, Lcom/papa/sim/statistic/Event;->clickIssueCloudSaveButton:Lcom/papa/sim/statistic/Event;

    .line 3
    new-instance v1, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    iget-object v2, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment;->modgameBean:Lcom/join/mgps/dto/ModGameDetailBean;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/join/mgps/dto/ModGameDetailBean;->getMod_game_info()Lcom/join/mgps/dto/GamedetialModleFourBean;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_id()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object v1

    .line 4
    invoke-virtual {p1, v0, v1}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 5
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment;->getViewModleShareViewModle()Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->getRunIngArchiveId()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment;->getViewModleShareViewModle()Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->getRunIngArchiveId()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long p1, v0, v4

    if-nez p1, :cond_2

    goto/16 :goto_2

    .line 6
    :cond_2
    :goto_1
    invoke-static {}, Ln1/g;->t()Ln1/g;

    move-result-object p1

    .line 7
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment;->getViewModleShareViewModle()Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->getRunIngArchiveId()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ln1/g;->p(Ljava/lang/String;)Lcom/join/mgps/db/tables/CloudArchiveTable;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 8
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/CloudArchiveTable;->getArchiveDataJson()Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v0

    .line 10
    const-class v1, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 11
    invoke-virtual {v0, p1, v1}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    if-eqz p1, :cond_3

    .line 12
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment;->getNoticeDialog()Lcom/join/kotlin/ui/cloudarchive/dialog/NoticeArchiveDialog;

    move-result-object v0

    .line 13
    new-instance v9, Lcom/join/kotlin/ui/cloudarchive/dialog/DialogData;

    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5f53\u524d\u672c\u5730\u662f  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getNickname()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  \u7684\u5b58\u6863\uff0c\u8bf7\u5207\u6362\u56de\u9ed8\u8ba4\u5b58\u6863\u540e\u518d\u53d1\u5e03"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/16 v7, 0x8

    const/4 v8, 0x0

    const-string v2, "\u63d0\u793a"

    const-string v4, "\u5207\u6362\u5b58\u6863"

    move-object v1, v9

    .line 15
    invoke-direct/range {v1 .. v8}, Lcom/join/kotlin/ui/cloudarchive/dialog/DialogData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 16
    invoke-virtual {v0, v9}, Lcom/join/kotlin/ui/cloudarchive/dialog/NoticeArchiveDialog;->setDatas(Lcom/join/kotlin/ui/cloudarchive/dialog/DialogData;)V

    .line 17
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment;->getNoticeDialog()Lcom/join/kotlin/ui/cloudarchive/dialog/NoticeArchiveDialog;

    move-result-object p1

    new-instance v0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment$onClick$1;

    invoke-direct {v0, p0}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment$onClick$1;-><init>(Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment;)V

    invoke-virtual {p1, v0}, Lcom/join/kotlin/ui/cloudarchive/dialog/NoticeArchiveDialog;->setClickDelDialogListener(Lcom/join/kotlin/ui/cloudarchive/dialog/ClickDelDialogListener;)V

    .line 18
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment;->getNoticeDialog()Lcom/join/kotlin/ui/cloudarchive/dialog/NoticeArchiveDialog;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "parentFragmentManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lcom/join/kotlin/ui/cloudarchive/dialog/NoticeArchiveDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void

    .line 19
    :cond_3
    invoke-direct {p0}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment;->startupload()V

    goto :goto_3

    .line 20
    :cond_4
    :goto_2
    sget-object p1, Lcom/join/mgps/va/overmind/e;->n:Lcom/join/mgps/va/overmind/e$a;

    invoke-virtual {p1}, Lcom/join/mgps/va/overmind/e$a;->b()Lcom/join/mgps/va/overmind/e;

    move-result-object p1

    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p1, v0, v1, v2, v3}, Lcom/join/mgps/va/overmind/e;->F(Lcom/join/mgps/va/overmind/e;Ljava/lang/String;IILjava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 21
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment;->getViewModleShareViewModle()Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->getShowDownlloadDialog()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    goto :goto_3

    .line 22
    :cond_5
    invoke-direct {p0}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment;->startupload()V

    :goto_3
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0c0497

    const/4 v0, 0x0

    .line 1
    invoke-static {p1, p3, p2, v0}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/z30;

    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment;->dataBinding:Lcom/join/android/app/mgsim/wufun/databinding/z30;

    .line 2
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, p0}, Landroidx/databinding/ViewDataBinding;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    .line 3
    iget-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment;->dataBinding:Lcom/join/android/app/mgsim/wufun/databinding/z30;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    const p2, 0x7f080079

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 4
    :cond_0
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string p2, "com.upload.wufun.screenshot"

    .line 5
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-direct {p0}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment;->getReceiver()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment$MyReceiver;

    move-result-object p3

    invoke-virtual {p2, p3, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment;->dataBinding:Lcom/join/android/app/mgsim/wufun/databinding/z30;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment;->getReceiver()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment$MyReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment;->initData()V

    return-void
.end method

.method public final setDataBinding(Lcom/join/android/app/mgsim/wufun/databinding/z30;)V
    .locals 0
    .param p1    # Lcom/join/android/app/mgsim/wufun/databinding/z30;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment;->dataBinding:Lcom/join/android/app/mgsim/wufun/databinding/z30;

    return-void
.end method

.method public final setGameId(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment;->gameId:Ljava/lang/String;

    return-void
.end method

.method public final setImagePath(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment;->imagePath:Ljava/lang/String;

    return-void
.end method

.method public final setModgameBean(Lcom/join/mgps/dto/ModGameDetailBean;)V
    .locals 0
    .param p1    # Lcom/join/mgps/dto/ModGameDetailBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment;->modgameBean:Lcom/join/mgps/dto/ModGameDetailBean;

    return-void
.end method

.method public final setRuningArchiveId(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment;->runingArchiveId:Ljava/lang/String;

    return-void
.end method
