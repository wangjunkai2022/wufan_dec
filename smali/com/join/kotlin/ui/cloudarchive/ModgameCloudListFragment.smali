.class public final Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;
.super Landroidx/fragment/app/Fragment;
.source "ModgameCloudListFragment.kt"

# interfaces
.implements Lcom/join/kotlin/ui/cloudarchive/adapter/OnClickArchiveListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/join/kotlin/domain/common/LoadBindClickProxy;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nModgameCloudListFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ModgameCloudListFragment.kt\ncom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1058:1\n1#2:1059\n764#3:1060\n855#3,2:1061\n1547#3:1063\n1618#3,3:1064\n*E\n*S KotlinDebug\n*F\n+ 1 ModgameCloudListFragment.kt\ncom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment\n*L\n115#1:1060\n115#1,2:1061\n116#1:1063\n116#1,3:1064\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u00c4\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0013\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0015\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004B\t\u00a2\u0006\u0006\u0008\u00a3\u0001\u0010\u00a4\u0001J\u0008\u0010\u0006\u001a\u00020\u0005H\u0002J\u0012\u0010\t\u001a\u00020\u00052\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0002J\u0018\u0010\u000c\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\nH\u0002J&\u0010\u0014\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u000e\u001a\u00020\r2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0011H\u0016J\u0008\u0010\u0015\u001a\u00020\u0005H\u0016J\u0006\u0010\u0016\u001a\u00020\u0005J\u0006\u0010\u0017\u001a\u00020\u0005J\u0008\u0010\u0018\u001a\u00020\u0005H\u0016J\u0010\u0010\u0019\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u0007H\u0016J\u0018\u0010\u001c\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u00072\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001aJ\u0008\u0010\u001d\u001a\u00020\u0005H\u0016J\u0006\u0010\u001f\u001a\u00020\u001eJ\u0018\u0010!\u001a\u00020\u00052\u0006\u0010 \u001a\u00020\u00132\u0006\u0010\u0008\u001a\u00020\u0007H\u0016J\u0010\u0010\"\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u0007H\u0016J\u0010\u0010#\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u0007H\u0016J\u0012\u0010&\u001a\u00020\u00052\u0008\u0010%\u001a\u0004\u0018\u00010$H\u0016J\u0012\u0010(\u001a\u00020\u00052\u0008\u0010\'\u001a\u0004\u0018\u00010\u0013H\u0016J\u0010\u0010+\u001a\u00020\u00052\u0006\u0010*\u001a\u00020)H\u0007J\u0008\u0010,\u001a\u00020\u0005H\u0016J\u0008\u0010-\u001a\u00020\u0005H\u0016J\u0006\u0010.\u001a\u00020\u0005R\"\u00100\u001a\u00020/8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00080\u00101\u001a\u0004\u00080\u00102\"\u0004\u00083\u00104R\u001d\u0010:\u001a\u0002058F@\u0006X\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00086\u00107\u001a\u0004\u00088\u00109R\"\u0010;\u001a\u00020\u00138\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008;\u0010<\u001a\u0004\u0008=\u0010>\"\u0004\u0008?\u0010@R\u001d\u0010E\u001a\u00020A8F@\u0006X\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008B\u00107\u001a\u0004\u0008C\u0010DR\"\u0010F\u001a\u00020\u00138\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008F\u0010<\u001a\u0004\u0008G\u0010>\"\u0004\u0008H\u0010@R\"\u0010I\u001a\u00020\u00078\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008I\u0010J\u001a\u0004\u0008K\u0010L\"\u0004\u0008M\u0010NR\"\u0010O\u001a\u00020$8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008O\u0010P\u001a\u0004\u0008Q\u0010R\"\u0004\u0008S\u0010TR\"\u0010V\u001a\u00020U8\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008V\u0010W\u001a\u0004\u0008X\u0010Y\"\u0004\u0008Z\u0010[R\"\u0010\\\u001a\u00020\u00138\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008\\\u0010<\u001a\u0004\u0008]\u0010>\"\u0004\u0008^\u0010@R\u001d\u0010c\u001a\u00020_8F@\u0006X\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008`\u00107\u001a\u0004\u0008a\u0010bR\u001d\u0010h\u001a\u00020d8F@\u0006X\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008e\u00107\u001a\u0004\u0008f\u0010gR\"\u0010j\u001a\u00020i8\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008j\u0010k\u001a\u0004\u0008l\u0010m\"\u0004\u0008n\u0010oR\u001d\u0010r\u001a\u00020d8F@\u0006X\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008p\u00107\u001a\u0004\u0008q\u0010gR\u001d\u0010w\u001a\u00020s8F@\u0006X\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008t\u00107\u001a\u0004\u0008u\u0010vR\u001d\u0010{\u001a\u00020\u001e8F@\u0006X\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008x\u00107\u001a\u0004\u0008y\u0010zR\u001e\u0010\u0080\u0001\u001a\u00020|8F@\u0006X\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008}\u00107\u001a\u0004\u0008~\u0010\u007fR,\u0010\u0082\u0001\u001a\u0005\u0018\u00010\u0081\u00018\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0018\n\u0006\u0008\u0082\u0001\u0010\u0083\u0001\u001a\u0006\u0008\u0084\u0001\u0010\u0085\u0001\"\u0006\u0008\u0086\u0001\u0010\u0087\u0001R&\u0010\u0088\u0001\u001a\u00020/8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0015\n\u0005\u0008\u0088\u0001\u00101\u001a\u0005\u0008\u0089\u0001\u00102\"\u0005\u0008\u008a\u0001\u00104R&\u0010\u008b\u0001\u001a\u00020i8\u0006@\u0006X\u0086.\u00a2\u0006\u0015\n\u0005\u0008\u008b\u0001\u0010k\u001a\u0005\u0008\u008c\u0001\u0010m\"\u0005\u0008\u008d\u0001\u0010oR)\u0010\u008e\u0001\u001a\u00020\n8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0018\n\u0006\u0008\u008e\u0001\u0010\u008f\u0001\u001a\u0006\u0008\u0090\u0001\u0010\u0091\u0001\"\u0006\u0008\u0092\u0001\u0010\u0093\u0001R)\u0010\u0094\u0001\u001a\u00020\n8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0018\n\u0006\u0008\u0094\u0001\u0010\u008f\u0001\u001a\u0006\u0008\u0095\u0001\u0010\u0091\u0001\"\u0006\u0008\u0096\u0001\u0010\u0093\u0001R\"\u0010\u009b\u0001\u001a\u00030\u0097\u00018F@\u0006X\u0086\u0084\u0002\u00a2\u0006\u000f\n\u0005\u0008\u0098\u0001\u00107\u001a\u0006\u0008\u0099\u0001\u0010\u009a\u0001R,\u0010\u009d\u0001\u001a\u0005\u0018\u00010\u009c\u00018\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0018\n\u0006\u0008\u009d\u0001\u0010\u009e\u0001\u001a\u0006\u0008\u009f\u0001\u0010\u00a0\u0001\"\u0006\u0008\u00a1\u0001\u0010\u00a2\u0001\u00a8\u0006\u00a5\u0001"
    }
    d2 = {
        "Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;",
        "Landroidx/fragment/app/Fragment;",
        "Lcom/join/kotlin/ui/cloudarchive/adapter/OnClickArchiveListener;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/join/kotlin/domain/common/LoadBindClickProxy;",
        "",
        "updateLocaDataToShow",
        "Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;",
        "archive",
        "startGame",
        "",
        "downloadType",
        "showDownloadDialog",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "Landroid/view/ViewGroup;",
        "container",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Landroid/view/View;",
        "onCreateView",
        "onDestroyView",
        "initData",
        "loadData",
        "onResume",
        "onClickRun",
        "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
        "downloadTask",
        "onClickRunGame",
        "uploadCloud",
        "Landroid/widget/PopupWindow;",
        "createPopwindow",
        "view",
        "onClickMore",
        "onPraise",
        "onClickDislike",
        "",
        "imagePath",
        "onClickImage",
        "v",
        "onClick",
        "Lcom/join/kotlin/ui/cloudarchive/data/ArchiveDownEvent;",
        "archiveDownEvent",
        "onRecivedDownLoadEVent",
        "onClickReload",
        "onClickSetNetWork",
        "scrollToTop",
        "",
        "isLogin",
        "Z",
        "()Z",
        "setLogin",
        "(Z)V",
        "Lcom/join/kotlin/ui/cloudarchive/dialog/ImageShowDialog;",
        "imageDialog$delegate",
        "Lkotlin/Lazy;",
        "getImageDialog",
        "()Lcom/join/kotlin/ui/cloudarchive/dialog/ImageShowDialog;",
        "imageDialog",
        "trangleBottom",
        "Landroid/view/View;",
        "getTrangleBottom",
        "()Landroid/view/View;",
        "setTrangleBottom",
        "(Landroid/view/View;)V",
        "Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;",
        "viewModleShareViewModle$delegate",
        "getViewModleShareViewModle",
        "()Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;",
        "viewModleShareViewModle",
        "main",
        "getMain",
        "setMain",
        "archiveDataPop",
        "Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;",
        "getArchiveDataPop",
        "()Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;",
        "setArchiveDataPop",
        "(Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;)V",
        "gameId",
        "Ljava/lang/String;",
        "getGameId",
        "()Ljava/lang/String;",
        "setGameId",
        "(Ljava/lang/String;)V",
        "Lcom/join/android/app/mgsim/wufun/databinding/s90;",
        "dataBinding",
        "Lcom/join/android/app/mgsim/wufun/databinding/s90;",
        "getDataBinding",
        "()Lcom/join/android/app/mgsim/wufun/databinding/s90;",
        "setDataBinding",
        "(Lcom/join/android/app/mgsim/wufun/databinding/s90;)V",
        "trangleTop",
        "getTrangleTop",
        "setTrangleTop",
        "Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;",
        "viewModle$delegate",
        "getViewModle",
        "()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;",
        "viewModle",
        "Lcom/join/kotlin/ui/cloudarchive/dialog/DelArchiveDialog;",
        "delFragment$delegate",
        "getDelFragment",
        "()Lcom/join/kotlin/ui/cloudarchive/dialog/DelArchiveDialog;",
        "delFragment",
        "Landroid/widget/TextView;",
        "reDownload",
        "Landroid/widget/TextView;",
        "getReDownload",
        "()Landroid/widget/TextView;",
        "setReDownload",
        "(Landroid/widget/TextView;)V",
        "checkDownloadTypeDialog$delegate",
        "getCheckDownloadTypeDialog",
        "checkDownloadTypeDialog",
        "Landroid/app/Dialog;",
        "dialog$delegate",
        "getDialog",
        "()Landroid/app/Dialog;",
        "dialog",
        "popWindow$delegate",
        "getPopWindow",
        "()Landroid/widget/PopupWindow;",
        "popWindow",
        "Lcom/join/kotlin/ui/cloudarchive/adapter/ModArchiveAdapter;",
        "adapterx$delegate",
        "getAdapterx",
        "()Lcom/join/kotlin/ui/cloudarchive/adapter/ModArchiveAdapter;",
        "adapterx",
        "Lcom/join/mgps/dto/ModGameArchiveTagBean;",
        "archiveTag",
        "Lcom/join/mgps/dto/ModGameArchiveTagBean;",
        "getArchiveTag",
        "()Lcom/join/mgps/dto/ModGameArchiveTagBean;",
        "setArchiveTag",
        "(Lcom/join/mgps/dto/ModGameArchiveTagBean;)V",
        "isfirst",
        "getIsfirst",
        "setIsfirst",
        "deleteCloud",
        "getDeleteCloud",
        "setDeleteCloud",
        "type",
        "I",
        "getType",
        "()I",
        "setType",
        "(I)V",
        "page",
        "getPage",
        "setPage",
        "Lcom/join/kotlin/ui/cloudarchive/dialog/RedownArchiveDialog;",
        "redownFragment$delegate",
        "getRedownFragment",
        "()Lcom/join/kotlin/ui/cloudarchive/dialog/RedownArchiveDialog;",
        "redownFragment",
        "Lcom/join/mgps/dto/ModGameDetailBean;",
        "modgameBean",
        "Lcom/join/mgps/dto/ModGameDetailBean;",
        "getModgameBean",
        "()Lcom/join/mgps/dto/ModGameDetailBean;",
        "setModgameBean",
        "(Lcom/join/mgps/dto/ModGameDetailBean;)V",
        "<init>",
        "()V",
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
.field private final adapterx$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public archiveDataPop:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

.field private archiveTag:Lcom/join/mgps/dto/ModGameArchiveTagBean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final checkDownloadTypeDialog$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public dataBinding:Lcom/join/android/app/mgsim/wufun/databinding/s90;

.field private final delFragment$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public deleteCloud:Landroid/widget/TextView;

.field private final dialog$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private gameId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final imageDialog$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private isLogin:Z

.field private isfirst:Z

.field public main:Landroid/view/View;

.field private modgameBean:Lcom/join/mgps/dto/ModGameDetailBean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private page:I

.field private final popWindow$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public reDownload:Landroid/widget/TextView;

.field private final redownFragment$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public trangleBottom:Landroid/view/View;

.field public trangleTop:Landroid/view/View;

.field private type:I

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
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 2
    new-instance v0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$viewModle$2;

    invoke-direct {v0, p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$viewModle$2;-><init>(Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->viewModle$delegate:Lkotlin/Lazy;

    .line 3
    new-instance v0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$viewModleShareViewModle$2;

    invoke-direct {v0, p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$viewModleShareViewModle$2;-><init>(Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->viewModleShareViewModle$delegate:Lkotlin/Lazy;

    .line 4
    new-instance v0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$adapterx$2;

    invoke-direct {v0, p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$adapterx$2;-><init>(Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->adapterx$delegate:Lkotlin/Lazy;

    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->page:I

    .line 6
    iput v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->type:I

    const-string v1, ""

    .line 7
    iput-object v1, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->gameId:Ljava/lang/String;

    .line 8
    iput-boolean v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->isfirst:Z

    .line 9
    sget-object v0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$checkDownloadTypeDialog$2;->INSTANCE:Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$checkDownloadTypeDialog$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->checkDownloadTypeDialog$delegate:Lkotlin/Lazy;

    .line 10
    new-instance v0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$dialog$2;

    invoke-direct {v0, p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$dialog$2;-><init>(Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->dialog$delegate:Lkotlin/Lazy;

    .line 11
    new-instance v0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$popWindow$2;

    invoke-direct {v0, p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$popWindow$2;-><init>(Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->popWindow$delegate:Lkotlin/Lazy;

    .line 12
    sget-object v0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$imageDialog$2;->INSTANCE:Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$imageDialog$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->imageDialog$delegate:Lkotlin/Lazy;

    .line 13
    sget-object v0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$delFragment$2;->INSTANCE:Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$delFragment$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->delFragment$delegate:Lkotlin/Lazy;

    .line 14
    sget-object v0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$redownFragment$2;->INSTANCE:Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$redownFragment$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->redownFragment$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$showDownloadDialog(Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->showDownloadDialog(Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;I)V

    return-void
.end method

.method public static final synthetic access$updateLocaDataToShow(Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->updateLocaDataToShow()V

    return-void
.end method

.method private final showDownloadDialog(Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;I)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/kotlin/ui/cloudarchive/dialog/DownloadArchiveDialog;

    invoke-direct {v0}, Lcom/join/kotlin/ui/cloudarchive/dialog/DownloadArchiveDialog;-><init>()V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "archive"

    .line 3
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string p1, "downloadType"

    .line 4
    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModleShareViewModle()Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->getInstallInExtPlug()Z

    move-result p1

    const-string p2, "installInExtPlug"

    invoke-virtual {v1, p2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 6
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->getCloud_archive_local_path()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/Serializable;

    const-string p2, "cloud_archive_local_path"

    .line 7
    invoke-virtual {v1, p2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 8
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 9
    invoke-static {v0}, Lcom/join/kotlin/domain/ext/EXTKt;->dialogFragmentCanShow(Landroidx/fragment/app/DialogFragment;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string p2, "dialog"

    invoke-virtual {v0, p1, p2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private final startGame(Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;)V
    .locals 4

    if-eqz p1, :cond_4

    .line 1
    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    goto :goto_2

    .line 2
    :cond_2
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModleShareViewModle()Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->setLastStartArchive(Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;)V

    .line 3
    :try_start_0
    sget-object v0, Lcom/join/mgps/va/overmind/e;->n:Lcom/join/mgps/va/overmind/e$a;

    invoke-virtual {v0}, Lcom/join/mgps/va/overmind/e$a;->b()Lcom/join/mgps/va/overmind/e;

    move-result-object v1

    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getUserId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/join/mgps/va/overmind/e;->h(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 4
    invoke-virtual {v0}, Lcom/join/mgps/va/overmind/e$a;->b()Lcom/join/mgps/va/overmind/e;

    move-result-object v1

    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getUserId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/join/mgps/va/overmind/e;->E(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$startGame$1;

    invoke-direct {v2, p0, p1}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$startGame$1;-><init>(Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;)V

    invoke-virtual {v0, v1, v2}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->startGameADCheck(Landroid/content/Context;Lkotlin/jvm/functions/Function0;)V

    goto :goto_2

    .line 6
    :cond_3
    invoke-virtual {v0}, Lcom/join/mgps/va/overmind/e$a;->b()Lcom/join/mgps/va/overmind/e;

    move-result-object v0

    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getUserId()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/join/mgps/va/overmind/e;->A(Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_2
    return-void
.end method

.method private final updateLocaDataToShow()V
    .locals 11

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->getListArchive()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getAdapterx()Lcom/join/kotlin/ui/cloudarchive/adapter/ModArchiveAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 3
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->getLocalAllArchive()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 4
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->getLocalAllArchive()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 5
    invoke-virtual {v5, v1}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setIsDownloadArchive(I)V

    const/16 v2, 0x8

    .line 6
    invoke-virtual {v5, v2}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setStatus(I)V

    const-string v2, "\u542f\u52a8"

    .line 7
    invoke-virtual {v5, v2}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setShowText(Ljava/lang/String;)V

    const/4 v2, 0x2

    .line 8
    invoke-virtual {v5, v2}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setShowType(I)V

    .line 9
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModleShareViewModle()Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->getRunIngArchiveId()Landroidx/lifecycle/MutableLiveData;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_1

    :cond_2
    const-wide/16 v2, 0x0

    :goto_1
    invoke-virtual {v5, v2, v3}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setRuningArchiveId(J)V

    .line 10
    invoke-virtual {v5}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getUid()I

    move-result v2

    if-nez v2, :cond_3

    .line 11
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->getListArchive()Landroidx/lifecycle/MutableLiveData;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_1

    .line 12
    new-instance v10, Lcom/psk/kotlin/util/CommonListMainData;

    const/4 v4, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0xc

    const/4 v9, 0x0

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/psk/kotlin/util/CommonListMainData;-><init>(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 13
    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 14
    :cond_3
    invoke-virtual {v5}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getUserId()I

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {v5}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v2, v1

    if-eqz v2, :cond_7

    .line 15
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->getLocalAllArchive()Landroidx/lifecycle/MutableLiveData;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_1

    .line 16
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 17
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 18
    invoke-virtual {v5}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getUid()I

    move-result v5

    if-nez v5, :cond_5

    const/4 v5, 0x1

    goto :goto_3

    :cond_5
    const/4 v5, 0x0

    :goto_3
    if-eqz v5, :cond_4

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 19
    :cond_6
    new-instance v2, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v3, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 20
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 21
    check-cast v4, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    const-string v5, "\u6211\u7684\u9ed8\u8ba4\u5b58\u6863"

    .line 22
    invoke-virtual {v4, v5}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setArchiveDesc(Ljava/lang/String;)V

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 23
    :cond_7
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->getListArchive()Landroidx/lifecycle/MutableLiveData;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_1

    .line 24
    new-instance v10, Lcom/psk/kotlin/util/CommonListMainData;

    const/4 v4, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0xc

    const/4 v9, 0x0

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/psk/kotlin/util/CommonListMainData;-><init>(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 25
    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 26
    :cond_8
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->dataBinding:Lcom/join/android/app/mgsim/wufun/databinding/s90;

    if-nez v0, :cond_9

    const-string v2, "dataBinding"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_9
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/s90;->E:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    invoke-virtual {v0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setNoMore()V

    .line 27
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getAdapterx()Lcom/join/kotlin/ui/cloudarchive/adapter/ModArchiveAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 28
    iput v1, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->page:I

    .line 29
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->getRequest()Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "requireContext()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget v2, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->page:I

    iget-object v3, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->gameId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->getAllDownloedArchive(Landroid/content/Context;ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final createPopwindow()Landroid/widget/PopupWindow;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c00df

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/widget/PopupWindow;

    invoke-direct {v1, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;)V

    const/4 v2, -0x2

    .line 3
    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 4
    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    const v2, 0x7f090339

    .line 5
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const-string v3, "contentView.findViewById(R.id.deleteCloud)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->deleteCloud:Landroid/widget/TextView;

    const v2, 0x7f090cd2

    .line 6
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const-string v3, "contentView.findViewById(R.id.reDownload)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->reDownload:Landroid/widget/TextView;

    const v2, 0x7f0909eb

    .line 7
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const-string v3, "contentView.findViewById(R.id.main)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->main:Landroid/view/View;

    const v2, 0x7f09106d

    .line 8
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const-string v3, "contentView.findViewById<View>(R.id.trangleTop)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->trangleTop:Landroid/view/View;

    const v2, 0x7f09106c

    .line 9
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v2, "contentView.findViewById<View>(R.id.trangleBottom)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->trangleBottom:Landroid/view/View;

    .line 10
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->reDownload:Landroid/widget/TextView;

    if-nez v0, :cond_0

    const-string v2, "reDownload"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->deleteCloud:Landroid/widget/TextView;

    if-nez v0, :cond_1

    const-string v2, "deleteCloud"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v1
.end method

.method public final getAdapterx()Lcom/join/kotlin/ui/cloudarchive/adapter/ModArchiveAdapter;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->adapterx$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/kotlin/ui/cloudarchive/adapter/ModArchiveAdapter;

    return-object v0
.end method

.method public final getArchiveDataPop()Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->archiveDataPop:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    if-nez v0, :cond_0

    const-string v1, "archiveDataPop"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getArchiveTag()Lcom/join/mgps/dto/ModGameArchiveTagBean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->archiveTag:Lcom/join/mgps/dto/ModGameArchiveTagBean;

    return-object v0
.end method

.method public final getCheckDownloadTypeDialog()Lcom/join/kotlin/ui/cloudarchive/dialog/DelArchiveDialog;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->checkDownloadTypeDialog$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/kotlin/ui/cloudarchive/dialog/DelArchiveDialog;

    return-object v0
.end method

.method public final getDataBinding()Lcom/join/android/app/mgsim/wufun/databinding/s90;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->dataBinding:Lcom/join/android/app/mgsim/wufun/databinding/s90;

    if-nez v0, :cond_0

    const-string v1, "dataBinding"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getDelFragment()Lcom/join/kotlin/ui/cloudarchive/dialog/DelArchiveDialog;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->delFragment$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/kotlin/ui/cloudarchive/dialog/DelArchiveDialog;

    return-object v0
.end method

.method public final getDeleteCloud()Landroid/widget/TextView;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->deleteCloud:Landroid/widget/TextView;

    if-nez v0, :cond_0

    const-string v1, "deleteCloud"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getDialog()Landroid/app/Dialog;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->dialog$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Dialog;

    return-object v0
.end method

.method public final getGameId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->gameId:Ljava/lang/String;

    return-object v0
.end method

.method public final getImageDialog()Lcom/join/kotlin/ui/cloudarchive/dialog/ImageShowDialog;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->imageDialog$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/kotlin/ui/cloudarchive/dialog/ImageShowDialog;

    return-object v0
.end method

.method public final getIsfirst()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->isfirst:Z

    return v0
.end method

.method public final getMain()Landroid/view/View;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->main:Landroid/view/View;

    if-nez v0, :cond_0

    const-string v1, "main"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getModgameBean()Lcom/join/mgps/dto/ModGameDetailBean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->modgameBean:Lcom/join/mgps/dto/ModGameDetailBean;

    return-object v0
.end method

.method public final getPage()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->page:I

    return v0
.end method

.method public final getPopWindow()Landroid/widget/PopupWindow;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->popWindow$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/PopupWindow;

    return-object v0
.end method

.method public final getReDownload()Landroid/widget/TextView;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->reDownload:Landroid/widget/TextView;

    if-nez v0, :cond_0

    const-string v1, "reDownload"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getRedownFragment()Lcom/join/kotlin/ui/cloudarchive/dialog/RedownArchiveDialog;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->redownFragment$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/kotlin/ui/cloudarchive/dialog/RedownArchiveDialog;

    return-object v0
.end method

.method public final getTrangleBottom()Landroid/view/View;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->trangleBottom:Landroid/view/View;

    if-nez v0, :cond_0

    const-string v1, "trangleBottom"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getTrangleTop()Landroid/view/View;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->trangleTop:Landroid/view/View;

    if-nez v0, :cond_0

    const-string v1, "trangleTop"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->type:I

    return v0
.end method

.method public final getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->viewModle$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    return-object v0
.end method

.method public final getViewModleShareViewModle()Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->viewModleShareViewModle$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;

    return-object v0
.end method

.method public final initData()V
    .locals 11

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/c0;->a()Lcom/join/mgps/Util/c0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/c0;->d(Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "modgameBean!!.mod_game_info.packageName"

    const-string v3, "modgameBean!!.mod_game_info"

    if-eqz v0, :cond_1

    const-string v4, "type"

    .line 3
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->type:I

    const-string v4, "gameId"

    const-string v5, ""

    .line 4
    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "getString(\"gameId\", \"\")"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->gameId:Ljava/lang/String;

    const-string v4, "datas"

    .line 5
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    const-string v5, "null cannot be cast to non-null type com.join.mgps.dto.ModGameDetailBean"

    invoke-static {v4, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v4, Lcom/join/mgps/dto/ModGameDetailBean;

    iput-object v4, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->modgameBean:Lcom/join/mgps/dto/ModGameDetailBean;

    const-string v4, "tag"

    .line 6
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/ModGameArchiveTagBean;

    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->archiveTag:Lcom/join/mgps/dto/ModGameArchiveTagBean;

    .line 7
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    move-result-object v0

    iget-object v4, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->modgameBean:Lcom/join/mgps/dto/ModGameDetailBean;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Lcom/join/mgps/dto/ModGameDetailBean;->getMod_game_info()Lcom/join/mgps/dto/GamedetialModleFourBean;

    move-result-object v4

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->setPackageName(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->getCloud_archive_local_path()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    iget-object v4, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->modgameBean:Lcom/join/mgps/dto/ModGameDetailBean;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/join/mgps/dto/ModGameDetailBean;->getCloud_archive_local_path()Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object v4, v1

    :goto_0
    invoke-virtual {v0, v4}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 9
    :cond_1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    move-result-object v5

    .line 10
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->modgameBean:Lcom/join/mgps/dto/ModGameDetailBean;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/join/mgps/dto/ModGameDetailBean;->getMod_game_info()Lcom/join/mgps/dto/GamedetialModleFourBean;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->modgameBean:Lcom/join/mgps/dto/ModGameDetailBean;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/join/mgps/dto/ModGameDetailBean;->getCloud_archive_local_path()Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;

    move-result-object v1

    :cond_2
    move-object v7, v1

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 12
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModleShareViewModle()Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->getRunIngArchiveId()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v1, "viewModleShareViewModle.runIngArchiveId.value!!"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v8

    .line 13
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModleShareViewModle()Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->getLocalArchiveLists()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Ljava/util/List;

    .line 14
    invoke-virtual/range {v5 .. v10}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->loadAllArchives(Ljava/lang/String;Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;JLjava/util/List;)V

    .line 15
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->dataBinding:Lcom/join/android/app/mgsim/wufun/databinding/s90;

    const-string v1, "dataBinding"

    if-nez v0, :cond_3

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v0, p0}, Landroidx/databinding/ViewDataBinding;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    .line 16
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->dataBinding:Lcom/join/android/app/mgsim/wufun/databinding/s90;

    if-nez v0, :cond_4

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    const/16 v2, 0x1b

    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroidx/databinding/ViewDataBinding;->setVariable(ILjava/lang/Object;)Z

    .line 17
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->dataBinding:Lcom/join/android/app/mgsim/wufun/databinding/s90;

    if-nez v0, :cond_5

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_5
    const/16 v2, 0x13

    invoke-virtual {v0, v2, p0}, Landroidx/databinding/ViewDataBinding;->setVariable(ILjava/lang/Object;)Z

    .line 18
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->dataBinding:Lcom/join/android/app/mgsim/wufun/databinding/s90;

    if-nez v0, :cond_6

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_6
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/s90;->E:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    const-string v2, "dataBinding.recycleView"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getAdapterx()Lcom/join/kotlin/ui/cloudarchive/adapter/ModArchiveAdapter;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 19
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->dataBinding:Lcom/join/android/app/mgsim/wufun/databinding/s90;

    if-nez v0, :cond_7

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_7
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/s90;->E:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 20
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->dataBinding:Lcom/join/android/app/mgsim/wufun/databinding/s90;

    if-nez v0, :cond_8

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_8
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/s90;->E:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    new-instance v1, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$initData$2;

    invoke-direct {v1, p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$initData$2;-><init>(Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;)V

    invoke-virtual {v0, v1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setLoadingListener(Lcom/join/android/app/component/xrecyclerview/XRecyclerView$f;)V

    .line 21
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->getListArchive()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$initData$3;

    invoke-direct {v2, p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$initData$3;-><init>(Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 22
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->getRequest()Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->getResultData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$initData$4;

    invoke-direct {v2, p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$initData$4;-><init>(Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 23
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->getRequest()Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;

    move-result-object v0

    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModleShareViewModle()Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->getInstallInExtPlug()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->setInstallInExtPlug(Z)V

    .line 24
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->getRequest()Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->getResultAllHasDownloadData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$initData$5;

    invoke-direct {v2, p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$initData$5;-><init>(Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 25
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->getRequest()Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->getDataChangeItem()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$initData$6;

    invoke-direct {v2, p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$initData$6;-><init>(Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 26
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->getLocalAllArchive()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$initData$7;

    invoke-direct {v2, p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$initData$7;-><init>(Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 27
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModleShareViewModle()Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->getRunIngArchiveId()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$initData$8;

    invoke-direct {v2, p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$initData$8;-><init>(Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 28
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModleShareViewModle()Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->getLocalArchiveLists()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$initData$9;

    invoke-direct {v2, p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$initData$9;-><init>(Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 29
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    const-string v1, "AccountUtil_.getInstance_(activity)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    const-string v1, "AccountUtil_.getInstance_(activity).accountData"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_9

    .line 30
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 31
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 32
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    const-string v1, "AccountUtil_.getInstance\u2026   activity\n            )"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->isTourist()Z

    move-result v0

    if-nez v0, :cond_9

    const/4 v0, 0x1

    goto :goto_1

    :cond_9
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->isLogin:Z

    return-void
.end method

.method public final isLogin()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->isLogin:Z

    return v0
.end method

.method public final loadData()V
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->getShowPosition()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    iget v1, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->type:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 2
    iget v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->type:I

    const-string v1, "requireContext()"

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v0, v3, :cond_4

    .line 3
    iget v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->page:I

    if-ne v0, v3, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->getLoadBindData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v3, Lcom/join/kotlin/domain/common/LoadBindindData;

    invoke-direct {v3, v2}, Lcom/join/kotlin/domain/common/LoadBindindData;-><init>(I)V

    invoke-virtual {v0, v3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->getRequest()Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;

    move-result-object v2

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget v4, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->page:I

    .line 8
    iget-object v5, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->gameId:Ljava/lang/String;

    .line 9
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->modgameBean:Lcom/join/mgps/dto/ModGameDetailBean;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/join/mgps/dto/ModGameDetailBean;->getCloud_archive_cfg()Lcom/join/mgps/dto/CloudArchiveCfg;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/join/mgps/dto/CloudArchiveCfg;->getLast_enter_main_page_time()J

    move-result-wide v0

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    :goto_0
    move-wide v6, v0

    .line 10
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->archiveTag:Lcom/join/mgps/dto/ModGameArchiveTagBean;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/join/mgps/dto/ModGameArchiveTagBean;->getTagId()Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    goto :goto_1

    :cond_2
    move-object v8, v1

    .line 11
    :goto_1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->archiveTag:Lcom/join/mgps/dto/ModGameArchiveTagBean;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/join/mgps/dto/ModGameArchiveTagBean;->getType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v9, v0

    goto :goto_2

    :cond_3
    move-object v9, v1

    .line 12
    :goto_2
    invoke-virtual/range {v2 .. v9}, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->getModeDatas(Landroid/content/Context;ILjava/lang/String;JLjava/lang/String;Ljava/lang/Integer;)V

    goto :goto_3

    :cond_4
    if-ne v0, v2, :cond_5

    .line 13
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->getLoadBindData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/join/kotlin/domain/common/LoadBindindData;

    invoke-direct {v1, v3}, Lcom/join/kotlin/domain/common/LoadBindindData;-><init>(I)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 14
    invoke-direct {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->updateLocaDataToShow()V

    goto :goto_3

    :cond_5
    const/4 v4, 0x3

    if-ne v0, v4, :cond_7

    .line 15
    iget v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->page:I

    if-ne v0, v3, :cond_6

    .line 16
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->getLoadBindData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v3, Lcom/join/kotlin/domain/common/LoadBindindData;

    invoke-direct {v3, v2}, Lcom/join/kotlin/domain/common/LoadBindindData;-><init>(I)V

    invoke-virtual {v0, v3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 17
    :cond_6
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->getRequest()Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget v1, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->page:I

    iget-object v3, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->gameId:Ljava/lang/String;

    invoke-virtual {v0, v2, v1, v3}, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->loadMyInShop(Landroid/content/Context;ILjava/lang/String;)V

    :cond_7
    :goto_3
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 12
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const v0, 0x7f090339

    const-string v1, ""

    const-string v2, "parentFragmentManager"

    const-string v3, "archiveDataPop"

    if-nez p1, :cond_1

    goto/16 :goto_2

    .line 2
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v0, :cond_7

    .line 3
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getPopWindow()Landroid/widget/PopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 4
    iget p1, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->type:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_4

    .line 5
    iget-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->archiveDataPop:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    if-nez p1, :cond_2

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getArchiveDesc()Ljava/lang/String;

    move-result-object p1

    const-string v0, "\u6211\u7684\u9ed8\u8ba4\u5b58\u6863(\u6682\u65e0)"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    const-string v0, "\u5220\u9664\u5931\u8d25\uff1a\u6682\u65e0\u9ed8\u8ba4\u5b58\u6863"

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void

    .line 7
    :cond_3
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getDelFragment()Lcom/join/kotlin/ui/cloudarchive/dialog/DelArchiveDialog;

    move-result-object p1

    new-instance v0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$onClick$1;

    invoke-direct {v0, p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$onClick$1;-><init>(Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;)V

    invoke-virtual {p1, v0}, Lcom/join/kotlin/ui/cloudarchive/dialog/DelArchiveDialog;->setClickDelDialogListener(Lcom/join/kotlin/ui/cloudarchive/dialog/ClickDelDialogListener;)V

    .line 8
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getDelFragment()Lcom/join/kotlin/ui/cloudarchive/dialog/DelArchiveDialog;

    move-result-object p1

    .line 9
    new-instance v0, Lcom/join/kotlin/ui/cloudarchive/dialog/DialogData;

    const/4 v8, 0x0

    const/16 v9, 0x10

    const/4 v10, 0x0

    const-string v4, "\u662f\u5426\u5220\u9664\u6b64\u5b58\u6863"

    const-string v5, ""

    const-string v6, "\u5220\u9664"

    const-string v7, "\u53d6\u6d88"

    move-object v3, v0

    invoke-direct/range {v3 .. v10}, Lcom/join/kotlin/ui/cloudarchive/dialog/DialogData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 10
    invoke-virtual {p1, v0}, Lcom/join/kotlin/ui/cloudarchive/dialog/DelArchiveDialog;->setDatas(Lcom/join/kotlin/ui/cloudarchive/dialog/DialogData;)V

    goto :goto_1

    .line 11
    :cond_4
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getDelFragment()Lcom/join/kotlin/ui/cloudarchive/dialog/DelArchiveDialog;

    move-result-object p1

    new-instance v0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$onClick$2;

    invoke-direct {v0, p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$onClick$2;-><init>(Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;)V

    invoke-virtual {p1, v0}, Lcom/join/kotlin/ui/cloudarchive/dialog/DelArchiveDialog;->setClickDelDialogListener(Lcom/join/kotlin/ui/cloudarchive/dialog/ClickDelDialogListener;)V

    .line 12
    iget-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->archiveDataPop:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    if-nez p1, :cond_5

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v0, "0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 13
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getDelFragment()Lcom/join/kotlin/ui/cloudarchive/dialog/DelArchiveDialog;

    move-result-object p1

    .line 14
    new-instance v0, Lcom/join/kotlin/ui/cloudarchive/dialog/DialogData;

    const/4 v8, 0x0

    const/16 v9, 0x10

    const/4 v10, 0x0

    const-string v4, "\u5220\u9664\u672c\u5730\u9ed8\u8ba4\u5b58\u6863"

    const-string v5, "\u5220\u9664\u540e\uff0c\u672c\u5730\u9ed8\u8ba4\u5b58\u6863\u8fdb\u5ea6\u5c06\u88ab\u6e05\u7a7a\uff0c\u786e\u5b9a\u5220\u9664\u5417\uff1f"

    const-string v6, "\u5220\u9664"

    const-string v7, "\u53d6\u6d88"

    move-object v3, v0

    invoke-direct/range {v3 .. v10}, Lcom/join/kotlin/ui/cloudarchive/dialog/DialogData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 15
    invoke-virtual {p1, v0}, Lcom/join/kotlin/ui/cloudarchive/dialog/DelArchiveDialog;->setDatas(Lcom/join/kotlin/ui/cloudarchive/dialog/DialogData;)V

    goto :goto_1

    .line 16
    :cond_6
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getDelFragment()Lcom/join/kotlin/ui/cloudarchive/dialog/DelArchiveDialog;

    move-result-object p1

    .line 17
    new-instance v0, Lcom/join/kotlin/ui/cloudarchive/dialog/DialogData;

    const/4 v8, 0x0

    const/16 v9, 0x10

    const/4 v10, 0x0

    const-string v4, "\u5220\u9664\u793e\u533a\u5185\u60a8\u53d1\u5e03\u7684\u6b64\u5b58\u6863"

    const-string v5, "\u6ce8\uff1a\u53ea\u5220\u9664\u5b58\u6863\u793e\u533a\u5185\u7684\u5b58\u6863\uff0c\u4e0d\u4f1a\u5f71\u54cd\u672c\u5730\u9ed8\u8ba4\u5b58\u6863"

    const-string v6, "\u5220\u9664"

    const-string v7, "\u53d6\u6d88"

    move-object v3, v0

    invoke-direct/range {v3 .. v10}, Lcom/join/kotlin/ui/cloudarchive/dialog/DialogData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 18
    invoke-virtual {p1, v0}, Lcom/join/kotlin/ui/cloudarchive/dialog/DelArchiveDialog;->setDatas(Lcom/join/kotlin/ui/cloudarchive/dialog/DialogData;)V

    .line 19
    :goto_1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getDelFragment()Lcom/join/kotlin/ui/cloudarchive/dialog/DelArchiveDialog;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Lcom/join/kotlin/ui/cloudarchive/dialog/DelArchiveDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_7
    :goto_2
    const v0, 0x7f090cd2

    if-nez p1, :cond_8

    goto/16 :goto_3

    .line 20
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v0, :cond_10

    .line 21
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getPopWindow()Landroid/widget/PopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 22
    iget p1, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->type:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_a

    .line 23
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 25
    iget-object v1, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->archiveDataPop:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    if-nez v1, :cond_9

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_9
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "archives"

    .line 26
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 27
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->modgameBean:Lcom/join/mgps/dto/ModGameDetailBean;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/join/mgps/dto/ModGameDetailBean;->getCloud_archive_local_path()Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;

    move-result-object v0

    const-string v1, "modgameBean!!.cloud_archive_local_path"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;->getArchiveFileSuffix()Ljava/lang/String;

    move-result-object v0

    const-string v1, "archiveFileSuffix"

    .line 28
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 29
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_3

    .line 30
    :cond_a
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getRedownFragment()Lcom/join/kotlin/ui/cloudarchive/dialog/RedownArchiveDialog;

    move-result-object p1

    new-instance v0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$onClick$3;

    invoke-direct {v0, p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$onClick$3;-><init>(Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;)V

    invoke-virtual {p1, v0}, Lcom/join/kotlin/ui/cloudarchive/dialog/RedownArchiveDialog;->setClickDelDialogListener(Lcom/join/kotlin/ui/cloudarchive/dialog/ClickDelDialogListener;)V

    .line 31
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getRedownFragment()Lcom/join/kotlin/ui/cloudarchive/dialog/RedownArchiveDialog;

    move-result-object p1

    .line 32
    new-instance v0, Lcom/join/kotlin/ui/cloudarchive/dialog/DialogData;

    const/4 v9, 0x0

    const/16 v10, 0x10

    const/4 v11, 0x0

    const-string v5, "\u91cd\u65b0\u4e0b\u8f7d"

    const-string v6, "\u91cd\u65b0\u4e0b\u8f7d\u540e\uff0c\u4e91\u5b58\u6863\u5c06\u4f1a\u8986\u76d6\u6389\u672c\u5730\u73b0\u6709\u5b58\u6863\uff0c\u786e\u8ba4\u91cd\u65b0\u4e0b\u8f7d\u5417\uff1f"

    const-string v7, "\u91cd\u65b0\u4e0b\u8f7d"

    const-string v8, "\u53d6\u6d88"

    move-object v4, v0

    invoke-direct/range {v4 .. v11}, Lcom/join/kotlin/ui/cloudarchive/dialog/DialogData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 33
    invoke-virtual {p1, v0}, Lcom/join/kotlin/ui/cloudarchive/dialog/RedownArchiveDialog;->setDatas(Lcom/join/kotlin/ui/cloudarchive/dialog/DialogData;)V

    .line 34
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 35
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->archiveDataPop:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    if-nez v0, :cond_b

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_b
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getArchiveLocalPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 36
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->archiveDataPop:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    if-nez v0, :cond_c

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->getRequest()Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;

    move-result-object v5

    .line 38
    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->archiveDataPop:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    if-nez v7, :cond_d

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_d
    invoke-virtual {v7}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getArchiveLocalPath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 39
    invoke-virtual {v5, v6}, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->getFileUpdateTimeMain(Ljava/io/File;)J

    move-result-wide v5

    .line 40
    invoke-static {v5, v6}, Lcom/join/mgps/Util/x;->p(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\u73a9\u8fc7"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setPlayTime(Ljava/lang/String;)V

    .line 41
    :cond_e
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->archiveDataPop:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    if-nez v0, :cond_f

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_f
    const-string v3, "archive"

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 42
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->getCloud_archive_local_path()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/Serializable;

    const-string v3, "cloud_archive_local_path"

    .line 43
    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 44
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getRedownFragment()Lcom/join/kotlin/ui/cloudarchive/dialog/RedownArchiveDialog;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 45
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getRedownFragment()Lcom/join/kotlin/ui/cloudarchive/dialog/RedownArchiveDialog;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Lcom/join/kotlin/ui/cloudarchive/dialog/RedownArchiveDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_10
    :goto_3
    return-void
.end method

.method public onClickDislike(Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;)V
    .locals 5
    .param p1    # Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "archive"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/join/mgps/va/overmind/e;->n:Lcom/join/mgps/va/overmind/e$a;

    invoke-virtual {v0}, Lcom/join/mgps/va/overmind/e$a;->b()Lcom/join/mgps/va/overmind/e;

    move-result-object v0

    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/join/mgps/va/overmind/e;->F(Lcom/join/mgps/va/overmind/e;Ljava/lang/String;IILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModleShareViewModle()Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->getShowDownlloadDialog()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$onClickDislike$1;

    invoke-direct {v1, p0, p1}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$onClickDislike$1;-><init>(Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;)V

    invoke-static {v0, v1}, Lcom/join/kotlin/domain/ext/EXTKt;->checkHasLogin(Landroid/content/Context;Lkotlin/jvm/functions/Function0;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onClickImage(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getImageDialog()Lcom/join/kotlin/ui/cloudarchive/dialog/ImageShowDialog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/kotlin/ui/cloudarchive/dialog/ImageShowDialog;->setImageDialogPath(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getImageDialog()Lcom/join/kotlin/ui/cloudarchive/dialog/ImageShowDialog;

    move-result-object p1

    invoke-static {p1}, Lcom/join/kotlin/domain/ext/EXTKt;->dialogFragmentCanShow(Landroidx/fragment/app/DialogFragment;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getImageDialog()Lcom/join/kotlin/ui/cloudarchive/dialog/ImageShowDialog;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "childFragmentManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "imageDialog"

    invoke-virtual {p1, v0, v1}, Lcom/join/kotlin/ui/cloudarchive/dialog/ImageShowDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onClickMore(Landroid/view/View;Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;)V
    .locals 8
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "archive"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p2, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->archiveDataPop:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 2
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getPopWindow()Landroid/widget/PopupWindow;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 3
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getPopWindow()Landroid/widget/PopupWindow;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getPopWindow()Landroid/widget/PopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    return-void

    .line 5
    :cond_0
    iget-object p2, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->deleteCloud:Landroid/widget/TextView;

    if-nez p2, :cond_1

    const-string v1, "deleteCloud"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    const-string v1, "\u5220\u9664"

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f0710ee

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 7
    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 8
    iget v3, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->type:I

    const/4 v4, 0x3

    const/4 v5, 0x0

    const-string v6, "reDownload"

    const/16 v7, 0x8

    if-ne v3, v4, :cond_3

    .line 9
    iget-object v1, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->reDownload:Landroid/widget/TextView;

    if-nez v1, :cond_2

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v1, 0x1

    goto :goto_0

    .line 10
    :cond_3
    iget-object v3, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->reDownload:Landroid/widget/TextView;

    if-nez v3, :cond_4

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 11
    :goto_0
    iget v3, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->type:I

    if-ne v3, v4, :cond_6

    .line 12
    iget-object v3, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->reDownload:Landroid/widget/TextView;

    if-nez v3, :cond_5

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_5
    const-string v4, "\u7f16\u8f91"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    :cond_6
    aget v0, v2, v0

    div-int/2addr p2, v1

    add-int/2addr v0, p2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/join/android/app/common/utils/j;->n(Landroid/content/Context;)Lcom/join/android/app/common/utils/j;

    move-result-object v1

    .line 14
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/android/app/common/utils/j;->k(Landroid/app/Activity;)I

    move-result v1

    const-string v2, "trangleBottom"

    const v3, 0x7f07102e

    const-string v4, "trangleTop"

    const-string v6, "main"

    if-le v0, v1, :cond_a

    .line 15
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->main:Landroid/view/View;

    if-nez v0, :cond_7

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_7
    const v1, 0x7f0802cf

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 16
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->trangleTop:Landroid/view/View;

    if-nez v0, :cond_8

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_8
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 17
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->trangleBottom:Landroid/view/View;

    if-nez v0, :cond_9

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_9
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 18
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getPopWindow()Landroid/widget/PopupWindow;

    move-result-object v0

    .line 19
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    neg-int v1, v1

    .line 20
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v2

    float-to-int v2, v2

    add-int/2addr v2, p2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p2

    add-int/2addr v2, p2

    neg-int p2, v2

    .line 21
    invoke-virtual {v0, p1, v1, p2}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    goto :goto_1

    .line 22
    :cond_a
    iget-object p2, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->main:Landroid/view/View;

    if-nez p2, :cond_b

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_b
    const v0, 0x7f0802ce

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 23
    iget-object p2, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->trangleTop:Landroid/view/View;

    if-nez p2, :cond_c

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_c
    invoke-virtual {p2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 24
    iget-object p2, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->trangleBottom:Landroid/view/View;

    if-nez p2, :cond_d

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_d
    invoke-virtual {p2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 25
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getPopWindow()Landroid/widget/PopupWindow;

    move-result-object p2

    .line 26
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    neg-int v0, v0

    .line 27
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f071065

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 28
    invoke-virtual {p2, p1, v0, v1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    :goto_1
    return-void
.end method

.method public onClickReload()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->loadData()V

    return-void
.end method

.method public onClickRun(Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;)V
    .locals 5
    .param p1    # Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "archive"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 2
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v1

    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getGame_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v1

    .line 3
    iput-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 4
    check-cast v1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-eqz v1, :cond_2

    .line 5
    sget-object v1, Lcom/join/mgps/va/overmind/e;->n:Lcom/join/mgps/va/overmind/e$a;

    invoke-virtual {v1}, Lcom/join/mgps/va/overmind/e$a;->b()Lcom/join/mgps/va/overmind/e;

    move-result-object v1

    iget-object v2, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Lcom/join/mgps/va/overmind/e;->M(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6
    sget-object v1, Lcom/join/android/app/common/utils/APKUtils;->b:Lcom/join/android/app/common/utils/APKUtils$Companion;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v3, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v1, v2, v3}, Lcom/join/android/app/common/utils/APKUtils$Companion;->c(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    .line 7
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$onClickRun$1;

    invoke-direct {v3, p0, p1, v0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$onClickRun$1;-><init>(Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-virtual {v1, v2, v3}, Lcom/join/android/app/common/utils/APKUtils$Companion;->e(Landroid/content/Context;Lkotlin/jvm/functions/Function0;)Z

    move-result v1

    if-eqz v1, :cond_3

    return-void

    :cond_2
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getGame_id()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " download task is null."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    .line 9
    :cond_3
    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {p0, p1, v0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->onClickRunGame(Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    return-void
.end method

.method public final onClickRunGame(Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 6
    .param p1    # Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/github/snowdream/android/app/downloader/DownloadTask;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "archive"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eqz p2, :cond_10

    .line 1
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 2
    sget-object v1, Lcom/join/mgps/va/overmind/e;->n:Lcom/join/mgps/va/overmind/e$a;

    .line 3
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "downloadTask.getPackageName()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getResource_path()Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-virtual {v1, v2, v3}, Lcom/join/mgps/va/overmind/e$a;->h(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 6
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 7
    :cond_0
    :goto_0
    sget-object v1, Lcom/join/mgps/va/overmind/e;->n:Lcom/join/mgps/va/overmind/e$a;

    invoke-virtual {v1}, Lcom/join/mgps/va/overmind/e$a;->b()Lcom/join/mgps/va/overmind/e;

    move-result-object v1

    .line 8
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Lcom/join/mgps/va/overmind/e;->F(Lcom/join/mgps/va/overmind/e;Ljava/lang/String;IILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result p2

    const/4 v1, 0x5

    if-ne p2, v1, :cond_e

    .line 9
    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getStatus()I

    move-result p2

    const/16 v1, 0x8

    const/4 v2, 0x3

    const/4 v3, 0x4

    if-ne p2, v1, :cond_8

    .line 10
    iget p2, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->type:I

    if-ne p2, v0, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    if-ne p2, v4, :cond_2

    .line 11
    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getId()Ljava/lang/String;

    move-result-object p2

    const-string v1, "0"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    const/4 v2, 0x2

    goto :goto_1

    :cond_2
    const/4 v2, 0x4

    .line 12
    :cond_3
    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object p2

    .line 13
    sget-object v1, Lcom/papa/sim/statistic/Event;->clickStartCloudSave:Lcom/papa/sim/statistic/Event;

    .line 14
    new-instance v3, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v3}, Lcom/papa/sim/statistic/Ext;-><init>()V

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object v2

    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getGame_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object v2

    .line 15
    iget-object v3, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->archiveTag:Lcom/join/mgps/dto/ModGameArchiveTagBean;

    if-nez v3, :cond_4

    move-object v3, v5

    goto :goto_3

    :cond_4
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/join/mgps/dto/ModGameArchiveTagBean;->getType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_2

    :cond_5
    move-object v3, v5

    :goto_2
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :goto_3
    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object v2

    .line 16
    iget-object v3, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->archiveTag:Lcom/join/mgps/dto/ModGameArchiveTagBean;

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lcom/join/mgps/dto/ModGameArchiveTagBean;->getTagId()Ljava/lang/String;

    move-result-object v5

    .line 17
    :cond_6
    invoke-virtual {p2, v1, v2, v5}, Lcom/papa/sim/statistic/p;->W(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;Ljava/lang/String;)V

    .line 18
    invoke-static {}, Ln1/g;->t()Ln1/g;

    move-result-object p2

    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ln1/g;->p(Ljava/lang/String;)Lcom/join/mgps/db/tables/CloudArchiveTable;

    move-result-object p2

    if-eqz p2, :cond_7

    .line 19
    invoke-virtual {p2}, Lcom/join/mgps/db/tables/CloudArchiveTable;->getIsFirstRun()I

    move-result v1

    if-ne v1, v0, :cond_7

    .line 20
    invoke-virtual {p2, v4}, Lcom/join/mgps/db/tables/CloudArchiveTable;->setIsFirstRun(I)V

    .line 21
    invoke-static {}, Ln1/g;->t()Ln1/g;

    move-result-object v0

    invoke-virtual {v0, p2}, Lg1/b;->update(Ljava/lang/Object;)I

    .line 22
    invoke-static {}, Lcom/join/mgps/Util/c0;->a()Lcom/join/mgps/Util/c0;

    move-result-object p2

    .line 23
    new-instance v0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveDownEvent;

    const/16 v1, 0xa

    invoke-direct {v0, v1, p1}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveDownEvent;-><init>(ILcom/join/kotlin/ui/cloudarchive/data/ArchiveData;)V

    .line 24
    invoke-virtual {p2, v0}, Lcom/join/mgps/Util/c0;->c(Ljava/lang/Object;)V

    .line 25
    :cond_7
    invoke-direct {p0, p1}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->startGame(Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;)V

    goto/16 :goto_7

    .line 26
    :cond_8
    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getStatus()I

    move-result p2

    if-nez p2, :cond_f

    .line 27
    iget p2, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->type:I

    if-ne p2, v0, :cond_9

    goto :goto_4

    :cond_9
    if-ne p2, v4, :cond_a

    const/4 v0, 0x3

    goto :goto_4

    :cond_a
    const/4 v0, 0x4

    .line 28
    :goto_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object p2

    .line 29
    sget-object v1, Lcom/papa/sim/statistic/Event;->clickDownCloudSave:Lcom/papa/sim/statistic/Event;

    .line 30
    new-instance v2, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v2}, Lcom/papa/sim/statistic/Ext;-><init>()V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object v0

    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getGame_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object v0

    .line 31
    iget-object v2, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->archiveTag:Lcom/join/mgps/dto/ModGameArchiveTagBean;

    if-nez v2, :cond_b

    move-object v2, v5

    goto :goto_6

    :cond_b
    if-eqz v2, :cond_c

    invoke-virtual {v2}, Lcom/join/mgps/dto/ModGameArchiveTagBean;->getType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_5

    :cond_c
    move-object v2, v5

    :goto_5
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_6
    invoke-virtual {v0, v2}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object v0

    .line 32
    iget-object v2, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->archiveTag:Lcom/join/mgps/dto/ModGameArchiveTagBean;

    if-eqz v2, :cond_d

    invoke-virtual {v2}, Lcom/join/mgps/dto/ModGameArchiveTagBean;->getTagId()Ljava/lang/String;

    move-result-object v5

    .line 33
    :cond_d
    invoke-virtual {p2, v1, v0, v5}, Lcom/papa/sim/statistic/p;->W(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;Ljava/lang/String;)V

    .line 34
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    if-eqz p2, :cond_f

    new-instance v0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$onClickRunGame$3;

    invoke-direct {v0, p0, p1}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$onClickRunGame$3;-><init>(Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;)V

    invoke-static {p2, v0}, Lcom/join/kotlin/domain/ext/EXTKt;->checkHasNetWork(Landroid/content/Context;Lkotlin/jvm/functions/Function0;)V

    goto :goto_7

    .line 35
    :cond_e
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModleShareViewModle()Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->getShowDownlloadDialog()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :cond_f
    :goto_7
    return-void

    .line 36
    :cond_10
    new-instance p1, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle$CloudShareEvent;

    invoke-direct {p1}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle$CloudShareEvent;-><init>()V

    .line 37
    invoke-virtual {p1, v0}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle$CloudShareEvent;->setShowdownloadModDialog(I)V

    .line 38
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModleShareViewModle()Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;

    move-result-object p2

    invoke-virtual {p2}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->getEvent()Lcom/join/kotlin/domain/common/SingleLiveEvent;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/join/kotlin/domain/common/LiveDataExtensionKt;->setEvent(Lcom/join/kotlin/domain/common/SingleLiveEvent;Ljava/lang/Object;)V

    return-void
.end method

.method public onClickSetNetWork()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->I2(Landroid/content/Context;)V

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

    const p3, 0x7f0c055a

    const/4 v0, 0x0

    .line 1
    invoke-static {p1, p3, p2, v0}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    const-string p2, "DataBindingUtil.inflate(\u2026          false\n        )"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/s90;

    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->dataBinding:Lcom/join/android/app/mgsim/wufun/databinding/s90;

    .line 2
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->initData()V

    .line 3
    iget-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->dataBinding:Lcom/join/android/app/mgsim/wufun/databinding/s90;

    const-string p2, "dataBinding"

    if-nez p1, :cond_0

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    const p3, 0x7f080079

    invoke-virtual {p1, p3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->dataBinding:Lcom/join/android/app/mgsim/wufun/databinding/s90;

    if-nez p1, :cond_2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

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

.method public onPraise(Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;)V
    .locals 5
    .param p1    # Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "archive"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/join/mgps/va/overmind/e;->n:Lcom/join/mgps/va/overmind/e$a;

    invoke-virtual {v0}, Lcom/join/mgps/va/overmind/e$a;->b()Lcom/join/mgps/va/overmind/e;

    move-result-object v0

    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/join/mgps/va/overmind/e;->F(Lcom/join/mgps/va/overmind/e;Ljava/lang/String;IILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModleShareViewModle()Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->getShowDownlloadDialog()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$onPraise$1;

    invoke-direct {v1, p0, p1}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$onPraise$1;-><init>(Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;)V

    invoke-static {v0, v1}, Lcom/join/kotlin/domain/ext/EXTKt;->checkHasLogin(Landroid/content/Context;Lkotlin/jvm/functions/Function0;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onRecivedDownLoadEVent(Lcom/join/kotlin/ui/cloudarchive/data/ArchiveDownEvent;)V
    .locals 1
    .param p1    # Lcom/join/kotlin/ui/cloudarchive/data/ArchiveDownEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "archiveDownEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->onRecivedDownLoadEVent(Lcom/join/kotlin/ui/cloudarchive/data/ArchiveDownEvent;)V

    return-void
.end method

.method public onResume()V
    .locals 14

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModleShareViewModle()Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->getLastStartArchive()Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_7

    .line 3
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    :goto_1
    if-eqz v3, :cond_2

    goto/16 :goto_3

    .line 4
    :cond_2
    invoke-static {}, Ln1/g;->t()Ln1/g;

    move-result-object v3

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ln1/g;->p(Ljava/lang/String;)Lcom/join/mgps/db/tables/CloudArchiveTable;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 5
    invoke-virtual {v3}, Lcom/join/mgps/db/tables/CloudArchiveTable;->getIsFirstRun()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_7

    .line 6
    new-instance v3, Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    .line 7
    invoke-virtual {v3}, Lcom/join/mgps/pref/PrefDef_;->lastLaunchModGameId()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v4

    invoke-virtual {v4}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 8
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v4

    .line 9
    invoke-virtual {v3}, Lcom/join/mgps/pref/PrefDef_;->lastLaunchModGameId()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v3

    invoke-virtual {v3}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 10
    sget-object v4, Lcom/join/android/app/common/utils/APKUtils;->b:Lcom/join/android/app/common/utils/APKUtils$Companion;

    invoke-virtual {v4, v3}, Lcom/join/android/app/common/utils/APKUtils$Companion;->v(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGame_run_state()I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_4

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGame_run_state()I

    move-result v4

    if-eqz v4, :cond_4

    .line 11
    :cond_3
    sget-object v4, Lcom/join/android/app/common/utils/APKUtils;->b:Lcom/join/android/app/common/utils/APKUtils$Companion;

    invoke-virtual {v4, v3}, Lcom/join/android/app/common/utils/APKUtils$Companion;->r(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "task"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGame_run_state()I

    move-result v3

    if-nez v3, :cond_5

    :cond_4
    const/4 v3, 0x1

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    :goto_2
    if-nez v3, :cond_7

    .line 12
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getIsLike()I

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getIsUnLike()I

    move-result v3

    if-nez v3, :cond_6

    .line 13
    new-instance v3, Lcom/join/kotlin/ui/cloudarchive/dialog/CommentArchiveDialog;

    invoke-direct {v3}, Lcom/join/kotlin/ui/cloudarchive/dialog/CommentArchiveDialog;-><init>()V

    .line 14
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "archive"

    .line 15
    invoke-virtual {v4, v5, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 16
    invoke-virtual {v3, v4}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 17
    new-instance v4, Lcom/join/kotlin/ui/cloudarchive/dialog/DialogData;

    .line 18
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getArchiveDesc()Ljava/lang/String;

    move-result-object v7

    const-string v0, "lastStartArchive!!.archiveDesc"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x1c

    const/4 v13, 0x0

    const-string v8, "\u8bf7\u8bc4\u4ef7\u4e00\u4e0b\u4f60\u521a\u624d\u73a9\u7684\u4e91\u5b58\u6863\u5427\uff5e"

    move-object v6, v4

    .line 19
    invoke-direct/range {v6 .. v13}, Lcom/join/kotlin/ui/cloudarchive/dialog/DialogData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 20
    invoke-virtual {v3, v4}, Lcom/join/kotlin/ui/cloudarchive/dialog/CommentArchiveDialog;->setDatas(Lcom/join/kotlin/ui/cloudarchive/dialog/DialogData;)V

    .line 21
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v4, "parentFragmentManager"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, ""

    invoke-virtual {v3, v0, v4}, Lcom/join/kotlin/ui/cloudarchive/dialog/CommentArchiveDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 22
    :cond_6
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModleShareViewModle()Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;

    move-result-object v0

    new-instance v3, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    invoke-direct {v3}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;-><init>()V

    invoke-virtual {v0, v3}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->setLastStartArchive(Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;)V

    .line 23
    :cond_7
    :goto_3
    iput v2, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->page:I

    .line 24
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    const-string v3, "AccountUtil_.getInstance_(activity)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    const-string v3, "AccountUtil_.getInstance_(activity).accountData"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_8

    .line 25
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 26
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 27
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    const-string v3, "AccountUtil_.getInstance\u2026   activity\n            )"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->isTourist()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v1, 0x1

    .line 28
    :cond_8
    iget-boolean v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->isLogin:Z

    if-eq v1, v0, :cond_9

    .line 29
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->loadData()V

    .line 30
    iput-boolean v1, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->isLogin:Z

    :cond_9
    return-void
.end method

.method public final scrollToTop()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->dataBinding:Lcom/join/android/app/mgsim/wufun/databinding/s90;

    const-string v1, "dataBinding"

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    if-nez v0, :cond_1

    return-void

    .line 2
    :cond_1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->dataBinding:Lcom/join/android/app/mgsim/wufun/databinding/s90;

    if-nez v0, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/s90;->E:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    return-void
.end method

.method public final setArchiveDataPop(Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;)V
    .locals 1
    .param p1    # Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->archiveDataPop:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    return-void
.end method

.method public final setArchiveTag(Lcom/join/mgps/dto/ModGameArchiveTagBean;)V
    .locals 0
    .param p1    # Lcom/join/mgps/dto/ModGameArchiveTagBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->archiveTag:Lcom/join/mgps/dto/ModGameArchiveTagBean;

    return-void
.end method

.method public final setDataBinding(Lcom/join/android/app/mgsim/wufun/databinding/s90;)V
    .locals 1
    .param p1    # Lcom/join/android/app/mgsim/wufun/databinding/s90;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->dataBinding:Lcom/join/android/app/mgsim/wufun/databinding/s90;

    return-void
.end method

.method public final setDeleteCloud(Landroid/widget/TextView;)V
    .locals 1
    .param p1    # Landroid/widget/TextView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->deleteCloud:Landroid/widget/TextView;

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
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->gameId:Ljava/lang/String;

    return-void
.end method

.method public final setIsfirst(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->isfirst:Z

    return-void
.end method

.method public final setLogin(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->isLogin:Z

    return-void
.end method

.method public final setMain(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->main:Landroid/view/View;

    return-void
.end method

.method public final setModgameBean(Lcom/join/mgps/dto/ModGameDetailBean;)V
    .locals 0
    .param p1    # Lcom/join/mgps/dto/ModGameDetailBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->modgameBean:Lcom/join/mgps/dto/ModGameDetailBean;

    return-void
.end method

.method public final setPage(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->page:I

    return-void
.end method

.method public final setReDownload(Landroid/widget/TextView;)V
    .locals 1
    .param p1    # Landroid/widget/TextView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->reDownload:Landroid/widget/TextView;

    return-void
.end method

.method public final setTrangleBottom(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->trangleBottom:Landroid/view/View;

    return-void
.end method

.method public final setTrangleTop(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->trangleTop:Landroid/view/View;

    return-void
.end method

.method public final setType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->type:I

    return-void
.end method

.method public uploadCloud()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$uploadCloud$1;

    invoke-direct {v1, p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$uploadCloud$1;-><init>(Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;)V

    invoke-static {v0, v1}, Lcom/join/kotlin/domain/ext/EXTKt;->checkHasNetWork(Landroid/content/Context;Lkotlin/jvm/functions/Function0;)V

    :cond_0
    return-void
.end method
