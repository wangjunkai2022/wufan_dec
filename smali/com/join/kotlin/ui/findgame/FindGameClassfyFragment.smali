.class public final Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;
.super Landroidx/fragment/app/Fragment;
.source "FindGameClassfyFragment.kt"

# interfaces
.implements Lcom/join/kotlin/presenter/view/FindHomeView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$TabViewHolder;,
        Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$OnSelectedTabListener;,
        Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$TabRecycleAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFindGameClassfyFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FindGameClassfyFragment.kt\ncom/join/kotlin/ui/findgame/FindGameClassfyFragment\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,325:1\n1849#2:326\n1849#2,2:327\n1850#2:329\n764#2:330\n855#2,2:331\n1358#2:333\n1444#2,5:334\n1849#2,2:339\n764#2:341\n855#2,2:342\n1358#2:344\n1444#2,5:345\n1849#2,2:350\n764#2:352\n855#2,2:353\n1358#2:355\n1444#2,5:356\n1849#2,2:361\n*E\n*S KotlinDebug\n*F\n+ 1 FindGameClassfyFragment.kt\ncom/join/kotlin/ui/findgame/FindGameClassfyFragment\n*L\n196#1:326\n198#1,2:327\n196#1:329\n269#1:330\n269#1,2:331\n269#1:333\n269#1,5:334\n269#1,2:339\n281#1:341\n281#1,2:342\n281#1:344\n281#1,5:345\n281#1,2:350\n293#1:352\n293#1,2:353\n293#1:355\n293#1,5:356\n293#1,2:361\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0094\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u000c\u0018\u00002\u00020\u00012\u00020\u0002:\u0003ijkB\u0007\u00a2\u0006\u0004\u0008g\u0010hJ&\u0010\n\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0004\u001a\u00020\u00032\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0016J\u0010\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000c\u001a\u00020\u000bH\u0007J\u0008\u0010\u000f\u001a\u00020\rH\u0016J\u001a\u0010\u0011\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\t2\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0016J\u0018\u0010\u0016\u001a\u00020\r2\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u0014H\u0016J\u000e\u0010\u0018\u001a\u00020\r2\u0006\u0010\u0017\u001a\u00020\u0012J\u0008\u0010\u0019\u001a\u00020\rH\u0016J\u0008\u0010\u001a\u001a\u00020\rH\u0016J\u0010\u0010\u001d\u001a\u00020\r2\u0006\u0010\u001c\u001a\u00020\u001bH\u0016R\"\u0010\u001e\u001a\u00020\u00128\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001e\u0010\u001f\u001a\u0004\u0008 \u0010!\"\u0004\u0008\"\u0010#R\"\u0010%\u001a\u00020$8\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008%\u0010&\u001a\u0004\u0008\'\u0010(\"\u0004\u0008)\u0010*R\"\u0010,\u001a\u00020+8\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008,\u0010-\u001a\u0004\u0008.\u0010/\"\u0004\u00080\u00101R\"\u00102\u001a\u00020\u00128\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00082\u0010\u001f\u001a\u0004\u00083\u0010!\"\u0004\u00084\u0010#R(\u00107\u001a\u0008\u0012\u0004\u0012\u000206058\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00087\u00108\u001a\u0004\u00089\u0010:\"\u0004\u0008;\u0010<R\"\u0010>\u001a\u00020=8\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008>\u0010?\u001a\u0004\u0008@\u0010A\"\u0004\u0008B\u0010CR(\u0010D\u001a\u0008\u0012\u0004\u0012\u000206058\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008D\u00108\u001a\u0004\u0008E\u0010:\"\u0004\u0008F\u0010<R\"\u0010H\u001a\u00020G8\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008H\u0010I\u001a\u0004\u0008J\u0010K\"\u0004\u0008L\u0010MR\"\u0010O\u001a\u00020N8\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008O\u0010P\u001a\u0004\u0008Q\u0010R\"\u0004\u0008S\u0010TR(\u0010V\u001a\u0008\u0012\u0004\u0012\u00020U058\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008V\u00108\u001a\u0004\u0008W\u0010:\"\u0004\u0008X\u0010<R\"\u0010Z\u001a\u00020Y8\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008Z\u0010[\u001a\u0004\u0008\\\u0010]\"\u0004\u0008^\u0010_R\"\u0010a\u001a\u00020`8\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008a\u0010b\u001a\u0004\u0008c\u0010d\"\u0004\u0008e\u0010f\u00a8\u0006l"
    }
    d2 = {
        "Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;",
        "Landroidx/fragment/app/Fragment;",
        "Lcom/join/kotlin/presenter/view/FindHomeView;",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "Landroid/view/ViewGroup;",
        "container",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Landroid/view/View;",
        "onCreateView",
        "Lcom/join/mgps/event/l;",
        "downloadTaskEvent",
        "",
        "onEventMainThread",
        "onDestroyView",
        "view",
        "onViewCreated",
        "",
        "pagex",
        "Lcom/join/kotlin/ui/findgame/data/FindChoiceResultData;",
        "result",
        "onLoadDataSuccess",
        "id",
        "showTypeList",
        "showLoding",
        "hidLoading",
        "",
        "message",
        "onError",
        "selectedType",
        "I",
        "getSelectedType",
        "()I",
        "setSelectedType",
        "(I)V",
        "Lcom/join/kotlin/presenter/FindModlePrensenter;",
        "presenter",
        "Lcom/join/kotlin/presenter/FindModlePrensenter;",
        "getPresenter",
        "()Lcom/join/kotlin/presenter/FindModlePrensenter;",
        "setPresenter",
        "(Lcom/join/kotlin/presenter/FindModlePrensenter;)V",
        "Lcom/psk/kotlin/util/BasDownLoadActivityPresenter;",
        "downloadprensenter",
        "Lcom/psk/kotlin/util/BasDownLoadActivityPresenter;",
        "getDownloadprensenter",
        "()Lcom/psk/kotlin/util/BasDownLoadActivityPresenter;",
        "setDownloadprensenter",
        "(Lcom/psk/kotlin/util/BasDownLoadActivityPresenter;)V",
        "page",
        "getPage",
        "setPage",
        "",
        "Lcom/psk/kotlin/util/CommonListMainData;",
        "datas",
        "Ljava/util/List;",
        "getDatas",
        "()Ljava/util/List;",
        "setDatas",
        "(Ljava/util/List;)V",
        "Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$TabRecycleAdapter;",
        "leftTypeAdapter",
        "Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$TabRecycleAdapter;",
        "getLeftTypeAdapter",
        "()Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$TabRecycleAdapter;",
        "setLeftTypeAdapter",
        "(Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$TabRecycleAdapter;)V",
        "choiceListData",
        "getChoiceListData",
        "setChoiceListData",
        "Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;",
        "requestArgs",
        "Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;",
        "getRequestArgs",
        "()Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;",
        "setRequestArgs",
        "(Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;)V",
        "Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter;",
        "findClassifyAdapter",
        "Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter;",
        "getFindClassifyAdapter",
        "()Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter;",
        "setFindClassifyAdapter",
        "(Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter;)V",
        "Lcom/join/kotlin/ui/findgame/data/GameTypeData;",
        "gameTypeList",
        "getGameTypeList",
        "setGameTypeList",
        "Lcom/join/kotlin/ui/findgame/adapter/FindTypeListAdapter;",
        "findTypeAdapter",
        "Lcom/join/kotlin/ui/findgame/adapter/FindTypeListAdapter;",
        "getFindTypeAdapter",
        "()Lcom/join/kotlin/ui/findgame/adapter/FindTypeListAdapter;",
        "setFindTypeAdapter",
        "(Lcom/join/kotlin/ui/findgame/adapter/FindTypeListAdapter;)V",
        "Lcom/join/android/app/mgsim/wufun/databinding/gf;",
        "binding",
        "Lcom/join/android/app/mgsim/wufun/databinding/gf;",
        "getBinding",
        "()Lcom/join/android/app/mgsim/wufun/databinding/gf;",
        "setBinding",
        "(Lcom/join/android/app/mgsim/wufun/databinding/gf;)V",
        "<init>",
        "()V",
        "OnSelectedTabListener",
        "TabRecycleAdapter",
        "TabViewHolder",
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
.field public binding:Lcom/join/android/app/mgsim/wufun/databinding/gf;

.field private choiceListData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/psk/kotlin/util/CommonListMainData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private datas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/psk/kotlin/util/CommonListMainData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public downloadprensenter:Lcom/psk/kotlin/util/BasDownLoadActivityPresenter;

.field public findClassifyAdapter:Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter;

.field public findTypeAdapter:Lcom/join/kotlin/ui/findgame/adapter/FindTypeListAdapter;

.field public gameTypeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/kotlin/ui/findgame/data/GameTypeData;",
            ">;"
        }
    .end annotation
