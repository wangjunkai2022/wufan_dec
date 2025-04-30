.class public final Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;
.super Lcom/join/mgps/fragment/d;
.source "CategoryDetailItemFragment.kt"

# interfaces
.implements Lcom/join/kotlin/presenter/view/CategoryView;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCategoryDetailItemFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CategoryDetailItemFragment.kt\ncom/join/kotlin/ui/findgame/CategoryDetailItemFragment\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,270:1\n764#2:271\n855#2,2:272\n764#2:274\n855#2,2:275\n1849#2:277\n764#2:278\n855#2,2:279\n1850#2:281\n1#3:282\n*E\n*S KotlinDebug\n*F\n+ 1 CategoryDetailItemFragment.kt\ncom/join/kotlin/ui/findgame/CategoryDetailItemFragment\n*L\n111#1:271\n111#1,2:272\n115#1:274\n115#1,2:275\n120#1:277\n121#1:278\n121#1,2:279\n120#1:281\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u00a2\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u0000 ~2\u00020\u00012\u00020\u00022\u00020\u0003:\u0001~B\u0007\u00a2\u0006\u0004\u0008|\u0010}J\u0008\u0010\u0005\u001a\u00020\u0004H\u0002J\u0008\u0010\u0006\u001a\u00020\u0004H\u0002J.\u0010\r\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u00072\u0006\u0010\u000c\u001a\u00020\u0007J&\u0010\u0015\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u000f\u001a\u00020\u000e2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u00102\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u0016J\u0018\u0010\u001a\u001a\u00020\u00042\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0019\u001a\u00020\u0018H\u0016J\u0010\u0010\u001d\u001a\u00020\u00042\u0006\u0010\u001c\u001a\u00020\u001bH\u0007J\u0008\u0010\u001e\u001a\u00020\u0004H\u0016J\u0008\u0010\u001f\u001a\u00020\u0004H\u0014J\u0008\u0010 \u001a\u00020\u0004H\u0016J\u0008\u0010!\u001a\u00020\u0004H\u0016J\u0010\u0010$\u001a\u00020\u00042\u0006\u0010#\u001a\u00020\"H\u0016J\u0012\u0010&\u001a\u00020\u00042\u0008\u0010%\u001a\u0004\u0018\u00010\u0014H\u0016R\"\u0010(\u001a\u00020\'8\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008(\u0010)\u001a\u0004\u0008*\u0010+\"\u0004\u0008,\u0010-R\"\u0010/\u001a\u00020.8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008/\u00100\u001a\u0004\u00081\u00102\"\u0004\u00083\u00104R\"\u00106\u001a\u0002058\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00086\u00107\u001a\u0004\u00088\u00109\"\u0004\u0008:\u0010;R\"\u0010<\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008<\u0010=\u001a\u0004\u0008>\u0010?\"\u0004\u0008@\u0010AR\"\u0010B\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008B\u0010=\u001a\u0004\u0008C\u0010?\"\u0004\u0008D\u0010AR\"\u0010F\u001a\u00020E8\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008F\u0010G\u001a\u0004\u0008H\u0010I\"\u0004\u0008J\u0010KR(\u0010N\u001a\u0008\u0012\u0004\u0012\u00020M0L8\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008N\u0010O\u001a\u0004\u0008P\u0010Q\"\u0004\u0008R\u0010SR\"\u0010U\u001a\u00020T8\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008U\u0010V\u001a\u0004\u0008W\u0010X\"\u0004\u0008Y\u0010ZR\"\u0010[\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008[\u0010=\u001a\u0004\u0008\\\u0010?\"\u0004\u0008]\u0010AR\"\u0010^\u001a\u00020\u00168\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008^\u0010_\u001a\u0004\u0008`\u0010a\"\u0004\u0008b\u0010cR\"\u0010e\u001a\u00020d8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008e\u0010f\u001a\u0004\u0008g\u0010h\"\u0004\u0008i\u0010jR\"\u0010k\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008k\u0010=\u001a\u0004\u0008l\u0010?\"\u0004\u0008m\u0010AR(\u0010o\u001a\u0008\u0012\u0004\u0012\u00020n0L8\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008o\u0010O\u001a\u0004\u0008p\u0010Q\"\u0004\u0008q\u0010SR\"\u0010r\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008r\u0010=\u001a\u0004\u0008s\u0010?\"\u0004\u0008t\u0010AR\"\u0010v\u001a\u00020u8\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008v\u0010w\u001a\u0004\u0008x\u0010y\"\u0004\u0008z\u0010{\u00a8\u0006\u007f"
    }
    d2 = {
        "Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;",
        "Lcom/join/mgps/fragment/d;",
        "Lcom/join/kotlin/presenter/view/CategoryView;",
        "Landroid/view/View$OnClickListener;",
        "",
        "initView",
        "updateRequestArgs",
        "Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;",
        "featureTypez",
        "gameTypez",
        "modelTypez",
        "playTypez",
        "themeTypez",
        "updateDatas",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "Landroid/view/ViewGroup;",
        "container",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Landroid/view/View;",
        "onCreateView",
        "",
        "pn",
        "Lcom/join/kotlin/ui/findgame/data/CategoryListMain;",
        "result",
        "onLoadDataSuccess",
        "Lcom/join/mgps/event/l;",
        "downloadTaskEvent",
        "onEventMainThread",
        "onDestroy",
        "lazyLoad",
        "showLoding",
        "hidLoading",
        "",
        "message",
        "onError",
        "v",
        "onClick",
        "Lcom/psk/kotlin/util/BasDownLoadActivityPresenter;",
        "basDownloadPresenter",
        "Lcom/psk/kotlin/util/BasDownLoadActivityPresenter;",
        "getBasDownloadPresenter",
        "()Lcom/psk/kotlin/util/BasDownLoadActivityPresenter;",
        "setBasDownloadPresenter",
        "(Lcom/psk/kotlin/util/BasDownLoadActivityPresenter;)V",
        "Lcom/join/kotlin/ui/findgame/data/TagData;",
        "gameSortType",
        "Lcom/join/kotlin/ui/findgame/data/TagData;",
        "getGameSortType",
        "()Lcom/join/kotlin/ui/findgame/data/TagData;",
        "setGameSortType",
        "(Lcom/join/kotlin/ui/findgame/data/TagData;)V",
        "Lcom/join/kotlin/ui/findgame/data/CategoryRequest;",
        "requestArgs",
        "Lcom/join/kotlin/ui/findgame/data/CategoryRequest;",
        "getRequestArgs",
        "()Lcom/join/kotlin/ui/findgame/data/CategoryRequest;",
        "setRequestArgs",
        "(Lcom/join/kotlin/ui/findgame/data/CategoryRequest;)V",
        "gameType",
        "Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;",
        "getGameType",
        "()Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;",
        "setGameType",
        "(Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;)V",
        "themeType",
        "getThemeType",
        "setThemeType",
        "Lcom/join/kotlin/EverdayNewFragment$EverdayNewAdapter;",
        "adapter",
        "Lcom/join/kotlin/EverdayNewFragment$EverdayNewAdapter;",
        "getAdapter",
        "()Lcom/join/kotlin/EverdayNewFragment$EverdayNewAdapter;",
        "setAdapter",
        "(Lcom/join/kotlin/EverdayNewFragment$EverdayNewAdapter;)V",
        "",
        "Lcom/psk/kotlin/util/CommonListMainData;",
        "showDatalist",
        "Ljava/util/List;",
        "getShowDatalist",
        "()Ljava/util/List;",
        "setShowDatalist",
        "(Ljava/util/List;)V",
        "Lcom/join/kotlin/presenter/CategoryPrensenter;",
        "categoryPrensenter",
        "Lcom/join/kotlin/presenter/CategoryPrensenter;",
        "getCategoryPrensenter",
        "()Lcom/join/kotlin/presenter/CategoryPrensenter;",
        "setCategoryPrensenter",
        "(Lcom/join/kotlin/presenter/CategoryPrensenter;)V",
        "featureType",
        "getFeatureType",
        "setFeatureType",
        "page",
        "I",
        "getPage",
        "()I",
        "setPage",
        "(I)V",
        "Landroid/os/Handler;",
        "handler",
        "Landroid/os/Handler;",
        "getHandler",
        "()Landroid/os/Handler;",
        "setHandler",
        "(Landroid/os/Handler;)V",
        "modelType",
        "getModelType",
        "setModelType",
        "Lcom/join/kotlin/ui/findgame/data/GameTypeData;",
        "gameTypeList",
        "getGameTypeList",
        "setGameTypeList",
        "playType",
        "getPlayType",
        "setPlayType",
        "Lcom/join/android/app/mgsim/wufun/databinding/u4;",
        "binding",
        "Lcom/join/android/app/mgsim/wufun/databinding/u4;",
        "getBinding",
        "()Lcom/join/android/app/mgsim/wufun/databinding/u4;",
        "setBinding",
        "(Lcom/join/android/app/mgsim/wufun/databinding/u4;)V",
        "<init>",
        "()V",
        "Companion",
        "app_wufunNormalRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field public static final Companion:Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public adapter:Lcom/join/kotlin/EverdayNewFragment$EverdayNewAdapter;

.field public basDownloadPresenter:Lcom/psk/kotlin/util/BasDownLoadActivityPresenter;

.field public binding:Lcom/join/android/app/mgsim/wufun/databinding/u4;

.field public categoryPrensenter:Lcom/join/kotlin/presenter/CategoryPrensenter;

.field private featureType:Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private gameSortType:Lcom/join/kotlin/ui/findgame/data/TagData;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private gameType:Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public gameTypeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/kotlin/ui/findgame/data/GameTypeData;",
            ">;"
        }
    .end annotation
.end field

.field private handler:Landroid/os/Handler;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private modelType:Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private page:I

.field private playType:Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private requestArgs:Lcom/join/kotlin/ui/findgame/data/CategoryRequest;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public showDatalist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/psk/kotlin/util/CommonListMainData;",
            ">;"
        }
    .end annotation
.end field

.field private themeType:Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->Companion:Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/fragment/d;-><init>()V

    .line 2
    new-instance v0, Lcom/join/kotlin/ui/findgame/data/CategoryRequest;

    invoke-direct {v0}, Lcom/join/kotlin/ui/findgame/data/CategoryRequest;-><init>()V

    iput-object v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->requestArgs:Lcom/join/kotlin/ui/findgame/data/CategoryRequest;

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->page:I

    .line 4
    new-instance v1, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    invoke-direct {v1}, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;-><init>()V

    iput-object v1, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->featureType:Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    .line 5
    new-instance v1, Lcom/join/kotlin/ui/findgame/data/TagData;

    const-string v2, "\u7efc\u5408"

    invoke-direct {v1, v0, v0, v2}, Lcom/join/kotlin/ui/findgame/data/TagData;-><init>(IILjava/lang/String;)V

    iput-object v1, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->gameSortType:Lcom/join/kotlin/ui/findgame/data/TagData;

    .line 6
    new-instance v0, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    invoke-direct {v0}, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;-><init>()V

    iput-object v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->gameType:Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    .line 7
    new-instance v0, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    invoke-direct {v0}, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;-><init>()V

    iput-object v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->modelType:Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    .line 8
    new-instance v0, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    invoke-direct {v0}, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;-><init>()V

    iput-object v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->playType:Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    .line 9
    new-instance v0, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    invoke-direct {v0}, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;-><init>()V

    iput-object v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->themeType:Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    .line 10
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment$handler$1;

    invoke-direct {v2, p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment$handler$1;-><init>(Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->handler:Landroid/os/Handler;

    return-void
.end method

.method private final initView()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->binding:Lcom/join/android/app/mgsim/wufun/databinding/u4;

    const-string v1, "binding"

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/u4;->d:Lcom/join/android/app/mgsim/wufun/databinding/w50;

    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/w50;->f:Landroid/widget/TextView;

    const-string v2, "binding.noData.setAll"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment$initView$1;

    invoke-direct {v2, p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment$initView$1;-><init>(Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;)V

    invoke-static {v0, v2}, Lcom/psk/kotlin/ext/CommonExtKt;->onClick(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 2
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->binding:Lcom/join/android/app/mgsim/wufun/databinding/u4;

    if-nez v0, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/u4;->e:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    new-instance v2, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment$initView$2;

    invoke-direct {v2, p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment$initView$2;-><init>(Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;)V

    invoke-virtual {v0, v2}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setLoadingListener(Lcom/join/android/app/component/xrecyclerview/XRecyclerView$f;)V

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v2, Lcom/join/kotlin/EverdayNewFragment$EverdayNewAdapter;

    const-string v3, "it"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->showDatalist:Ljava/util/List;

    if-nez v3, :cond_2

    const-string v4, "showDatalist"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-direct {v2, v0, v3}, Lcom/join/kotlin/EverdayNewFragment$EverdayNewAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v2, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->adapter:Lcom/join/kotlin/EverdayNewFragment$EverdayNewAdapter;

    .line 4
    :cond_3
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->binding:Lcom/join/android/app/mgsim/wufun/databinding/u4;

    if-nez v0, :cond_4

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/u4;->e:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    const-string v2, "binding.recycleView"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->adapter:Lcom/join/kotlin/EverdayNewFragment$EverdayNewAdapter;

    if-nez v2, :cond_5

    const-string v3, "adapter"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {v0, v2}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 5
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->requestArgs:Lcom/join/kotlin/ui/findgame/data/CategoryRequest;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v2

    const-string v3, "AccountUtil_.getInstance_(context)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v2

    const-string v3, "AccountUtil_.getInstance_(context).accountData"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/join/kotlin/ui/findgame/data/CategoryRequest;->setUid(I)V

    .line 6
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->binding:Lcom/join/android/app/mgsim/wufun/databinding/u4;

    if-nez v0, :cond_6

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_6
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/u4;->b:Lcom/join/android/app/mgsim/wufun/databinding/re;

    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/re;->d:Landroid/widget/LinearLayout;

    const-string v1, "binding.failedLayoutMain.lodingFaile"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment$initView$4;

    invoke-direct {v1, p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment$initView$4;-><init>(Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;)V

    invoke-static {v0, v1}, Lcom/psk/kotlin/ext/CommonExtKt;->onClick(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private final updateRequestArgs()V
    .locals 3

    const/4 v0, 0x1

    .line 1
    iput v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->page:I

    .line 2
    iget-object v1, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->requestArgs:Lcom/join/kotlin/ui/findgame/data/CategoryRequest;

    invoke-virtual {v1, v0}, Lcom/join/kotlin/ui/findgame/data/CategoryRequest;->setPage(I)V

    .line 3
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->requestArgs:Lcom/join/kotlin/ui/findgame/data/CategoryRequest;

    invoke-virtual {v0}, Lcom/join/kotlin/ui/findgame/data/CategoryRequest;->resetData()V

    .line 4
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->requestArgs:Lcom/join/kotlin/ui/findgame/data/CategoryRequest;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v1

    const-string v2, "AccountUtil_.getInstance_(context)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v1

    const-string v2, "AccountUtil_.getInstance_(context).accountData"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/join/kotlin/ui/findgame/data/CategoryRequest;->setUid(I)V

    .line 5
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->requestArgs:Lcom/join/kotlin/ui/findgame/data/CategoryRequest;

    iget-object v1, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->modelType:Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    invoke-virtual {v1}, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/join/kotlin/ui/findgame/data/CategoryRequest;->setModelType(I)V

    .line 6
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->requestArgs:Lcom/join/kotlin/ui/findgame/data/CategoryRequest;

    iget-object v1, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->gameType:Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    invoke-virtual {v1}, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/join/kotlin/ui/findgame/data/CategoryRequest;->setGameType(I)V

    .line 7
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->requestArgs:Lcom/join/kotlin/ui/findgame/data/CategoryRequest;

    iget-object v1, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->themeType:Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    invoke-virtual {v1}, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/join/kotlin/ui/findgame/data/CategoryRequest;->setThemeType(I)V

    .line 8
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->requestArgs:Lcom/join/kotlin/ui/findgame/data/CategoryRequest;

    iget-object v1, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->playType:Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    invoke-virtual {v1}, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/join/kotlin/ui/findgame/data/CategoryRequest;->setPlayType(I)V

    .line 9
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->requestArgs:Lcom/join/kotlin/ui/findgame/data/CategoryRequest;

    iget-object v1, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->featureType:Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    invoke-virtual {v1}, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/join/kotlin/ui/findgame/data/CategoryRequest;->setFeatureType(I)V

    .line 10
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->requestArgs:Lcom/join/kotlin/ui/findgame/data/CategoryRequest;

    iget-object v1, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->gameSortType:Lcom/join/kotlin/ui/findgame/data/TagData;

    invoke-virtual {v1}, Lcom/join/kotlin/ui/findgame/data/TagData;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/join/kotlin/ui/findgame/data/CategoryRequest;->setGameSortType(I)V

    return-void
.end method


# virtual methods
.method public final getAdapter()Lcom/join/kotlin/EverdayNewFragment$EverdayNewAdapter;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->adapter:Lcom/join/kotlin/EverdayNewFragment$EverdayNewAdapter;

    if-nez v0, :cond_0

    const-string v1, "adapter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getBasDownloadPresenter()Lcom/psk/kotlin/util/BasDownLoadActivityPresenter;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->basDownloadPresenter:Lcom/psk/kotlin/util/BasDownLoadActivityPresenter;

    if-nez v0, :cond_0

    const-string v1, "basDownloadPresenter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getBinding()Lcom/join/android/app/mgsim/wufun/databinding/u4;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->binding:Lcom/join/android/app/mgsim/wufun/databinding/u4;

    if-nez v0, :cond_0

    const-string v1, "binding"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getCategoryPrensenter()Lcom/join/kotlin/presenter/CategoryPrensenter;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->categoryPrensenter:Lcom/join/kotlin/presenter/CategoryPrensenter;

    if-nez v0, :cond_0

    const-string v1, "categoryPrensenter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getFeatureType()Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->featureType:Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    return-object v0
.end method

.method public final getGameSortType()Lcom/join/kotlin/ui/findgame/data/TagData;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->gameSortType:Lcom/join/kotlin/ui/findgame/data/TagData;

    return-object v0
.end method

.method public final getGameType()Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->gameType:Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    return-object v0
.end method

.method public final getGameTypeList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/kotlin/ui/findgame/data/GameTypeData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->gameTypeList:Ljava/util/List;

    if-nez v0, :cond_0

    const-string v1, "gameTypeList"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getHandler()Landroid/os/Handler;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public final getModelType()Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->modelType:Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    return-object v0
.end method

.method public final getPage()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->page:I

    return v0
.end method

.method public final getPlayType()Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->playType:Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    return-object v0
.end method

.method public final getRequestArgs()Lcom/join/kotlin/ui/findgame/data/CategoryRequest;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->requestArgs:Lcom/join/kotlin/ui/findgame/data/CategoryRequest;

    return-object v0
.end method

.method public final getShowDatalist()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/psk/kotlin/util/CommonListMainData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->showDatalist:Ljava/util/List;

    if-nez v0, :cond_0

    const-string v1, "showDatalist"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getThemeType()Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->themeType:Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    return-object v0
.end method

.method public hidLoading()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->binding:Lcom/join/android/app/mgsim/wufun/databinding/u4;

    const-string v1, "binding"

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/u4;->c:Lcom/join/android/app/mgsim/wufun/databinding/yv;

    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/yv;->c:Landroid/widget/LinearLayout;

    const-string v2, "binding.loadingLayoutMain.lodingLayout"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->binding:Lcom/join/android/app/mgsim/wufun/databinding/u4;

    if-nez v0, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/u4;->d:Lcom/join/android/app/mgsim/wufun/databinding/w50;

    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/w50;->b:Landroid/widget/LinearLayout;

    const-string v3, "binding.noData.loadingNone"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->binding:Lcom/join/android/app/mgsim/wufun/databinding/u4;

    if-nez v0, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/u4;->b:Lcom/join/android/app/mgsim/wufun/databinding/re;

    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/re;->d:Landroid/widget/LinearLayout;

    const-string v3, "binding.failedLayoutMain.lodingFaile"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->binding:Lcom/join/android/app/mgsim/wufun/databinding/u4;

    if-nez v0, :cond_3

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/u4;->e:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    const-string v1, "binding.recycleView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method protected lazyLoad()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->categoryPrensenter:Lcom/join/kotlin/presenter/CategoryPrensenter;

    if-nez v1, :cond_0

    const-string v2, "categoryPrensenter"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    const-string v2, "it"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->requestArgs:Lcom/join/kotlin/ui/findgame/data/CategoryRequest;

    invoke-virtual {v1, v0, v2}, Lcom/join/kotlin/presenter/CategoryPrensenter;->loadCategoryData(Landroid/content/Context;Lcom/join/kotlin/ui/findgame/data/CategoryRequest;)V

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
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

    const/4 p3, 0x0

    .line 1
    invoke-static {p1, p2, p3}, Lcom/join/android/app/mgsim/wufun/databinding/u4;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/join/android/app/mgsim/wufun/databinding/u4;

    move-result-object p1

    const-string p2, "CategroyDetialItemFragme\u2026flater, container, false)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->binding:Lcom/join/android/app/mgsim/wufun/databinding/u4;

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->showDatalist:Ljava/util/List;

    .line 3
    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 4
    iget-object p2, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->binding:Lcom/join/android/app/mgsim/wufun/databinding/u4;

    const-string v0, "binding"

    if-nez p2, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-object p2, p2, Lcom/join/android/app/mgsim/wufun/databinding/u4;->e:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    const-string v1, "binding.recycleView"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 5
    new-instance p2, Lcom/join/kotlin/presenter/CategoryPrensenter;

    invoke-direct {p2, p0}, Lcom/join/kotlin/presenter/CategoryPrensenter;-><init>(Lcom/join/kotlin/presenter/view/CategoryView;)V

    iput-object p2, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->categoryPrensenter:Lcom/join/kotlin/presenter/CategoryPrensenter;

    .line 6
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->showDatalist:Ljava/util/List;

    .line 7
    new-instance p2, Lcom/psk/kotlin/util/BasDownLoadActivityPresenter;

    iget-object v2, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->binding:Lcom/join/android/app/mgsim/wufun/databinding/u4;

    if-nez v2, :cond_1

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    iget-object v2, v2, Lcom/join/android/app/mgsim/wufun/databinding/u4;->e:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->showDatalist:Ljava/util/List;

    if-nez v1, :cond_2

    const-string v3, "showDatalist"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-direct {p2, p1, v2, v1}, Lcom/psk/kotlin/util/BasDownLoadActivityPresenter;-><init>(Landroidx/recyclerview/widget/LinearLayoutManager;Landroidx/recyclerview/widget/RecyclerView;Ljava/util/List;)V

    iput-object p2, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->basDownloadPresenter:Lcom/psk/kotlin/util/BasDownLoadActivityPresenter;

    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_3

    const-string v1, "type"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_3
    move-object p1, p2

    .line 9
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string p2, "data"

    invoke-virtual {v1, p2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p2

    :cond_4
    const-string v1, "null cannot be cast to non-null type com.join.kotlin.ui.findgame.data.CategroyIntentItemData"

    invoke-static {p2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, Lcom/join/kotlin/ui/findgame/data/CategroyIntentItemData;

    .line 10
    invoke-virtual {p2}, Lcom/join/kotlin/ui/findgame/data/CategroyIntentItemData;->getFeatureType()Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    move-result-object v1

    const-string v2, "initData.featureType"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->featureType:Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    .line 11
    invoke-virtual {p2}, Lcom/join/kotlin/ui/findgame/data/CategroyIntentItemData;->getGameType()Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    move-result-object v1

    const-string v2, "initData.gameType"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->gameType:Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    .line 12
    invoke-virtual {p2}, Lcom/join/kotlin/ui/findgame/data/CategroyIntentItemData;->getModelType()Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    move-result-object v1

    const-string v2, "initData.modelType"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->modelType:Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    .line 13
    invoke-virtual {p2}, Lcom/join/kotlin/ui/findgame/data/CategroyIntentItemData;->getPlayType()Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    move-result-object v1

    const-string v2, "initData.playType"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->playType:Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    .line 14
    invoke-virtual {p2}, Lcom/join/kotlin/ui/findgame/data/CategroyIntentItemData;->getThemeType()Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    move-result-object p2

    const-string v1, "initData.themeType"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->themeType:Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    .line 15
    iget-object p2, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->binding:Lcom/join/android/app/mgsim/wufun/databinding/u4;

    if-nez p2, :cond_5

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_5
    iget-object p2, p2, Lcom/join/android/app/mgsim/wufun/databinding/u4;->b:Lcom/join/android/app/mgsim/wufun/databinding/re;

    iget-object p2, p2, Lcom/join/android/app/mgsim/wufun/databinding/re;->f:Landroid/widget/Button;

    const-string v1, "binding.failedLayoutMain.setNetwork"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment$onCreateView$1;

    invoke-direct {v1, p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment$onCreateView$1;-><init>(Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;)V

    invoke-static {p2, v1}, Lcom/psk/kotlin/ext/CommonExtKt;->onClick(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 16
    iget-object p2, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->binding:Lcom/join/android/app/mgsim/wufun/databinding/u4;

    if-nez p2, :cond_6

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_6
    iget-object p2, p2, Lcom/join/android/app/mgsim/wufun/databinding/u4;->b:Lcom/join/android/app/mgsim/wufun/databinding/re;

    iget-object p2, p2, Lcom/join/android/app/mgsim/wufun/databinding/re;->e:Landroid/widget/ImageView;

    const-string v1, "binding.failedLayoutMain.relodingimag"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment$onCreateView$2;

    invoke-direct {v1, p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment$onCreateView$2;-><init>(Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;)V

    invoke-static {p2, v1}, Lcom/psk/kotlin/ext/CommonExtKt;->onClick(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 17
    iget-object p2, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->gameSortType:Lcom/join/kotlin/ui/findgame/data/TagData;

    const-string v1, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/join/kotlin/ui/findgame/data/TagData;->setId(I)V

    .line 18
    iget-object p2, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->gameSortType:Lcom/join/kotlin/ui/findgame/data/TagData;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/join/kotlin/ui/findgame/data/TagData;->setType(I)V

    .line 19
    new-instance p1, Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/join/mgps/pref/PrefDef_;->gameTypeList()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/4 p2, 0x1

    if-eqz p1, :cond_8

    .line 20
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_7

    goto :goto_1

    :cond_7
    const/4 v1, 0x0

    goto :goto_2

    :cond_8
    :goto_1
    const/4 v1, 0x1

    :goto_2
    if-eqz v1, :cond_9

    const-string p1, "[{\"id\":1,\"title\":\"\u6a21\u62df\u5668\",\"type\":1,\"sub_game_type\":[{\"id\":31,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/game_tag_type_icon/fba_icon.png\",\"title\":\"\u8857\u673a\"},{\"id\":33,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/game_tag_type_icon/gba_icon.png\",\"title\":\"GBA\"},{\"id\":34,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/game_tag_type_icon/psp_icon.png\",\"title\":\"PSP\"},{\"id\":35,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/game_tag_type_icon/fc_icon.png\",\"title\":\"FC\"},{\"id\":43,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/game_tag_type_icon/sfc_icon.png\",\"title\":\"SFC\"},{\"id\":53,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/game_tag_type_icon/ps_icon.png\",\"title\":\"PS\"},{\"id\":51,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/game_tag_type_icon/md_icon.png\",\"title\":\"MD\"},{\"id\":54,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/game_tag_type_icon/wsc_icon.png\",\"title\":\"WSC\"},{\"id\":57,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/game_tag_type_icon/n64_icon.png\",\"title\":\"N64\"},{\"id\":58,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/game_tag_type_icon/on_icon.png\",\"title\":\"ONS\"},{\"id\":32,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/game_tag_type_icon/nd_icon.png\",\"title\":\"NDS\"},{\"id\":56,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/game_tag_type_icon/gbc_icon.png\",\"title\":\"GBC\"},{\"id\":60,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/game_tag_type_icon/dc_icon.png\",\"title\":\"DC\"},{\"id\":102,\"pic\":\"\",\"title\":\"H5\"}]},{\"id\":2,\"title\":\"\u5b89\u5353\",\"type\":2,\"sub_game_type\":[{\"id\":10001,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/game_tag_type_icon/onlin_icon.png\",\"title\":\"\u7f51\u6e38\"},{\"id\":10002,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/game_tag_type_icon/single_icon.png\",\"title\":\"\u5355\u673a\"},{\"id\":10003,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/game_tag_type_icon/single_icon.png\",\"title\":\"mod\"}]},{\"id\":3,\"title\":\"\u5206\u7c7b\",\"type\":3,\"sub_game_type\":[{\"id\":24,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/f3/ae/f3ae58e30ae7e432d7571a5ab08e31a2.png\",\"title\":\"\u52a8\u4f5c\u5192\u9669\"},{\"id\":23,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/2d/31/2d31f269379aee69d2e283478a1b9aa5.png\",\"title\":\"\u4f11\u95f2\u76ca\u667a\"},{\"id\":20,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/e3/62/e36255c965b63e80d901f7ea04ae5aa1.png\",\"title\":\"\u89d2\u8272\u626e\u6f14\"},{\"id\":25,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/f4/44/f4444b37064a2cb88401db74dc5e3f75.png\",\"title\":\"\u5c04\u51fb\u98de\u884c\"},{\"id\":19,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/e1/d1/e1d1edd8076f1d92425cef93feef1cf2.png\",\"title\":\"\u7b56\u7565\u6218\u68cb\"},{\"id\":17,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/3f/c8/3fc873bf10d151215d5b977178c4afe6.png\",\"title\":\"\u6a21\u62df\u6e38\u620f\"},{\"id\":22,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/3c/05/3c054708b2a888461eb338d34412a3f0.png\",\"title\":\"\u4f53\u80b2\u6e38\u620f\"},{\"id\":39,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/8e/de/8ede16897f71fdba1389d625b1c9ccfa.png\",\"title\":\"\u7ade\u901f\u6e38\u620f\"},{\"id\":18,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/fc/9c/fc9c346e32b8f48fe6348b8b72e970ce.png\",\"title\":\"\u683c\u6597\u7ade\u6280\"},{\"id\":38,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/ef/8d/ef8d5060aa6c85a58bff921302bcc73a.png\",\"title\":\"\u7ecf\u8425\u6e38\u620f\"},{\"id\":13,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/c9/49/c949ce67d0ccf31a5dbe6cde1d6c213e.png\",\"title\":\"AVG\u604b\u7231\"},{\"id\":15,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/db/0f/db0f26037fee0b193fa9d77094238d9a.png\",\"title\":\"\u751f\u5b58\u6e38\u620f\"},{\"id\":16,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/88/ff/88ff59f4c24e0d14aed861500a9b85e9.png\",\"title\":\"\u6050\u6016\u6e38\u620f\"},{\"id\":12,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/eb/be/ebbe18e8be70b2ff811e32f5bdd8eee3.png\",\"title\":\"\u5854\u9632\u6e38\u620f\"},{\"id\":41,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/fb/5f/fb5f0f3569e9d40babd7d8c10da7195e.png\",\"title\":\"\u97f3\u4e50\u8282\u594f\"},{\"id\":21,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/a4/4c/a44c5c9440c9433dd8c90065790a72ab.png\",\"title\":\"\u653e\u7f6e\u6302\u673a\"}]},{\"id\":4,\"title\":\"\u9898\u6750\",\"type\":4,\"sub_game_type\":[{\"id\":248,\"pic\":\"\",\"title\":\"\u4e8c\u6b21\u5143\"},{\"id\":249,\"pic\":\"\",\"title\":\"\u62df\u4eba\"},{\"id\":250,\"pic\":\"\",\"title\":\"\u67aa\u6218\"},{\"id\":251,\"pic\":\"\",\"title\":\"\u5c71\u6d77\u7ecf\"},{\"id\":252,\"pic\":\"\",\"title\":\"\u52a8\u6f2bIP\"},{\"id\":253,\"pic\":\"\",\"title\":\"\u5192\u9669\"},{\"id\":254,\"pic\":\"\",\"title\":\"\u5730\u7262\u8ff7\u5bab\"},{\"id\":255,\"pic\":\"\",\"title\":\"\u9b54\u5e7b\"},{\"id\":256,\"pic\":\"\",\"title\":\"\u79d1\u5e7b\"},{\"id\":257,\"pic\":\"\",\"title\":\"\u672b\u65e5\"},{\"id\":258,\"pic\":\"\",\"title\":\"\u706b\u5f71\u5fcd\u8005\"},{\"id\":259,\"pic\":\"\",\"title\":\"\u65e5\u6f2b\"},{\"id\":260,\"pic\":\"\",\"title\":\"\u6d77\u6218\"},{\"id\":261,\"pic\":\"\",\"title\":\"\u6b66\u4fa0\"},{\"id\":262,\"pic\":\"\",\"title\":\"\u7ae5\u8bdd\"},{\"id\":263,\"pic\":\"\",\"title\":\"\u53f2\u83b1\u59c6\"},{\"id\":264,\"pic\":\"\",\"title\":\"\u7f8e\u98df\"},{\"id\":265,\"pic\":\"\",\"title\":\"\u5fcd\u8005\"},{\"id\":266,\"pic\":\"\",\"title\":\"\u706b\u67f4\u4eba\"},{\"id\":267,\"pic\":\"\",\"title\":\"\u67aa\u5a18\"},{\"id\":268,\"pic\":\"\",\"title\":\"\u9b54\u7269\u5a18\"},{\"id\":269,\"pic\":\"\",\"title\":\"\u673a\u7532\"},{\"id\":270,\"pic\":\"\",\"title\":\"\u604b\u7231\"},{\"id\":271,\"pic\":\"\",\"title\":\"\u4e09\u56fd\"},{\"id\":272,\"pic\":\"\",\"title\":\"\u6218\u4e89\"},{\"id\":273,\"pic\":\"\",\"title\":\"\u72e9\u730e\"},{\"id\":274,\"pic\":\"\",\"title\":\"\u4fee\u4ed9\"},{\"id\":275,\"pic\":\"\",\"title\":\"\u521d\u97f3\u672a\u6765\"},{\"id\":276,\"pic\":\"\",\"title\":\"\u4eba\u751f\"},{\"id\":277,\"pic\":\"\",\"title\":\"\u5766\u514b\"},{\"id\":278,\"pic\":\"\",\"title\":\"\u4e8c\u6218\"},{\"id\":279,\"pic\":\"\",\"title\":\"\u6218\u8230\"},{\"id\":280,\"pic\":\"\",\"title\":\"\u795e\u8bdd\"},{\"id\":281,\"pic\":\"\",\"title\":\"\u50f5\u5c38\"},{\"id\":282,\"pic\":\"\",\"title\":\"\u690d\u7269\"},{\"id\":283,\"pic\":\"\",\"title\":\"\u6050\u6016\"},{\"id\":284,\"pic\":\"\",\"title\":\"\u52a8\u7269\"},{\"id\":285,\"pic\":\"\",\"title\":\"\u76d7\u5893\"},{\"id\":286,\"pic\":\"\",\"title\":\"\u8230\u5a18\"},{\"id\":287,\"pic\":\"\",\"title\":\"\u72fc\u4eba\u6740\"},{\"id\":288,\"pic\":\"\",\"title\":\"2048\"},{\"id\":289,\"pic\":\"\",\"title\":\"\u4ed9\u4fa0\"},{\"id\":290,\"pic\":\"\",\"title\":\"\u897f\u6e38\"},{\"id\":291,\"pic\":\"\",\"title\":\"\u519c\u573a\"},{\"id\":292,\"pic\":\"\",\"title\":\"\u7535\u7ade\"},{\"id\":293,\"pic\":\"\",\"title\":\"\u8d5b\u8f66\"},{\"id\":294,\"pic\":\"\",\"title\":\"\u5f00\u7f57\"},{\"id\":295,\"pic\":\"\",\"title\":\"\u8db3\u7403\"},{\"id\":296,\"pic\":\"\",\"title\":\"\u7bee\u7403\"},{\"id\":297,\"pic\":\"\",\"title\":\"\u5996\u602a\"},{\"id\":298,\"pic\":\"\",\"title\":\"\u592a\u7a7a\"},{\"id\":299,\"pic\":\"\",\"title\":\"SLG\"},{\"id\":300,\"pic\":\"\",\"title\":\"\u822a\u6d77\"},{\"id\":301,\"pic\":\"\",\"title\":\"\u70f9\u996a\"},{\"id\":302,\"pic\":\"\",\"title\":\"\u6f2b\u5a01\"},{\"id\":303,\"pic\":\"\",\"title\":\"\u8d85\u7ea7\u82f1\u96c4\"},{\"id\":304,\"pic\":\"\",\"title\":\"\u7f8e\u6f2b\"},{\"id\":305,\"pic\":\"\",\"title\":\"\u6697\u9ed1\"},{\"id\":306,\"pic\":\"\",\"title\":\"\u56fd\u521b\"},{\"id\":307,\"pic\":\"\",\"title\":\"\u5076\u50cf\"},{\"id\":308,\"pic\":\"\",\"title\":\"\u624b\u673a\"},{\"id\":309,\"pic\":\"\",\"title\":\"\u514b\u82cf\u9c81\"},{\"id\":310,\"pic\":\"\",\"title\":\"\u4fa6\u63a2\"},{\"id\":311,\"pic\":\"\",\"title\":\"\u9ad8\u8fbe\"},{\"id\":312,\"pic\":\"\",\"title\":\"\u4e50\u9ad8\"},{\"id\":313,\"pic\":\"\",\"title\":\"\u6570\u72ec\"},{\"id\":314,\"pic\":\"\",\"title\":\"\u94a2\u7434\"},{\"id\":315,\"pic\":\"\",\"title\":\"\u6570\u5b66\"},{\"id\":316,\"pic\":\"\",\"title\":\"\u8131\u51fa\"},{\"id\":317,\"pic\":\"\",\"title\":\"\u5927\u5bcc\u7fc1\"},{\"id\":318,\"pic\":\"\",\"title\":\"\u53e3\u888b\u5996\u602a\"},{\"id\":319,\"pic\":\"\",\"title\":\"\u62f3\u7687\"},{\"id\":320,\"pic\":\"\",\"title\":\"\u5965\u7279\u66fc\"},{\"id\":321,\"pic\":\"\",\"title\":\"\u6b7b\u795e\"},{\"id\":322,\"pic\":\"\",\"title\":\"\u4fa0\u76d7\u730e\u8f66\u624b\"},{\"id\":323,\"pic\":\"\",\"title\":\"\u6b7b\u795evs\u706b\u5f71\"},{\"id\":324,\"pic\":\"\",\"title\":\"\u4e09\u56fd\u6218\u7eaa\"},{\"id\":325,\"pic\":\"\",\"title\":\"\u8718\u86db\u4fa0\"},{\"id\":326,\"pic\":\"\",\"title\":\"\u6e38\u620f\u738b\"},{\"id\":327,\"pic\":\"\",\"title\":\"\u523a\u5ba2\u4fe1\u6761\"},{\"id\":328,\"pic\":\"\",\"title\":\"\u5766\u514b\u5927\u6218\"},{\"id\":329,\"pic\":\"\",\"title\":\"\u201c\u70ed\u8840\u201d\u7cfb\u5217\u6e38\u620f\"},{\"id\":330,\"pic\":\"\",\"title\":\"\u6355\u9c7c\"},{\"id\":331,\"pic\":\"\",\"title\":\"\u68a6\u5e7b\u6a21\u62df\u6218\"},{\"id\":332,\"pic\":\"\",\"title\":\"\u4e09\u56fd\u65e0\u53cc\"},{\"id\":333,\"pic\":\"\",\"title\":\"\u690d\u7269\u5927\u6218\u50f5\u5c38\"},{\"id\":334,\"pic\":\"\",\"title\":\"\u9f99\u73e0\"},{\"id\":335,\"pic\":\"\",\"title\":\"\u9965\u8352\"},{\"id\":336,\"pic\":\"\",\"title\":\"\u6a21\u62df\u5c71\u7f8a\"},{\"id\":337,\"pic\":\"\",\"title\":\"\u82f1\u96c4\u8054\u76df\"},{\"id\":338,\"pic\":\"\",\"title\":\"\u4ed9\u5251\u5947\u4fa0\u4f20\"},{\"id\":339,\"pic\":\"\",\"title\":\"\u4f20\u5947\"},{\"id\":340,\"pic\":\"\",\"title\":\"\u6c34\u6d52\u4f20\"},{\"id\":341,\"pic\":\"\",\"title\":\"\u5947\u8ff9MU\"},{\"id\":342,\"pic\":\"\",\"title\":\"\u5b9e\u51b5\u8db3\u7403\"},{\"id\":343,\"pic\":\"\",\"title\":\"\u6700\u7ec8\u5e7b\u60f3\"},{\"id\":344,\"pic\":\"\",\"title\":\"\u6570\u7801\u5b9d\u8d1d\"},{\"id\":345,\"pic\":\"\",\"title\":\"\u6050\u9f99\"},{\"id\":346,\"pic\":\"\",\"title\":\"\u6218\u56fd\"},{\"id\":347,\"pic\":\"\",\"title\":\"\u6821\u56ed\"}]},{\"id\":5,\"title\":\"\u73a9\u6cd5\",\"type\":5,\"sub_game_type\":[{\"id\":385,\"pic\":\"\",\"title\":\"MOBA\"},{\"id\":386,\"pic\":\"\",\"title\":\"\u81ea\u8d70\u68cb\"},{\"id\":387,\"pic\":\"\",\"title\":\"\u5854\u9632\"},{\"id\":388,\"pic\":\"\",\"title\":\"\u517b\u6210\"},{\"id\":389,\"pic\":\"\",\"title\":\"\u7b56\u7565\"},{\"id\":390,\"pic\":\"\",\"title\":\"\u5c04\u51fb\"},{\"id\":391,\"pic\":\"\",\"title\":\"\u5361\u724c\"},{\"id\":392,\"pic\":\"\",\"title\":\"\u56de\u5408\u5236RPG\"},{\"id\":393,\"pic\":\"\",\"title\":\"\u52a8\u4f5c\"},{\"id\":394,\"pic\":\"\",\"title\":\"\u6302\u673a\u653e\u7f6e\"},{\"id\":395,\"pic\":\"\",\"title\":\"\u52a8\u4f5cRPG\"},{\"id\":396,\"pic\":\"\",\"title\":\"\u683c\u6597\"},{\"id\":397,\"pic\":\"\",\"title\":\"\u5403\u9e21\"},{\"id\":398,\"pic\":\"\",\"title\":\"\u7b56\u7565RPG\"},{\"id\":399,\"pic\":\"\",\"title\":\"MMORPG\"},{\"id\":400,\"pic\":\"\",\"title\":\"\u5efa\u9020\"},{\"id\":401,\"pic\":\"\",\"title\":\"\u6a21\u62df\"},{\"id\":402,\"pic\":\"\",\"title\":\"\u6d88\u9664\"},{\"id\":403,\"pic\":\"\",\"title\":\"\u6218\u68cb\"},{\"id\":404,\"pic\":\"\",\"title\":\"\u7ade\u901f\"},{\"id\":405,\"pic\":\"\",\"title\":\"\u8dd1\u9177\"},{\"id\":406,\"pic\":\"\",\"title\":\"\u7ecf\u8425\"},{\"id\":407,\"pic\":\"\",\"title\":\"\u5373\u65f6\u6218\u7565\"},{\"id\":408,\"pic\":\"\",\"title\":\"\u6587\u5b57\u5192\u9669\"},{\"id\":409,\"pic\":\"\",\"title\":\"\u97f3\u4e50\u8282\u594f\"},{\"id\":410,\"pic\":\"\",\"title\":\"\u68cb\u724c\"},{\"id\":411,\"pic\":\"\",\"title\":\"\u684c\u6e38\"},{\"id\":412,\"pic\":\"\",\"title\":\"io\"},{\"id\":413,\"pic\":\"\",\"title\":\"\u6362\u88c5\"},{\"id\":414,\"pic\":\"\",\"title\":\"\u95ef\u5173\"},{\"id\":415,\"pic\":\"\",\"title\":\"\u4e92\u52a8\u5c0f\u8bf4\"},{\"id\":416,\"pic\":\"\",\"title\":\"\u89e3\u8c1c\"},{\"id\":417,\"pic\":\"\",\"title\":\"\u70b9\u51fb\"},{\"id\":418,\"pic\":\"\",\"title\":\"\u76ca\u667a\"},{\"id\":419,\"pic\":\"\",\"title\":\"\u5f39\u5c04\"},{\"id\":420,\"pic\":\"\",\"title\":\"\u4f53\u80b2\"},{\"id\":421,\"pic\":\"\",\"title\":\"\u4e92\u52a8\u7535\u5f71\"},{\"id\":422,\"pic\":\"\",\"title\":\"\u968f\u884c\u6e38\u620f\"},{\"id\":423,\"pic\":\"\",\"title\":\"\u89c6\u89c9\u5c0f\u8bf4\"},{\"id\":424,\"pic\":\"\",\"title\":\"MUD\"},{\"id\":425,\"pic\":\"\",\"title\":\"\u98de\u884c\"},{\"id\":426,\"pic\":\"\",\"title\":\"\u9a7e\u9a76\"},{\"id\":427,\"pic\":\"\",\"title\":\"\u751f\u5b58\"}]},{\"id\":6,\"title\":\"\u7279\u8272\",\"type\":6,\"sub_game_type\":[{\"id\":428,\"pic\":\"\",\"title\":\"\u8054\u673a\"},{\"id\":429,\"pic\":\"\",\"title\":\"5v5\"},{\"id\":430,\"pic\":\"\",\"title\":\"\u591a\u4eba\"},{\"id\":431,\"pic\":\"\",\"title\":\"\u63a8\u5854\"},{\"id\":432,\"pic\":\"\",\"title\":\"\u7f8e\u5973\"},{\"id\":433,\"pic\":\"\",\"title\":\"\u786c\u6838\"},{\"id\":434,\"pic\":\"\",\"title\":\"\u6536\u96c6\u8981\u7d20\"},{\"id\":435,\"pic\":\"\",\"title\":\"\u56fd\u4ea7\"},{\"id\":436,\"pic\":\"\",\"title\":\"FPS\"},{\"id\":437,\"pic\":\"\",\"title\":\"PVP\"},{\"id\":438,\"pic\":\"\",\"title\":\"\u7ade\u6280\"},{\"id\":439,\"pic\":\"\",\"title\":\"TPS\"},{\"id\":440,\"pic\":\"\",\"title\":\"3D\"},{\"id\":441,\"pic\":\"\",\"title\":\"\u5408\u4f5c\"},{\"id\":442,\"pic\":\"\",\"title\":\"TPP\"},{\"id\":443,\"pic\":\"\",\"title\":\"\u5267\u60c5\"},{\"id\":444,\"pic\":\"\",\"title\":\"\u5bf9\u6218\"},{\"id\":445,\"pic\":\"\",\"title\":\"Roguelike\"},{\"id\":446,\"pic\":\"\",\"title\":\"Steam\u79fb\u690d\"},{\"id\":447,\"pic\":\"\",\"title\":\"\u72ec\u7acb\u6e38\u620f\"},{\"id\":450,\"pic\":\"\",\"title\":\"\u4f11\u95f2\"},{\"id\":451,\"pic\":\"\",\"title\":\"\u9ad8\u753b\u8d28\"},{\"id\":452,\"pic\":\"\",\"title\":\"\u9ad8\u96be\u5ea6\"},{\"id\":453,\"pic\":\"\",\"title\":\"\u6a2a\u7248\"},{\"id\":454,\"pic\":\"\",\"title\":\"\u548c\u98ce\"},{\"id\":455,\"pic\":\"\",\"title\":\"Live2D\"},{\"id\":456,\"pic\":\"\",\"title\":\"\u5361\u901a\"},{\"id\":457,\"pic\":\"\",\"title\":\"\u7ec4\u961f\"},{\"id\":458,\"pic\":\"\",\"title\":\"CCG\"},{\"id\":459,\"pic\":\"\",\"title\":\"1v1\"},{\"id\":460,\"pic\":\"\",\"title\":\"\u53ef\u7231\"},{\"id\":461,\"pic\":\"\",\"title\":\"\u5c40\u57df\u7f51\u8054\u673a\"},{\"id\":462,\"pic\":\"\",\"title\":\"\u50cf\u7d20\"},{\"id\":463,\"pic\":\"\",\"title\":\"\u5f39\u5e55\"},{\"id\":464,\"pic\":\"\",\"title\":\"\u4e2d\u56fd\u98ce\"},{\"id\":465,\"pic\":\"\",\"title\":\"\u9ad8\u81ea\u7531\u5ea6\"},{\"id\":466,\"pic\":\"\",\"title\":\"\u53e4\u98ce\"},{\"id\":467,\"pic\":\"\",\"title\":\"\u53ef\u634f\u8138\"},{\"id\":468,\"pic\":\"\",\"title\":\"\u5f00\u653e\u4e16\u754c\"},{\"id\":469,\"pic\":\"\",\"title\":\"\u793e\u4ea4\"},{\"id\":470,\"pic\":\"\",\"title\":\"DIY\"},{\"id\":471,\"pic\":\"\",\"title\":\"\u7ecf\u5178\"},{\"id\":472,\"pic\":\"\",\"title\":\"\u591a\u7ed3\u5c40\"},{\"id\":473,\"pic\":\"\",\"title\":\"\u624b\u7ed8\u98ce\u683c\"},{\"id\":474,\"pic\":\"\",\"title\":\"\u88c5\u4fee\"},{\"id\":475,\"pic\":\"\",\"title\":\"\u8bbe\u8ba1\"},{\"id\":476,\"pic\":\"\",\"title\":\"\u5973\u6027\u5411\"},{\"id\":477,\"pic\":\"\",\"title\":\"\u58f0\u63a7\"},{\"id\":478,\"pic\":\"\",\"title\":\"\u6f02\u79fb\"},{\"id\":479,\"pic\":\"\",\"title\":\"\u6c34\u58a8\u98ce\"},{\"id\":480,\"pic\":\"\",\"title\":\"2D\"},{\"id\":481,\"pic\":\"\",\"title\":\"\u6253\u51fb\u611f\"},{\"id\":482,\"pic\":\"\",\"title\":\"\u624b\u901f\"},{\"id\":483,\"pic\":\"\",\"title\":\"\u58f0\u4f18\u914d\u97f3\"},{\"id\":484,\"pic\":\"\",\"title\":\"\u81f4\u90c1\"},{\"id\":485,\"pic\":\"\",\"title\":\"DBG\"},{\"id\":486,\"pic\":\"\",\"title\":\"\u9003\u751f\"},{\"id\":487,\"pic\":\"\",\"title\":\"\u79fb\u690d\"},{\"id\":488,\"pic\":\"\",\"title\":\"\u641e\u7b11\"},{\"id\":489,\"pic\":\"\",\"title\":\"\u5408\u6210\"},{\"id\":490,\"pic\":\"\",\"title\":\"\u52a8\u4eba\u97f3\u4e50\"},{\"id\":491,\"pic\":\"\",\"title\":\"\u7535\u97f3\"},{\"id\":492,\"pic\":\"\",\"title\":\"\u7ad6\u7248\"},{\"id\":493,\"pic\":\"\",\"title\":\"\u7ae5\u5e74\"},{\"id\":494,\"pic\":\"\",\"title\":\"Q\u7248\"},{\"id\":495,\"pic\":\"\",\"title\":\"\u6709\u6bd2\"},{\"id\":496,\"pic\":\"\",\"title\":\"\u4e59\u5973\"},{\"id\":497,\"pic\":\"\",\"title\":\"TCG\"},{\"id\":498,\"pic\":\"\",\"title\":\"\u60ac\u7591\"},{\"id\":499,\"pic\":\"\",\"title\":\"\u6cbb\u6108\"},{\"id\":500,\"pic\":\"\",\"title\":\"\u7ec4\u88c5\"},{\"id\":501,\"pic\":\"\",\"title\":\"\u63a8\u7406\"},{\"id\":502,\"pic\":\"\",\"title\":\"\u89e3\u538b\"},{\"id\":503,\"pic\":\"\",\"title\":\"meta\"},{\"id\":504,\"pic\":\"\",\"title\":\"\u6c49\u5316\"},{\"id\":505,\"pic\":\"\",\"title\":\"\u6b27\u7f8e\u753b\u98ce\"},{\"id\":506,\"pic\":\"\",\"title\":\"3v3\"},{\"id\":507,\"pic\":\"\",\"title\":\"\u9b54\u6027\"},{\"id\":508,\"pic\":\"\",\"title\":\"\u5e73\u53f0\u8df3\u8dc3\"},{\"id\":509,\"pic\":\"\",\"title\":\"\u81ea\u5236\u5173\u5361\"},{\"id\":510,\"pic\":\"\",\"title\":\"\u8f7b\u6539\"},{\"id\":511,\"pic\":\"\",\"title\":\"\u7b80\u7ea6\u753b\u98ce\"},{\"id\":512,\"pic\":\"\",\"title\":\"\u8857\u673a\u98ce\u683c\"},{\"id\":513,\"pic\":\"\",\"title\":\"AR\"},{\"id\":514,\"pic\":\"\",\"title\":\"\u6237\u5916\"},{\"id\":515,\"pic\":\"\",\"title\":\"\u65e5\u7cfb\u98ce\u683c\"},{\"id\":516,\"pic\":\"\",\"title\":\"VR\"},{\"id\":517,\"pic\":\"\",\"title\":\"\u4f5b\u7cfb\"},{\"id\":518,\"pic\":\"\",\"title\":\"\u4f4e\u6a21\"},{\"id\":519,\"pic\":\"\",\"title\":\"\u5c0f\u6e05\u65b0\"},{\"id\":520,\"pic\":\"\",\"title\":\"\u4fef\u89c6\u89c6\u89d2\"},{\"id\":521,\"pic\":\"\",\"title\":\"PC\u79fb\u690d\"},{\"id\":522,\"pic\":\"\",\"title\":\"\u4e70\u65ad\u5236\"},{\"id\":523,\"pic\":\"\",\"title\":\"\u8fdb\u5316\"},{\"id\":524,\"pic\":\"\",\"title\":\"\u526a\u7eb8\u98ce\"},{\"id\":525,\"pic\":\"\",\"title\":\"\u526a\u5f71\u98ce\"},{\"id\":526,\"pic\":\"\",\"title\":\"\u50ac\u6cea\"},{\"id\":527,\"pic\":\"\",\"title\":\"\u4e0b\u843d\u5f0f\"},{\"id\":528,\"pic\":\"\",\"title\":\"\u624b\u6b8b\"},{\"id\":529,\"pic\":\"\",\"title\":\"\u53cd\u5e94\u529b\"}]}]"

    .line 21
    :cond_9
    new-instance v1, Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-direct {v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;-><init>()V

    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v2

    const-class v3, Ljava/util/List;

    new-array v4, p2, [Ljava/lang/Class;

    const-class v5, Lcom/join/kotlin/ui/findgame/data/GameTypeData;

    aput-object v5, v4, p3

    invoke-virtual {v2, v3, v4}, Lcom/join/android/app/common/utils/JsonMapper;->createCollectionType(Ljava/lang/Class;[Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "ObjectMapper().readValue\u2026ameTypeData::class.java))"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->gameTypeList:Ljava/util/List;

    const-string v1, "gameTypeList"

    if-nez p1, :cond_a

    .line 22
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 23
    :cond_a
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 24
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_b
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/join/kotlin/ui/findgame/data/GameTypeData;

    .line 25
    invoke-virtual {v4}, Lcom/join/kotlin/ui/findgame/data/GameTypeData;->getType()I

    move-result v4

    if-nez v4, :cond_c

    const/4 v4, 0x1

    goto :goto_4

    :cond_c
    const/4 v4, 0x0

    :goto_4
    if-eqz v4, :cond_b

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 26
    :cond_d
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, p2

    if-eqz p1, :cond_f

    .line 27
    iget-object p1, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->gameTypeList:Ljava/util/List;

    if-nez p1, :cond_e

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_e
    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 28
    :cond_f
    iget-object p1, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->gameTypeList:Ljava/util/List;

    if-nez p1, :cond_10

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 29
    :cond_10
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 30
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_11
    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/join/kotlin/ui/findgame/data/GameTypeData;

    .line 31
    invoke-virtual {v4}, Lcom/join/kotlin/ui/findgame/data/GameTypeData;->getType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_12

    const/4 v4, 0x1

    goto :goto_6

    :cond_12
    const/4 v4, 0x0

    :goto_6
    if-eqz v4, :cond_11

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 32
    :cond_13
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, p2

    if-eqz p1, :cond_19

    .line 33
    iget-object p1, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->gameTypeList:Ljava/util/List;

    if-nez p1, :cond_14

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_14
    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 34
    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/kotlin/ui/findgame/data/GameTypeData;

    invoke-virtual {p1}, Lcom/join/kotlin/ui/findgame/data/GameTypeData;->getSub_game_type()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v2, "da[0].sub_game_type!!"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->reversed(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    .line 36
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    .line 37
    iget-object v3, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->gameTypeList:Ljava/util/List;

    if-nez v3, :cond_15

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 38
    :cond_15
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 39
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_16
    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_18

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/join/kotlin/ui/findgame/data/GameTypeData;

    .line 40
    invoke-virtual {v6}, Lcom/join/kotlin/ui/findgame/data/GameTypeData;->getType()I

    move-result v6

    if-ne v6, p2, :cond_17

    const/4 v6, 0x1

    goto :goto_9

    :cond_17
    const/4 v6, 0x0

    :goto_9
    if-eqz v6, :cond_16

    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 41
    :cond_18
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v3

    .line 42
    invoke-interface {v3, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/kotlin/ui/findgame/data/GameTypeData;

    invoke-virtual {v3}, Lcom/join/kotlin/ui/findgame/data/GameTypeData;->getSub_game_type()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 43
    invoke-interface {v3, p3, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_7

    .line 44
    :cond_19
    invoke-static {}, Lcom/join/mgps/Util/c0;->a()Lcom/join/mgps/Util/c0;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/join/mgps/Util/c0;->d(Ljava/lang/Object;)V

    .line 45
    invoke-direct {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->initView()V

    .line 46
    iget-object p1, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->basDownloadPresenter:Lcom/psk/kotlin/util/BasDownLoadActivityPresenter;

    if-nez p1, :cond_1a

    const-string p2, "basDownloadPresenter"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1a
    iget-object p2, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->adapter:Lcom/join/kotlin/EverdayNewFragment$EverdayNewAdapter;

    if-nez p2, :cond_1b

    const-string p3, "adapter"

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1b
    invoke-virtual {p1, p2}, Lcom/psk/kotlin/util/BasDownLoadActivityPresenter;->initData(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 47
    invoke-direct {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->updateRequestArgs()V

    .line 48
    iget-object p1, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->binding:Lcom/join/android/app/mgsim/wufun/databinding/u4;

    if-nez p1, :cond_1c

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1c
    invoke-virtual {p1}, Lcom/join/android/app/mgsim/wufun/databinding/u4;->b()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 2
    invoke-static {}, Lcom/join/mgps/Util/c0;->a()Lcom/join/mgps/Util/c0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/c0;->e(Ljava/lang/Object;)V

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->showDatalist:Ljava/util/List;

    const-string v0, "showDatalist"

    if-nez p1, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->showDatalist:Ljava/util/List;

    if-nez p1, :cond_3

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-gtz p1, :cond_9

    .line 2
    :cond_4
    iget-object p1, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->binding:Lcom/join/android/app/mgsim/wufun/databinding/u4;

    const-string v0, "binding"

    if-nez p1, :cond_5

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_5
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/u4;->c:Lcom/join/android/app/mgsim/wufun/databinding/yv;

    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/yv;->c:Landroid/widget/LinearLayout;

    const-string v2, "binding.loadingLayoutMain.lodingLayout"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->binding:Lcom/join/android/app/mgsim/wufun/databinding/u4;

    if-nez p1, :cond_6

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_6
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/u4;->d:Lcom/join/android/app/mgsim/wufun/databinding/w50;

    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/w50;->b:Landroid/widget/LinearLayout;

    const-string v3, "binding.noData.loadingNone"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->binding:Lcom/join/android/app/mgsim/wufun/databinding/u4;

    if-nez p1, :cond_7

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_7
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/u4;->b:Lcom/join/android/app/mgsim/wufun/databinding/re;

    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/re;->d:Landroid/widget/LinearLayout;

    const-string v3, "binding.failedLayoutMain.lodingFaile"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->binding:Lcom/join/android/app/mgsim/wufun/databinding/u4;

    if-nez p1, :cond_8

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_8
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/u4;->e:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    const-string v0, "binding.recycleView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_9
    return-void
.end method

.method public final onEventMainThread(Lcom/join/mgps/event/l;)V
    .locals 2
    .param p1    # Lcom/join/mgps/event/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "downloadTaskEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->basDownloadPresenter:Lcom/psk/kotlin/util/BasDownLoadActivityPresenter;

    if-nez v0, :cond_0

    const-string v1, "basDownloadPresenter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0, p1}, Lcom/psk/kotlin/util/BasDownLoadActivityPresenter;->onEventMainThread(Lcom/join/mgps/event/l;)V

    return-void
.end method

.method public onLoadDataSuccess(ILcom/join/kotlin/ui/findgame/data/CategoryListMain;)V
    .locals 17
    .param p2    # Lcom/join/kotlin/ui/findgame/data/CategoryListMain;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    move-object/from16 v0, p0

    move/from16 v1, p1

    const-string v2, "result"

    move-object/from16 v3, p2

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget v2, v0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->page:I

    if-eq v1, v2, :cond_0

    return-void

    :cond_0
    const-string v2, "binding.recycleView"

    const/16 v4, 0x8

    const-string v5, "binding.noData.loadingNone"

    const-string v6, "showDatalist"

    const/4 v7, 0x0

    const/4 v8, 0x1

    const-string v9, "binding"

    if-ne v1, v8, :cond_7

    .line 2
    iput v8, v0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->page:I

    .line 3
    iget-object v1, v0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->binding:Lcom/join/android/app/mgsim/wufun/databinding/u4;

    if-nez v1, :cond_1

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    iget-object v1, v1, Lcom/join/android/app/mgsim/wufun/databinding/u4;->d:Lcom/join/android/app/mgsim/wufun/databinding/w50;

    iget-object v1, v1, Lcom/join/android/app/mgsim/wufun/databinding/w50;->b:Landroid/widget/LinearLayout;

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4
    iget-object v1, v0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->binding:Lcom/join/android/app/mgsim/wufun/databinding/u4;

    if-nez v1, :cond_2

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    iget-object v1, v1, Lcom/join/android/app/mgsim/wufun/databinding/u4;->e:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 5
    iget-object v1, v0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->showDatalist:Ljava/util/List;

    if-nez v1, :cond_3

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 6
    iget-object v1, v0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->binding:Lcom/join/android/app/mgsim/wufun/databinding/u4;

    if-nez v1, :cond_4

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    iget-object v1, v1, Lcom/join/android/app/mgsim/wufun/databinding/u4;->e:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    invoke-virtual {v1, v7}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 7
    :cond_5
    iget-object v1, v0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->showDatalist:Ljava/util/List;

    if-nez v1, :cond_6

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_6
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 8
    :cond_7
    invoke-virtual/range {p2 .. p2}, Lcom/join/kotlin/ui/findgame/data/CategoryListMain;->getGame_list()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-virtual/range {p2 .. p2}, Lcom/join/kotlin/ui/findgame/data/CategoryListMain;->getGame_list()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_c

    .line 9
    iget v1, v0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->page:I

    add-int/2addr v1, v8

    iput v1, v0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->page:I

    .line 10
    invoke-virtual/range {p2 .. p2}, Lcom/join/kotlin/ui/findgame/data/CategoryListMain;->getGame_list()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/CollectionBeanSub;

    .line 11
    new-instance v12, Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-direct {v12, v2}, Lcom/join/mgps/business/CollectionBeanSubBusiness;-><init>(Lcom/join/mgps/dto/CollectionBeanSub;)V

    const/16 v2, 0x76

    .line 12
    invoke-virtual {v12, v2}, Lcom/join/mgps/dto/DownloadPointBase;->set_from_type(I)V

    const/16 v2, 0x6c

    .line 13
    invoke-virtual {v12, v2}, Lcom/join/mgps/dto/DownloadPointBase;->set_from(I)V

    .line 14
    iget-object v2, v0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->basDownloadPresenter:Lcom/psk/kotlin/util/BasDownLoadActivityPresenter;

    if-nez v2, :cond_8

    const-string v3, "basDownloadPresenter"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_8
    invoke-virtual {v2, v12}, Lcom/psk/kotlin/util/BasDownLoadActivityPresenter;->updateDowState(Lcom/join/mgps/business/CollectionBeanSubBusiness;)V

    .line 15
    iget-object v2, v0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->showDatalist:Ljava/util/List;

    if-nez v2, :cond_9

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_9
    new-instance v3, Lcom/psk/kotlin/util/CommonListMainData;

    const/4 v11, 0x2

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0xc

    const/16 v16, 0x0

    move-object v10, v3

    invoke-direct/range {v10 .. v16}, Lcom/psk/kotlin/util/CommonListMainData;-><init>(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 16
    :cond_a
    iget-object v1, v0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->binding:Lcom/join/android/app/mgsim/wufun/databinding/u4;

    if-nez v1, :cond_b

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_b
    iget-object v1, v1, Lcom/join/android/app/mgsim/wufun/databinding/u4;->e:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    invoke-virtual {v1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->q1()V

    goto :goto_1

    .line 17
    :cond_c
    iget v1, v0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->page:I

    if-ne v1, v8, :cond_f

    .line 18
    iget-object v1, v0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->binding:Lcom/join/android/app/mgsim/wufun/databinding/u4;

    if-nez v1, :cond_d

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_d
    iget-object v1, v1, Lcom/join/android/app/mgsim/wufun/databinding/u4;->d:Lcom/join/android/app/mgsim/wufun/databinding/w50;

    iget-object v1, v1, Lcom/join/android/app/mgsim/wufun/databinding/w50;->b:Landroid/widget/LinearLayout;

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 19
    iget-object v1, v0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->binding:Lcom/join/android/app/mgsim/wufun/databinding/u4;

    if-nez v1, :cond_e

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_e
    iget-object v1, v1, Lcom/join/android/app/mgsim/wufun/databinding/u4;->e:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1

    .line 20
    :cond_f
    iget-object v1, v0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->binding:Lcom/join/android/app/mgsim/wufun/databinding/u4;

    if-nez v1, :cond_10

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_10
    iget-object v1, v1, Lcom/join/android/app/mgsim/wufun/databinding/u4;->e:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    invoke-virtual {v1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setNoMore()V

    .line 21
    :goto_1
    iget-object v1, v0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->adapter:Lcom/join/kotlin/EverdayNewFragment$EverdayNewAdapter;

    if-nez v1, :cond_11

    const-string v2, "adapter"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_11
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public final setAdapter(Lcom/join/kotlin/EverdayNewFragment$EverdayNewAdapter;)V
    .locals 1
    .param p1    # Lcom/join/kotlin/EverdayNewFragment$EverdayNewAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->adapter:Lcom/join/kotlin/EverdayNewFragment$EverdayNewAdapter;

    return-void
.end method

.method public final setBasDownloadPresenter(Lcom/psk/kotlin/util/BasDownLoadActivityPresenter;)V
    .locals 1
    .param p1    # Lcom/psk/kotlin/util/BasDownLoadActivityPresenter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->basDownloadPresenter:Lcom/psk/kotlin/util/BasDownLoadActivityPresenter;

    return-void
.end method

.method public final setBinding(Lcom/join/android/app/mgsim/wufun/databinding/u4;)V
    .locals 1
    .param p1    # Lcom/join/android/app/mgsim/wufun/databinding/u4;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->binding:Lcom/join/android/app/mgsim/wufun/databinding/u4;

    return-void
.end method

.method public final setCategoryPrensenter(Lcom/join/kotlin/presenter/CategoryPrensenter;)V
    .locals 1
    .param p1    # Lcom/join/kotlin/presenter/CategoryPrensenter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->categoryPrensenter:Lcom/join/kotlin/presenter/CategoryPrensenter;

    return-void
.end method

.method public final setFeatureType(Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;)V
    .locals 1
    .param p1    # Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->featureType:Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    return-void
.end method

.method public final setGameSortType(Lcom/join/kotlin/ui/findgame/data/TagData;)V
    .locals 1
    .param p1    # Lcom/join/kotlin/ui/findgame/data/TagData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->gameSortType:Lcom/join/kotlin/ui/findgame/data/TagData;

    return-void
.end method

.method public final setGameType(Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;)V
    .locals 1
    .param p1    # Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->gameType:Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    return-void
.end method

.method public final setGameTypeList(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/kotlin/ui/findgame/data/GameTypeData;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->gameTypeList:Ljava/util/List;

    return-void
.end method

.method public final setHandler(Landroid/os/Handler;)V
    .locals 1
    .param p1    # Landroid/os/Handler;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->handler:Landroid/os/Handler;

    return-void
.end method

.method public final setModelType(Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;)V
    .locals 1
    .param p1    # Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->modelType:Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    return-void
.end method

.method public final setPage(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->page:I

    return-void
.end method

.method public final setPlayType(Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;)V
    .locals 1
    .param p1    # Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->playType:Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    return-void
.end method

.method public final setRequestArgs(Lcom/join/kotlin/ui/findgame/data/CategoryRequest;)V
    .locals 1
    .param p1    # Lcom/join/kotlin/ui/findgame/data/CategoryRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->requestArgs:Lcom/join/kotlin/ui/findgame/data/CategoryRequest;

    return-void
.end method

.method public final setShowDatalist(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/psk/kotlin/util/CommonListMainData;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->showDatalist:Ljava/util/List;

    return-void
.end method

.method public final setThemeType(Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;)V
    .locals 1
    .param p1    # Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->themeType:Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    return-void
.end method

.method public showLoding()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->binding:Lcom/join/android/app/mgsim/wufun/databinding/u4;

    const-string v1, "binding"

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/u4;->c:Lcom/join/android/app/mgsim/wufun/databinding/yv;

    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/yv;->c:Landroid/widget/LinearLayout;

    const-string v2, "binding.loadingLayoutMain.lodingLayout"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->binding:Lcom/join/android/app/mgsim/wufun/databinding/u4;

    if-nez v0, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/u4;->d:Lcom/join/android/app/mgsim/wufun/databinding/w50;

    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/w50;->b:Landroid/widget/LinearLayout;

    const-string v2, "binding.noData.loadingNone"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->binding:Lcom/join/android/app/mgsim/wufun/databinding/u4;

    if-nez v0, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/u4;->b:Lcom/join/android/app/mgsim/wufun/databinding/re;

    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/re;->d:Landroid/widget/LinearLayout;

    const-string v3, "binding.failedLayoutMain.lodingFaile"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->binding:Lcom/join/android/app/mgsim/wufun/databinding/u4;

    if-nez v0, :cond_3

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/u4;->e:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    const-string v1, "binding.recycleView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public final updateDatas(Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;)V
    .locals 1
    .param p1    # Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "featureTypez"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gameTypez"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "modelTypez"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "playTypez"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "themeTypez"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->featureType:Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    .line 2
    iput-object p2, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->gameType:Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    .line 3
    iput-object p3, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->modelType:Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    .line 4
    iput-object p4, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->playType:Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    .line 5
    iput-object p5, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->themeType:Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    .line 6
    invoke-direct {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->updateRequestArgs()V

    .line 7
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->lazyLoad()V

    return-void
.end method