.end field

.field public leftTypeAdapter:Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$TabRecycleAdapter;

.field private page:I

.field public presenter:Lcom/join/kotlin/presenter/FindModlePrensenter;

.field public requestArgs:Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;

.field private selectedType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->choiceListData:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->datas:Ljava/util/List;

    const/4 v0, 0x1

    .line 4
    iput v0, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->page:I

    return-void
.end method


# virtual methods
.method public final getBinding()Lcom/join/android/app/mgsim/wufun/databinding/gf;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->binding:Lcom/join/android/app/mgsim/wufun/databinding/gf;

    if-nez v0, :cond_0

    const-string v1, "binding"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getChoiceListData()Ljava/util/List;
    .locals 1
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
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->choiceListData:Ljava/util/List;

    return-object v0
.end method

.method public final getDatas()Ljava/util/List;
    .locals 1
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
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->datas:Ljava/util/List;

    return-object v0
.end method

.method public final getDownloadprensenter()Lcom/psk/kotlin/util/BasDownLoadActivityPresenter;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->downloadprensenter:Lcom/psk/kotlin/util/BasDownLoadActivityPresenter;

    if-nez v0, :cond_0

    const-string v1, "downloadprensenter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getFindClassifyAdapter()Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->findClassifyAdapter:Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter;

    if-nez v0, :cond_0

    const-string v1, "findClassifyAdapter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getFindTypeAdapter()Lcom/join/kotlin/ui/findgame/adapter/FindTypeListAdapter;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->findTypeAdapter:Lcom/join/kotlin/ui/findgame/adapter/FindTypeListAdapter;

    if-nez v0, :cond_0

    const-string v1, "findTypeAdapter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
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
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->gameTypeList:Ljava/util/List;

    if-nez v0, :cond_0

    const-string v1, "gameTypeList"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getLeftTypeAdapter()Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$TabRecycleAdapter;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->leftTypeAdapter:Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$TabRecycleAdapter;

    if-nez v0, :cond_0

    const-string v1, "leftTypeAdapter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getPage()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->page:I

    return v0
.end method

.method public final getPresenter()Lcom/join/kotlin/presenter/FindModlePrensenter;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->presenter:Lcom/join/kotlin/presenter/FindModlePrensenter;

    if-nez v0, :cond_0

    const-string v1, "presenter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getRequestArgs()Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->requestArgs:Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;

    if-nez v0, :cond_0

    const-string v1, "requestArgs"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getSelectedType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->selectedType:I

    return v0
.end method

.method public hidLoading()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->binding:Lcom/join/android/app/mgsim/wufun/databinding/gf;

    const-string v1, "binding"

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/gf;->e:Lcom/join/android/app/mgsim/wufun/databinding/yv;

    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/yv;->c:Landroid/widget/LinearLayout;

    const-string v2, "binding.loadingLayoutMain.lodingLayout"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->binding:Lcom/join/android/app/mgsim/wufun/databinding/gf;

    if-nez v0, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/gf;->c:Lcom/join/android/app/mgsim/wufun/databinding/re;

    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/re;->d:Landroid/widget/LinearLayout;

    const-string v3, "binding.failedLayoutMain.lodingFaile"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->binding:Lcom/join/android/app/mgsim/wufun/databinding/gf;

    if-nez v0, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/gf;->d:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    const-string v1, "binding.llMain"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9
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
    invoke-static {p1, p2, p3}, Lcom/join/android/app/mgsim/wufun/databinding/gf;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/join/android/app/mgsim/wufun/databinding/gf;

    move-result-object p1

    const-string p2, "FindgameClassfyFragmentL\u2026flater, container, false)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->binding:Lcom/join/android/app/mgsim/wufun/databinding/gf;

    .line 2
    invoke-static {}, Lcom/join/mgps/Util/c0;->a()Lcom/join/mgps/Util/c0;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/join/mgps/Util/c0;->d(Ljava/lang/Object;)V

    .line 3
    iget-object p1, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->binding:Lcom/join/android/app/mgsim/wufun/databinding/gf;

    const-string p2, "binding"

    if-nez p1, :cond_0

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/gf;->f:Landroidx/recyclerview/widget/RecyclerView;

    const-string v0, "binding.tabLayout"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->gameTypeList:Ljava/util/List;

    .line 5
    new-instance p1, Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/join/mgps/pref/PrefDef_;->gameTypeList()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    .line 6
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-nez v2, :cond_3

    .line 7
    new-instance v2, Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-direct {v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;-><init>()V

    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v3

    const-class v4, Ljava/util/List;

    new-array v1, v1, [Ljava/lang/Class;

    const-class v5, Lcom/join/kotlin/ui/findgame/data/GameTypeData;

    aput-object v5, v1, p3

    invoke-virtual {v3, v4, v1}, Lcom/join/android/app/common/utils/JsonMapper;->createCollectionType(Ljava/lang/Class;[Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    invoke-virtual {v2, p1, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "ObjectMapper().readValue\u2026ameTypeData::class.java))"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->gameTypeList:Ljava/util/List;

    .line 8
    :cond_3
    iget-object p1, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->gameTypeList:Ljava/util/List;

    const-string v1, "gameTypeList"

    if-nez p1, :cond_4

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_c

    .line 9
    iget-object p1, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->gameTypeList:Ljava/util/List;

    if-nez p1, :cond_5

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_5
    new-instance v8, Lcom/join/kotlin/ui/findgame/data/GameTypeData;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const-string v4, "\u7cbe\u9009"

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/join/kotlin/ui/findgame/data/GameTypeData;-><init>(ILjava/lang/String;ILjava/util/List;Z)V

    invoke-interface {p1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    iget-object p1, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->gameTypeList:Ljava/util/List;

    if-nez p1, :cond_6

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_6
    new-instance v8, Lcom/join/kotlin/ui/findgame/data/GameTypeData;

    const/4 v3, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v4, "\u6a21\u62df\u5668"

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/join/kotlin/ui/findgame/data/GameTypeData;-><init>(ILjava/lang/String;ILjava/util/List;Z)V

    invoke-interface {p1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    iget-object p1, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->gameTypeList:Ljava/util/List;

    if-nez p1, :cond_7

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_7
    new-instance v8, Lcom/join/kotlin/ui/findgame/data/GameTypeData;

    const/4 v3, 0x2

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v4, "\u5b89\u5353"

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/join/kotlin/ui/findgame/data/GameTypeData;-><init>(ILjava/lang/String;ILjava/util/List;Z)V

    invoke-interface {p1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    iget-object p1, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->gameTypeList:Ljava/util/List;

    if-nez p1, :cond_8

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_8
    new-instance v8, Lcom/join/kotlin/ui/findgame/data/GameTypeData;

    const/4 v3, 0x3

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v4, "\u5206\u7c7b"

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/join/kotlin/ui/findgame/data/GameTypeData;-><init>(ILjava/lang/String;ILjava/util/List;Z)V

    invoke-interface {p1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    iget-object p1, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->gameTypeList:Ljava/util/List;

    if-nez p1, :cond_9

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_9
    new-instance v8, Lcom/join/kotlin/ui/findgame/data/GameTypeData;

    const/4 v3, 0x4

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v4, "\u9898\u6750"

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/join/kotlin/ui/findgame/data/GameTypeData;-><init>(ILjava/lang/String;ILjava/util/List;Z)V

    invoke-interface {p1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    iget-object p1, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->gameTypeList:Ljava/util/List;

    if-nez p1, :cond_a

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_a
    new-instance v8, Lcom/join/kotlin/ui/findgame/data/GameTypeData;

    const/4 v3, 0x5

    const/4 v5, 0x5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v4, "\u73a9\u6cd5"

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/join/kotlin/ui/findgame/data/GameTypeData;-><init>(ILjava/lang/String;ILjava/util/List;Z)V

    invoke-interface {p1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    iget-object p1, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->gameTypeList:Ljava/util/List;

    if-nez p1, :cond_b

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_b
    new-instance v8, Lcom/join/kotlin/ui/findgame/data/GameTypeData;

    const/4 v3, 0x6

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v4, "\u7279\u8272"

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/join/kotlin/ui/findgame/data/GameTypeData;-><init>(ILjava/lang/String;ILjava/util/List;Z)V

    invoke-interface {p1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    :cond_c
    new-instance p1, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$TabRecycleAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v3, "activity!!"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$onCreateView$1;

    invoke-direct {v4, p0}, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$onCreateView$1;-><init>(Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;)V

    .line 17
    iget-object v5, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->gameTypeList:Ljava/util/List;

    if-nez v5, :cond_d

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 18
    :cond_d
    invoke-direct {p1, v2, v4, v5}, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$TabRecycleAdapter;-><init>(Landroid/content/Context;Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$OnSelectedTabListener;Ljava/util/List;)V

    iput-object p1, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->leftTypeAdapter:Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$TabRecycleAdapter;

    .line 19
    iget-object p1, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->binding:Lcom/join/android/app/mgsim/wufun/databinding/gf;

    if-nez p1, :cond_e

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_e
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/gf;->f:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->leftTypeAdapter:Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$TabRecycleAdapter;

    const-string v1, "leftTypeAdapter"

    if-nez v0, :cond_f

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_f
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 20
    iget-object p1, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->leftTypeAdapter:Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$TabRecycleAdapter;

    if-nez p1, :cond_10

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_10
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 21
    iget-object p1, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->binding:Lcom/join/android/app/mgsim/wufun/databinding/gf;

    if-nez p1, :cond_11

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_11
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/gf;->c:Lcom/join/android/app/mgsim/wufun/databinding/re;

    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/re;->f:Landroid/widget/Button;

    const-string v0, "binding.failedLayoutMain.setNetwork"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$onCreateView$2;

    invoke-direct {v0, p0}, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$onCreateView$2;-><init>(Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;)V

    invoke-static {p1, v0}, Lcom/psk/kotlin/ext/CommonExtKt;->onClick(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 22
    iget-object p1, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->binding:Lcom/join/android/app/mgsim/wufun/databinding/gf;

    if-nez p1, :cond_12

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_12
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/gf;->c:Lcom/join/android/app/mgsim/wufun/databinding/re;

    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/re;->e:Landroid/widget/ImageView;

    const-string v0, "binding.failedLayoutMain.relodingimag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$onCreateView$3;

    invoke-direct {v0, p0}, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$onCreateView$3;-><init>(Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;)V

    invoke-static {p1, v0}, Lcom/psk/kotlin/ext/CommonExtKt;->onClick(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 23
    new-instance p1, Lcom/join/kotlin/presenter/FindModlePrensenter;

    invoke-direct {p1, p0}, Lcom/join/kotlin/presenter/FindModlePrensenter;-><init>(Lcom/join/kotlin/presenter/view/FindHomeView;)V

    iput-object p1, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->presenter:Lcom/join/kotlin/presenter/FindModlePrensenter;

    .line 24
    new-instance p1, Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->choiceListData:Ljava/util/List;

    invoke-direct {p1, v0, v1}, Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object p1, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->findClassifyAdapter:Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter;

    .line 25
    iget-object p1, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->binding:Lcom/join/android/app/mgsim/wufun/databinding/gf;

    if-nez p1, :cond_13

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_13
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/gf;->b:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    const-string v0, "binding.dataList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->findClassifyAdapter:Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter;

    const-string v2, "findClassifyAdapter"

    if-nez v1, :cond_14

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_14
    invoke-virtual {p1, v1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 26
    iget-object p1, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->binding:Lcom/join/android/app/mgsim/wufun/databinding/gf;

    if-nez p1, :cond_15

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_15
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/gf;->g:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    invoke-virtual {p1, p3}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setLoadingMoreEnabled(Z)V

    .line 27
    new-instance p1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p3

    const/4 v1, 0x3

    invoke-direct {p1, p3, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 28
    new-instance p3, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$onCreateView$4;

    invoke-direct {p3, p0}, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$onCreateView$4;-><init>(Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;)V

    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 29
    iget-object p3, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->binding:Lcom/join/android/app/mgsim/wufun/databinding/gf;

    if-nez p3, :cond_16

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_16
    iget-object p3, p3, Lcom/join/android/app/mgsim/wufun/databinding/gf;->b:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 30
    new-instance p3, Lcom/psk/kotlin/util/BasDownLoadActivityPresenter;

    iget-object v1, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->binding:Lcom/join/android/app/mgsim/wufun/databinding/gf;

    if-nez v1, :cond_17

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_17
    iget-object v1, v1, Lcom/join/android/app/mgsim/wufun/databinding/gf;->b:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->choiceListData:Ljava/util/List;

    invoke-direct {p3, p1, v1, v0}, Lcom/psk/kotlin/util/BasDownLoadActivityPresenter;-><init>(Landroidx/recyclerview/widget/LinearLayoutManager;Landroidx/recyclerview/widget/RecyclerView;Ljava/util/List;)V

    iput-object p3, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->downloadprensenter:Lcom/psk/kotlin/util/BasDownLoadActivityPresenter;

    .line 31
    iget-object p1, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->findClassifyAdapter:Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter;

    if-nez p1, :cond_18

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_18
    invoke-virtual {p3, p1}, Lcom/psk/kotlin/util/BasDownLoadActivityPresenter;->initData(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 32
    new-instance p1, Lcom/join/kotlin/ui/findgame/adapter/FindTypeListAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p3, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->datas:Ljava/util/List;

    new-instance v2, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$onCreateView$5;

    invoke-direct {v2, p0}, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$onCreateView$5;-><init>(Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;)V

    invoke-direct {p1, p3, v0, v1, v2}, Lcom/join/kotlin/ui/findgame/adapter/FindTypeListAdapter;-><init>(Landroid/content/Context;ILjava/util/List;Lcom/join/kotlin/ui/findgame/adapter/FindTypeListAdapter$OnItenSelected;)V

    iput-object p1, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->findTypeAdapter:Lcom/join/kotlin/ui/findgame/adapter/FindTypeListAdapter;

    .line 33
    iget-object p1, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->binding:Lcom/join/android/app/mgsim/wufun/databinding/gf;

    if-nez p1, :cond_19

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_19
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/gf;->g:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    const-string p3, "binding.typeList"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p3, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->findTypeAdapter:Lcom/join/kotlin/ui/findgame/adapter/FindTypeListAdapter;

    if-nez p3, :cond_1a

    const-string v0, "findTypeAdapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1a
    invoke-virtual {p1, p3}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 34
    iget-object p1, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->binding:Lcom/join/android/app/mgsim/wufun/databinding/gf;

    if-nez p1, :cond_1b

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1b
    invoke-virtual {p1}, Lcom/join/android/app/mgsim/wufun/databinding/gf;->b()Landroid/widget/LinearLayout;

    move-result-object p1

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

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
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Lcom/psk/kotlin/ext/CommonExtKt;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->choiceListData:Ljava/util/List;

    const/4 v0, 0x0

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
    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->choiceListData:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-gtz p1, :cond_7

    .line 3
    :cond_3
    iget-object p1, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->binding:Lcom/join/android/app/mgsim/wufun/databinding/gf;

    const-string v1, "binding"

    if-nez p1, :cond_4

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/gf;->e:Lcom/join/android/app/mgsim/wufun/databinding/yv;

    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/yv;->c:Landroid/widget/LinearLayout;

    const-string v2, "binding.loadingLayoutMain.lodingLayout"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->binding:Lcom/join/android/app/mgsim/wufun/databinding/gf;

    if-nez p1, :cond_5

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_5
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/gf;->c:Lcom/join/android/app/mgsim/wufun/databinding/re;

    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/re;->d:Landroid/widget/LinearLayout;

    const-string v3, "binding.failedLayoutMain.lodingFaile"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->binding:Lcom/join/android/app/mgsim/wufun/databinding/gf;

    if-nez p1, :cond_6

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_6
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/gf;->d:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    const-string v0, "binding.llMain"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_7
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
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->downloadprensenter:Lcom/psk/kotlin/util/BasDownLoadActivityPresenter;

    if-nez v0, :cond_0

    const-string v1, "downloadprensenter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0, p1}, Lcom/psk/kotlin/util/BasDownLoadActivityPresenter;->onEventMainThread(Lcom/join/mgps/event/l;)V

    return-void
.end method

.method public onLoadDataSuccess(ILcom/join/kotlin/ui/findgame/data/FindChoiceResultData;)V
    .locals 11
    .param p2    # Lcom/join/kotlin/ui/findgame/data/FindChoiceResultData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "result"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 1
    iget v1, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->page:I

    if-eq p1, v1, :cond_0

    return-void

    :cond_0
    const-string v1, "binding"

    if-ne p1, v0, :cond_8

    .line 2
    iput v0, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->page:I

    .line 3
    iget-object p1, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->binding:Lcom/join/android/app/mgsim/wufun/databinding/gf;

    if-nez p1, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/gf;->b:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    invoke-virtual {p1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->s1()V

    .line 4
    iget-object p1, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->choiceListData:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 5
    invoke-virtual {p2}, Lcom/join/kotlin/ui/findgame/data/FindChoiceResultData;->getGame_type()Ljava/util/List;

    move-result-object p1

    const-string v2, "result.game_type"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->gameTypeList:Ljava/util/List;

    const-string v2, "gameTypeList"

    if-nez p1, :cond_2

    .line 6
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    new-instance v9, Lcom/join/kotlin/ui/findgame/data/GameTypeData;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const-string v5, "\u7cbe\u9009"

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/join/kotlin/ui/findgame/data/GameTypeData;-><init>(ILjava/lang/String;ILjava/util/List;Z)V

    const/4 v3, 0x0

    invoke-interface {p1, v3, v9}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 7
    :try_start_0
    new-instance p1, Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {p1, v4}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/join/mgps/pref/PrefDef_;->gameTypeList()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object p1

    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v4

    iget-object v5, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->gameTypeList:Ljava/util/List;

    if-nez v5, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v4, v5}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 9
    :goto_0
    iget-object p1, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->leftTypeAdapter:Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$TabRecycleAdapter;

    if-nez p1, :cond_4

    const-string v2, "leftTypeAdapter"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 10
    invoke-virtual {p2}, Lcom/join/kotlin/ui/findgame/data/FindChoiceResultData;->getBanner()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    const/4 p1, 0x0

    goto :goto_2

    :cond_6
    :goto_1
    const/4 p1, 0x1

    :goto_2
    if-nez p1, :cond_8

    .line 11
    invoke-virtual {p2}, Lcom/join/kotlin/ui/findgame/data/FindChoiceResultData;->getBanner()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/kotlin/ui/findgame/data/FindChoiceBannerData;

    const-string v2, "choiceBannerData"

    .line 12
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/join/kotlin/ui/findgame/data/FindChoiceBannerData;->getGame_info()Lcom/join/mgps/business/CollectionBeanSubBusiness;

    move-result-object v2

    const-string v4, "choiceBannerData.game_info"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v5, 0x8f

    invoke-virtual {v2, v5}, Lcom/join/mgps/dto/DownloadPointBase;->set_from(I)V

    .line 13
    invoke-virtual {p1}, Lcom/join/kotlin/ui/findgame/data/FindChoiceBannerData;->getGame_info()Lcom/join/mgps/business/CollectionBeanSubBusiness;

    move-result-object v2

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Lcom/join/mgps/dto/DownloadPointBase;->set_from_type(I)V

    .line 14
    iget-object v2, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->downloadprensenter:Lcom/psk/kotlin/util/BasDownLoadActivityPresenter;

    if-nez v2, :cond_7

    const-string v5, "downloadprensenter"

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_7
    invoke-virtual {p1}, Lcom/join/kotlin/ui/findgame/data/FindChoiceBannerData;->getGame_info()Lcom/join/mgps/business/CollectionBeanSubBusiness;

    move-result-object p1

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Lcom/psk/kotlin/util/BasDownLoadActivityPresenter;->updateDowState(Lcom/join/mgps/business/CollectionBeanSubBusiness;)V

    .line 15
    iget-object p1, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->choiceListData:Ljava/util/List;

    new-instance v2, Lcom/psk/kotlin/util/CommonListMainData;

    const/4 v5, 0x3

    invoke-virtual {p2}, Lcom/join/kotlin/ui/findgame/data/FindChoiceResultData;->getBanner()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    const-string v3, "result.banner[0]"

    invoke-static {v6, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xc

    const/4 v10, 0x0

    move-object v4, v2

    invoke-direct/range {v4 .. v10}, Lcom/psk/kotlin/util/CommonListMainData;-><init>(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    :cond_8
    invoke-virtual {p2}, Lcom/join/kotlin/ui/findgame/data/FindChoiceResultData;->getCollection_list()Ljava/util/List;

    move-result-object p1

    const-string v2, "result.collection_list"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v0

    if-eqz p1, :cond_a

    .line 17
    iget-object p1, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->binding:Lcom/join/android/app/mgsim/wufun/databinding/gf;

    if-nez p1, :cond_9

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_9
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/gf;->b:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    invoke-virtual {p1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->q1()V

    .line 18
    iget p1, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->page:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->page:I

    goto :goto_3

    .line 19
    :cond_a
    iget-object p1, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->binding:Lcom/join/android/app/mgsim/wufun/databinding/gf;

    if-nez p1, :cond_b

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_b
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/gf;->b:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    invoke-virtual {p1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setNoMore()V

    .line 20
    :goto_3
    invoke-virtual {p2}, Lcom/join/kotlin/ui/findgame/data/FindChoiceResultData;->getCollection_list()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 21
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/join/kotlin/ui/findgame/data/FindChoiceColloctionListData;

    .line 22
    iget-object v7, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->choiceListData:Ljava/util/List;

    new-instance v8, Lcom/psk/kotlin/util/CommonListMainData;

    const/4 v1, 0x1

    const-string v0, "itx"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move-object v0, v8

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/psk/kotlin/util/CommonListMainData;-><init>(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    invoke-virtual {p2}, Lcom/join/kotlin/ui/findgame/data/FindChoiceColloctionListData;->getGame_list()Ljava/util/List;

    move-result-object p2

    const-string v0, "itx.game_list"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/join/mgps/dto/CollectionBeanSub;

    const-string v0, "it2"

    .line 25
    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x8d

    invoke-virtual {v3, v0}, Lcom/join/mgps/dto/DownloadPointBase;->set_from(I)V

    .line 26
    invoke-virtual {v3, v0}, Lcom/join/mgps/dto/DownloadPointBase;->set_from_type(I)V

    .line 27
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->choiceListData:Ljava/util/List;

    new-instance v8, Lcom/psk/kotlin/util/CommonListMainData;

    const/4 v2, 0x5

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/psk/kotlin/util/CommonListMainData;-><init>(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 28
    :cond_d
    iget-object p1, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->findClassifyAdapter:Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter;

    if-nez p1, :cond_e

    const-string p2, "findClassifyAdapter"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_e
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
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
    new-instance p1, Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;

    invoke-direct {p1}, Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;-><init>()V

    iput-object p1, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->requestArgs:Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;

    const/4 p2, 0x1

    .line 3
    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;->setPage(I)V

    .line 4
    iget-object p1, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->requestArgs:Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;

    const-string v0, "requestArgs"

    if-nez p1, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v1

    const-string v2, "AccountUtil_.getInstance_(activity)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v1

    const-string v2, "AccountUtil_.getInstance_(activity).accountData"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;->setUid(I)V

    .line 5
    iget-object p1, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->presenter:Lcom/join/kotlin/presenter/FindModlePrensenter;

    if-nez p1, :cond_1

    const-string v1, "presenter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v2, "activity!!"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->requestArgs:Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;

    if-nez v2, :cond_2

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p1, v1, v2}, Lcom/join/kotlin/presenter/FindModlePrensenter;->loadClassfyDatas(Landroid/content/Context;Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;)V

    .line 6
    iget-object p1, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->binding:Lcom/join/android/app/mgsim/wufun/databinding/gf;

    const-string v0, "binding"

    if-nez p1, :cond_3

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/gf;->b:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    invoke-virtual {p1, p2}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setPullRefreshEnabled(Z)V

    .line 7
    iget-object p1, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->binding:Lcom/join/android/app/mgsim/wufun/databinding/gf;

    if-nez p1, :cond_4

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/gf;->b:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    invoke-virtual {p1, p2}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setLoadingMoreEnabled(Z)V

    .line 8
    iget-object p1, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->binding:Lcom/join/android/app/mgsim/wufun/databinding/gf;

    if-nez p1, :cond_5

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_5
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/gf;->b:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    const/16 p2, 0xa

    invoke-virtual {p1, p2}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setPreLoadCount(I)V

    .line 9
    iget-object p1, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->binding:Lcom/join/android/app/mgsim/wufun/databinding/gf;

    if-nez p1, :cond_6

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_6
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/gf;->b:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    new-instance p2, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$onViewCreated$1;

    invoke-direct {p2, p0}, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$onViewCreated$1;-><init>(Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;)V

    invoke-virtual {p1, p2}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setLoadingListener(Lcom/join/android/app/component/xrecyclerview/XRecyclerView$f;)V

    return-void
.end method

.method public final setBinding(Lcom/join/android/app/mgsim/wufun/databinding/gf;)V
    .locals 1
    .param p1    # Lcom/join/android/app/mgsim/wufun/databinding/gf;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->binding:Lcom/join/android/app/mgsim/wufun/databinding/gf;

    return-void
.end method

.method public final setChoiceListData(Ljava/util/List;)V
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
    iput-object p1, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->choiceListData:Ljava/util/List;

    return-void
.end method

.method public final setDatas(Ljava/util/List;)V
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
    iput-object p1, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->datas:Ljava/util/List;

    return-void
.end method

.method public final setDownloadprensenter(Lcom/psk/kotlin/util/BasDownLoadActivityPresenter;)V
    .locals 1
    .param p1    # Lcom/psk/kotlin/util/BasDownLoadActivityPresenter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->downloadprensenter:Lcom/psk/kotlin/util/BasDownLoadActivityPresenter;

    return-void
.end method

.method public final setFindClassifyAdapter(Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter;)V
    .locals 1
    .param p1    # Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->findClassifyAdapter:Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter;

    return-void
.end method

.method public final setFindTypeAdapter(Lcom/join/kotlin/ui/findgame/adapter/FindTypeListAdapter;)V
    .locals 1
    .param p1    # Lcom/join/kotlin/ui/findgame/adapter/FindTypeListAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->findTypeAdapter:Lcom/join/kotlin/ui/findgame/adapter/FindTypeListAdapter;

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
    iput-object p1, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->gameTypeList:Ljava/util/List;

    return-void
.end method

.method public final setLeftTypeAdapter(Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$TabRecycleAdapter;)V
    .locals 1
    .param p1    # Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$TabRecycleAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->leftTypeAdapter:Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$TabRecycleAdapter;

    return-void
.end method

.method public final setPage(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->page:I

    return-void
.end method

.method public final setPresenter(Lcom/join/kotlin/presenter/FindModlePrensenter;)V
    .locals 1
    .param p1    # Lcom/join/kotlin/presenter/FindModlePrensenter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->presenter:Lcom/join/kotlin/presenter/FindModlePrensenter;

    return-void
.end method

.method public final setRequestArgs(Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;)V
    .locals 1
    .param p1    # Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->requestArgs:Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;

    return-void
.end method

.method public final setSelectedType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->selectedType:I

    return-void
.end method

.method public showLoding()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->binding:Lcom/join/android/app/mgsim/wufun/databinding/gf;

    const-string v1, "binding"

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/gf;->e:Lcom/join/android/app/mgsim/wufun/databinding/yv;

    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/yv;->c:Landroid/widget/LinearLayout;

    const-string v2, "binding.loadingLayoutMain.lodingLayout"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->binding:Lcom/join/android/app/mgsim/wufun/databinding/gf;

    if-nez v0, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/gf;->c:Lcom/join/android/app/mgsim/wufun/databinding/re;

    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/re;->d:Landroid/widget/LinearLayout;

    const-string v2, "binding.failedLayoutMain.lodingFaile"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->binding:Lcom/join/android/app/mgsim/wufun/databinding/gf;

    if-nez v0, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/gf;->d:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    const-string v1, "binding.llMain"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public final showTypeList(I)V
    .locals 11

    const/16 v0, 0x8

    const-string v1, "binding.llMain"

    const-string v2, "binding.typeList"

    const/4 v3, 0x0

    const-string v4, "binding"

    if-nez p1, :cond_2

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->binding:Lcom/join/android/app/mgsim/wufun/databinding/gf;

    if-nez p1, :cond_0

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/gf;->d:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->binding:Lcom/join/android/app/mgsim/wufun/databinding/gf;

    if-nez p1, :cond_1

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/gf;->g:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->findClassifyAdapter:Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter;

    if-nez p1, :cond_29

    const-string p1, "findClassifyAdapter"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto/16 :goto_10

    .line 4
    :cond_2
    iget-object v5, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->binding:Lcom/join/android/app/mgsim/wufun/databinding/gf;

    if-nez v5, :cond_3

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    iget-object v5, v5, Lcom/join/android/app/mgsim/wufun/databinding/gf;->d:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->binding:Lcom/join/android/app/mgsim/wufun/databinding/gf;

    if-nez v0, :cond_4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/gf;->g:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->datas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0710e2    # 1.7953344E38f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "e"

    const-string v5, "gameTypeList"

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-ne p1, v7, :cond_f

    .line 8
    :try_start_1
    iget-object v8, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->binding:Lcom/join/android/app/mgsim/wufun/databinding/gf;

    if-nez v8, :cond_5

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_5
    iget-object v8, v8, Lcom/join/android/app/mgsim/wufun/databinding/gf;->g:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    invoke-static {v8, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v9, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v10

    .line 10
    invoke-direct {v9, v10, v6}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v8, v9}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 11
    :goto_0
    iget-object v8, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->binding:Lcom/join/android/app/mgsim/wufun/databinding/gf;

    if-nez v8, :cond_6

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_6
    iget-object v8, v8, Lcom/join/android/app/mgsim/wufun/databinding/gf;->g:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    invoke-static {v8, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    move-result v8

    if-lez v8, :cond_8

    .line 12
    iget-object v8, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->binding:Lcom/join/android/app/mgsim/wufun/databinding/gf;

    if-nez v8, :cond_7

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_7
    iget-object v8, v8, Lcom/join/android/app/mgsim/wufun/databinding/gf;->g:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    invoke-virtual {v8, v3}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecorationAt(I)V

    goto :goto_0

    .line 13
    :cond_8
    iget-object v2, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->binding:Lcom/join/android/app/mgsim/wufun/databinding/gf;

    if-nez v2, :cond_9

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_9
    iget-object v2, v2, Lcom/join/android/app/mgsim/wufun/databinding/gf;->g:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    new-instance v4, Lcom/psk/kotlin/util/GridSpacingItemDecoration;

    invoke-direct {v4, v6, v0, v3}, Lcom/psk/kotlin/util/GridSpacingItemDecoration;-><init>(IIZ)V

    invoke-virtual {v2, v4}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 14
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->gameTypeList:Ljava/util/List;

    if-nez v0, :cond_a

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 15
    :cond_a
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 16
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/join/kotlin/ui/findgame/data/GameTypeData;

    .line 17
    invoke-virtual {v5}, Lcom/join/kotlin/ui/findgame/data/GameTypeData;->getType()I

    move-result v5

    if-ne v5, p1, :cond_c

    const/4 v5, 0x1

    goto :goto_2

    :cond_c
    const/4 v5, 0x0

    :goto_2
    if-eqz v5, :cond_b

    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 18
    :cond_d
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 19
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 20
    check-cast v3, Lcom/join/kotlin/ui/findgame/data/GameTypeData;

    .line 21
    invoke-virtual {v3}, Lcom/join/kotlin/ui/findgame/data/GameTypeData;->getSub_game_type()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 22
    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_3

    .line 23
    :cond_e
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    .line 24
    iget-object v2, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->datas:Ljava/util/List;

    new-instance v10, Lcom/psk/kotlin/util/CommonListMainData;

    const/4 v4, 0x3

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0xc

    const/4 v9, 0x0

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/psk/kotlin/util/CommonListMainData;-><init>(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_f
    if-eq p1, v6, :cond_1c

    const/4 v6, 0x3

    if-ne p1, v6, :cond_10

    goto/16 :goto_a

    :cond_10
    const/4 v8, 0x4

    if-eq p1, v8, :cond_11

    const/4 v8, 0x5

    if-eq p1, v8, :cond_11

    const/4 v8, 0x6

    if-ne p1, v8, :cond_27

    .line 25
    :cond_11
    iget-object v8, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->binding:Lcom/join/android/app/mgsim/wufun/databinding/gf;

    if-nez v8, :cond_12

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_12
    iget-object v8, v8, Lcom/join/android/app/mgsim/wufun/databinding/gf;->g:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    invoke-static {v8, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v9, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 26
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v10

    .line 27
    invoke-direct {v9, v10, v6}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v8, v9}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 28
    :goto_5
    iget-object v8, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->binding:Lcom/join/android/app/mgsim/wufun/databinding/gf;

    if-nez v8, :cond_13

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_13
    iget-object v8, v8, Lcom/join/android/app/mgsim/wufun/databinding/gf;->g:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    invoke-static {v8, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    move-result v8

    if-lez v8, :cond_15

    .line 29
    iget-object v8, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->binding:Lcom/join/android/app/mgsim/wufun/databinding/gf;

    if-nez v8, :cond_14

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_14
    iget-object v8, v8, Lcom/join/android/app/mgsim/wufun/databinding/gf;->g:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    invoke-virtual {v8, v3}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecorationAt(I)V

    goto :goto_5

    .line 30
    :cond_15
    iget-object v2, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->binding:Lcom/join/android/app/mgsim/wufun/databinding/gf;

    if-nez v2, :cond_16

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_16
    iget-object v2, v2, Lcom/join/android/app/mgsim/wufun/databinding/gf;->g:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    new-instance v4, Lcom/psk/kotlin/util/GridSpacingItemDecoration;

    invoke-direct {v4, v6, v0, v3}, Lcom/psk/kotlin/util/GridSpacingItemDecoration;-><init>(IIZ)V

    invoke-virtual {v2, v4}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 31
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->gameTypeList:Ljava/util/List;

    if-nez v0, :cond_17

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 32
    :cond_17
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 33
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_18
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/join/kotlin/ui/findgame/data/GameTypeData;

    .line 34
    invoke-virtual {v5}, Lcom/join/kotlin/ui/findgame/data/GameTypeData;->getType()I

    move-result v5

    if-ne v5, p1, :cond_19

    const/4 v5, 0x1

    goto :goto_7

    :cond_19
    const/4 v5, 0x0

    :goto_7
    if-eqz v5, :cond_18

    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 35
    :cond_1a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 36
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 37
    check-cast v3, Lcom/join/kotlin/ui/findgame/data/GameTypeData;

    .line 38
    invoke-virtual {v3}, Lcom/join/kotlin/ui/findgame/data/GameTypeData;->getSub_game_type()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 39
    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_8

    .line 40
    :cond_1b
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    .line 41
    iget-object v2, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->datas:Ljava/util/List;

    new-instance v10, Lcom/psk/kotlin/util/CommonListMainData;

    const/4 v4, 0x7

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0xc

    const/4 v9, 0x0

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/psk/kotlin/util/CommonListMainData;-><init>(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 42
    :cond_1c
    :goto_a
    iget-object v6, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->binding:Lcom/join/android/app/mgsim/wufun/databinding/gf;

    if-nez v6, :cond_1d

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1d
    iget-object v6, v6, Lcom/join/android/app/mgsim/wufun/databinding/gf;->g:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v8, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 43
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v9

    .line 44
    invoke-direct {v8, v9, v7}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v6, v8}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 45
    :goto_b
    iget-object v6, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->binding:Lcom/join/android/app/mgsim/wufun/databinding/gf;

    if-nez v6, :cond_1e

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1e
    iget-object v6, v6, Lcom/join/android/app/mgsim/wufun/databinding/gf;->g:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    move-result v6

    if-lez v6, :cond_20

    .line 46
    iget-object v6, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->binding:Lcom/join/android/app/mgsim/wufun/databinding/gf;

    if-nez v6, :cond_1f

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1f
    iget-object v6, v6, Lcom/join/android/app/mgsim/wufun/databinding/gf;->g:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    invoke-virtual {v6, v3}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecorationAt(I)V

    goto :goto_b

    .line 47
    :cond_20
    iget-object v2, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->binding:Lcom/join/android/app/mgsim/wufun/databinding/gf;

    if-nez v2, :cond_21

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_21
    iget-object v2, v2, Lcom/join/android/app/mgsim/wufun/databinding/gf;->g:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    new-instance v4, Lcom/psk/kotlin/util/GridSpacingItemDecoration;

    invoke-direct {v4, v7, v0, v3}, Lcom/psk/kotlin/util/GridSpacingItemDecoration;-><init>(IIZ)V

    invoke-virtual {v2, v4}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 48
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->gameTypeList:Ljava/util/List;

    if-nez v0, :cond_22

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 49
    :cond_22
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 50
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_23
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/join/kotlin/ui/findgame/data/GameTypeData;

    .line 51
    invoke-virtual {v5}, Lcom/join/kotlin/ui/findgame/data/GameTypeData;->getType()I

    move-result v5

    if-ne v5, p1, :cond_24

    const/4 v5, 0x1

    goto :goto_d

    :cond_24
    const/4 v5, 0x0

    :goto_d
    if-eqz v5, :cond_23

    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 52
    :cond_25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 53
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_26

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 54
    check-cast v3, Lcom/join/kotlin/ui/findgame/data/GameTypeData;

    .line 55
    invoke-virtual {v3}, Lcom/join/kotlin/ui/findgame/data/GameTypeData;->getSub_game_type()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 56
    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_e

    .line 57
    :cond_26
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    .line 58
    iget-object v2, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->datas:Ljava/util/List;

    new-instance v10, Lcom/psk/kotlin/util/CommonListMainData;

    const/4 v4, 0x3

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0xc

    const/4 v9, 0x0

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/psk/kotlin/util/CommonListMainData;-><init>(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 59
    :cond_27
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->findTypeAdapter:Lcom/join/kotlin/ui/findgame/adapter/FindTypeListAdapter;

    if-nez v0, :cond_28

    const-string v1, "findTypeAdapter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_28
    invoke-virtual {v0, p1}, Lcom/join/kotlin/ui/findgame/adapter/FindTypeListAdapter;->updateDatas(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_29
    :goto_10
    return-void
.end method
