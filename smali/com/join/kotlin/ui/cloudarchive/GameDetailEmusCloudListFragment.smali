.class public final Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;
.super Landroidx/fragment/app/Fragment;
.source "GameDetailEmusCloudListFragment.kt"

# interfaces
.implements Lcom/join/kotlin/ui/cloudarchive/adapter/OnEmusClickArchiveListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/join/kotlin/domain/common/LoadBindClickProxy;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u00ca\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0012\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004B\t\u00a2\u0006\u0006\u0008\u00a3\u0001\u0010\u00a4\u0001J&\u0010\u000c\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u0006\u001a\u00020\u00052\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u00072\u0008\u0010\n\u001a\u0004\u0018\u00010\tH\u0016J\u0008\u0010\u000e\u001a\u00020\rH\u0016J\u0006\u0010\u000f\u001a\u00020\rJ\u0006\u0010\u0010\u001a\u00020\rJ\u0006\u0010\u0012\u001a\u00020\u0011J\u0010\u0010\u0015\u001a\u00020\r2\u0006\u0010\u0014\u001a\u00020\u0013H\u0016J\u0008\u0010\u0016\u001a\u00020\rH\u0016J\u0018\u0010\u0018\u001a\u00020\r2\u0006\u0010\u0017\u001a\u00020\u000b2\u0006\u0010\u0014\u001a\u00020\u0013H\u0016J\u0010\u0010\u0019\u001a\u00020\r2\u0006\u0010\u0014\u001a\u00020\u0013H\u0016J\u0010\u0010\u001a\u001a\u00020\r2\u0006\u0010\u0014\u001a\u00020\u0013H\u0016J\u0012\u0010\u001d\u001a\u00020\r2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001bH\u0016J\u0012\u0010\u001f\u001a\u00020\r2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u000bH\u0016J\u0010\u0010\"\u001a\u00020\r2\u0006\u0010!\u001a\u00020 H\u0007J\u0008\u0010#\u001a\u00020\rH\u0016J\u0008\u0010$\u001a\u00020\rH\u0016J\u0006\u0010%\u001a\u00020\rR\u001d\u0010+\u001a\u00020&8F@\u0006X\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\'\u0010(\u001a\u0004\u0008)\u0010*R\"\u0010-\u001a\u00020,8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008-\u0010.\u001a\u0004\u0008/\u00100\"\u0004\u00081\u00102R\"\u00104\u001a\u0002038\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u00084\u00105\u001a\u0004\u00086\u00107\"\u0004\u00088\u00109R\u001d\u0010>\u001a\u00020:8F@\u0006X\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008;\u0010(\u001a\u0004\u0008<\u0010=R\"\u0010?\u001a\u00020\u000b8\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008?\u0010@\u001a\u0004\u0008A\u0010B\"\u0004\u0008C\u0010DR\"\u0010F\u001a\u00020E8\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008F\u0010G\u001a\u0004\u0008H\u0010I\"\u0004\u0008J\u0010KR\u001d\u0010O\u001a\u00020\u00118F@\u0006X\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008L\u0010(\u001a\u0004\u0008M\u0010NR\"\u0010P\u001a\u00020,8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008P\u0010.\u001a\u0004\u0008P\u00100\"\u0004\u0008Q\u00102R$\u0010S\u001a\u0004\u0018\u00010R8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008S\u0010T\u001a\u0004\u0008U\u0010V\"\u0004\u0008W\u0010XR\u001d\u0010]\u001a\u00020Y8F@\u0006X\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008Z\u0010(\u001a\u0004\u0008[\u0010\\R\"\u0010_\u001a\u00020^8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008_\u0010`\u001a\u0004\u0008a\u0010b\"\u0004\u0008c\u0010dR\"\u0010e\u001a\u00020\u001b8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008e\u0010f\u001a\u0004\u0008g\u0010h\"\u0004\u0008i\u0010jR\"\u0010k\u001a\u00020\u00138\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008k\u0010l\u001a\u0004\u0008m\u0010n\"\u0004\u0008o\u0010pR\u001d\u0010u\u001a\u00020q8F@\u0006X\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008r\u0010(\u001a\u0004\u0008s\u0010tR\u001d\u0010z\u001a\u00020v8F@\u0006X\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008w\u0010(\u001a\u0004\u0008x\u0010yR&\u0010|\u001a\u0004\u0018\u00010{8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0014\n\u0004\u0008|\u0010}\u001a\u0004\u0008~\u0010\u007f\"\u0006\u0008\u0080\u0001\u0010\u0081\u0001R,\u0010\u0083\u0001\u001a\u0005\u0018\u00010\u0082\u00018\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0018\n\u0006\u0008\u0083\u0001\u0010\u0084\u0001\u001a\u0006\u0008\u0085\u0001\u0010\u0086\u0001\"\u0006\u0008\u0087\u0001\u0010\u0088\u0001R\"\u0010\u008d\u0001\u001a\u00030\u0089\u00018F@\u0006X\u0086\u0084\u0002\u00a2\u0006\u000f\n\u0005\u0008\u008a\u0001\u0010(\u001a\u0006\u0008\u008b\u0001\u0010\u008c\u0001R&\u0010\u008e\u0001\u001a\u00020E8\u0006@\u0006X\u0086.\u00a2\u0006\u0015\n\u0005\u0008\u008e\u0001\u0010G\u001a\u0005\u0008\u008f\u0001\u0010I\"\u0005\u0008\u0090\u0001\u0010KR&\u0010\u0091\u0001\u001a\u00020\u000b8\u0006@\u0006X\u0086.\u00a2\u0006\u0015\n\u0005\u0008\u0091\u0001\u0010@\u001a\u0005\u0008\u0092\u0001\u0010B\"\u0005\u0008\u0093\u0001\u0010DR,\u0010\u0095\u0001\u001a\u0005\u0018\u00010\u0094\u00018\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0018\n\u0006\u0008\u0095\u0001\u0010\u0096\u0001\u001a\u0006\u0008\u0097\u0001\u0010\u0098\u0001\"\u0006\u0008\u0099\u0001\u0010\u009a\u0001R&\u0010\u009b\u0001\u001a\u00020\u000b8\u0006@\u0006X\u0086.\u00a2\u0006\u0015\n\u0005\u0008\u009b\u0001\u0010@\u001a\u0005\u0008\u009c\u0001\u0010B\"\u0005\u0008\u009d\u0001\u0010DR\"\u0010\u00a2\u0001\u001a\u00030\u009e\u00018F@\u0006X\u0086\u0084\u0002\u00a2\u0006\u000f\n\u0005\u0008\u009f\u0001\u0010(\u001a\u0006\u0008\u00a0\u0001\u0010\u00a1\u0001\u00a8\u0006\u00a5\u0001"
    }
    d2 = {
        "Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;",
        "Landroidx/fragment/app/Fragment;",
        "Lcom/join/kotlin/ui/cloudarchive/adapter/OnEmusClickArchiveListener;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/join/kotlin/domain/common/LoadBindClickProxy;",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "Landroid/view/ViewGroup;",
        "container",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Landroid/view/View;",
        "onCreateView",
        "",
        "onDestroyView",
        "initData",
        "loadData",
        "Landroid/widget/PopupWindow;",
        "createPopwindow",
        "Lcom/join/mgps/dto/CloudListDataBean;",
        "archive",
        "onClickRun",
        "uploadCloud",
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
        "Lcom/join/kotlin/ui/cloudarchive/dialog/RedownArchiveDialog;",
        "redownFragment$delegate",
        "Lkotlin/Lazy;",
        "getRedownFragment",
        "()Lcom/join/kotlin/ui/cloudarchive/dialog/RedownArchiveDialog;",
        "redownFragment",
        "",
        "isfirst",
        "Z",
        "getIsfirst",
        "()Z",
        "setIsfirst",
        "(Z)V",
        "Lcom/join/android/app/mgsim/wufun/databinding/ki;",
        "dataBinding",
        "Lcom/join/android/app/mgsim/wufun/databinding/ki;",
        "getDataBinding",
        "()Lcom/join/android/app/mgsim/wufun/databinding/ki;",
        "setDataBinding",
        "(Lcom/join/android/app/mgsim/wufun/databinding/ki;)V",
        "Lcom/join/kotlin/ui/cloudarchive/dialog/DelArchiveDialog;",
        "delFragment$delegate",
        "getDelFragment",
        "()Lcom/join/kotlin/ui/cloudarchive/dialog/DelArchiveDialog;",
        "delFragment",
        "main",
        "Landroid/view/View;",
        "getMain",
        "()Landroid/view/View;",
        "setMain",
        "(Landroid/view/View;)V",
        "Landroid/widget/TextView;",
        "deleteCloud",
        "Landroid/widget/TextView;",
        "getDeleteCloud",
        "()Landroid/widget/TextView;",
        "setDeleteCloud",
        "(Landroid/widget/TextView;)V",
        "popWindow$delegate",
        "getPopWindow",
        "()Landroid/widget/PopupWindow;",
        "popWindow",
        "isLogin",
        "setLogin",
        "Lcom/join/mgps/dto/StandaloneCloudArchive;",
        "modgameBean",
        "Lcom/join/mgps/dto/StandaloneCloudArchive;",
        "getModgameBean",
        "()Lcom/join/mgps/dto/StandaloneCloudArchive;",
        "setModgameBean",
        "(Lcom/join/mgps/dto/StandaloneCloudArchive;)V",
        "Lcom/join/kotlin/ui/cloudarchive/adapter/EmusArchiveAdapter;",
        "adapterx$delegate",
        "getAdapterx",
        "()Lcom/join/kotlin/ui/cloudarchive/adapter/EmusArchiveAdapter;",
        "adapterx",
        "",
        "page",
        "I",
        "getPage",
        "()I",
        "setPage",
        "(I)V",
        "gameId",
        "Ljava/lang/String;",
        "getGameId",
        "()Ljava/lang/String;",
        "setGameId",
        "(Ljava/lang/String;)V",
        "archiveDataPop",
        "Lcom/join/mgps/dto/CloudListDataBean;",
        "getArchiveDataPop",
        "()Lcom/join/mgps/dto/CloudListDataBean;",
        "setArchiveDataPop",
        "(Lcom/join/mgps/dto/CloudListDataBean;)V",
        "Landroid/app/Dialog;",
        "dialog$delegate",
        "getDialog",
        "()Landroid/app/Dialog;",
        "dialog",
        "Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudViewModle;",
        "viewModle$delegate",
        "getViewModle",
        "()Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudViewModle;",
        "viewModle",
        "Lcom/join/mgps/dto/ModGameArchiveTagBean;",
        "archiveTag",
        "Lcom/join/mgps/dto/ModGameArchiveTagBean;",
        "getArchiveTag",
        "()Lcom/join/mgps/dto/ModGameArchiveTagBean;",
        "setArchiveTag",
        "(Lcom/join/mgps/dto/ModGameArchiveTagBean;)V",
        "Lcom/join/mgps/dto/GamedetialModleFourBean;",
        "modleFourBean",
        "Lcom/join/mgps/dto/GamedetialModleFourBean;",
        "getModleFourBean",
        "()Lcom/join/mgps/dto/GamedetialModleFourBean;",
        "setModleFourBean",
        "(Lcom/join/mgps/dto/GamedetialModleFourBean;)V",
        "Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;",
        "viewModleShareViewModle$delegate",
        "getViewModleShareViewModle",
        "()Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;",
        "viewModleShareViewModle",
        "reDownload",
        "getReDownload",
        "setReDownload",
        "trangleBottom",
        "getTrangleBottom",
        "setTrangleBottom",
        "Lcom/join/kotlin/ui/cloudarchive/IOnRunListener;",
        "mListener",
        "Lcom/join/kotlin/ui/cloudarchive/IOnRunListener;",
        "getMListener",
        "()Lcom/join/kotlin/ui/cloudarchive/IOnRunListener;",
        "setMListener",
        "(Lcom/join/kotlin/ui/cloudarchive/IOnRunListener;)V",
        "trangleTop",
        "getTrangleTop",
        "setTrangleTop",
        "Lcom/join/kotlin/ui/cloudarchive/dialog/ImageShowDialog;",
        "imageDialog$delegate",
        "getImageDialog",
        "()Lcom/join/kotlin/ui/cloudarchive/dialog/ImageShowDialog;",
        "imageDialog",
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

.field public archiveDataPop:Lcom/join/mgps/dto/CloudListDataBean;

.field private archiveTag:Lcom/join/mgps/dto/ModGameArchiveTagBean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public dataBinding:Lcom/join/android/app/mgsim/wufun/databinding/ki;

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

.field private mListener:Lcom/join/kotlin/ui/cloudarchive/IOnRunListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public main:Landroid/view/View;

.field private modgameBean:Lcom/join/mgps/dto/StandaloneCloudArchive;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private modleFourBean:Lcom/join/mgps/dto/GamedetialModleFourBean;
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
    new-instance v0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment$viewModle$2;

    invoke-direct {v0, p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment$viewModle$2;-><init>(Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->viewModle$delegate:Lkotlin/Lazy;

    .line 3
    new-instance v0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment$viewModleShareViewModle$2;

    invoke-direct {v0, p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment$viewModleShareViewModle$2;-><init>(Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->viewModleShareViewModle$delegate:Lkotlin/Lazy;

    .line 4
    new-instance v0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment$adapterx$2;

    invoke-direct {v0, p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment$adapterx$2;-><init>(Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->adapterx$delegate:Lkotlin/Lazy;

    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->page:I

    const-string v1, ""

    .line 6
    iput-object v1, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->gameId:Ljava/lang/String;

    .line 7
    iput-boolean v0, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->isfirst:Z

    .line 8
    new-instance v0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment$dialog$2;

    invoke-direct {v0, p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment$dialog$2;-><init>(Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->dialog$delegate:Lkotlin/Lazy;

    .line 9
    new-instance v0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment$popWindow$2;

    invoke-direct {v0, p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment$popWindow$2;-><init>(Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->popWindow$delegate:Lkotlin/Lazy;

    .line 10
    sget-object v0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment$imageDialog$2;->INSTANCE:Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment$imageDialog$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->imageDialog$delegate:Lkotlin/Lazy;

    .line 11
    sget-object v0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment$delFragment$2;->INSTANCE:Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment$delFragment$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->delFragment$delegate:Lkotlin/Lazy;

    .line 12
    sget-object v0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment$redownFragment$2;->INSTANCE:Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment$redownFragment$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->redownFragment$delegate:Lkotlin/Lazy;

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

    iput-object v2, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->deleteCloud:Landroid/widget/TextView;

    const v2, 0x7f090cd2

    .line 6
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const-string v3, "contentView.findViewById(R.id.reDownload)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->reDownload:Landroid/widget/TextView;

    const v2, 0x7f0909eb

    .line 7
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const-string v3, "contentView.findViewById(R.id.main)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->main:Landroid/view/View;

    const v2, 0x7f09106d

    .line 8
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const-string v3, "contentView.findViewById<View>(R.id.trangleTop)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->trangleTop:Landroid/view/View;

    const v2, 0x7f09106c

    .line 9
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v2, "contentView.findViewById<View>(R.id.trangleBottom)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->trangleBottom:Landroid/view/View;

    .line 10
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->reDownload:Landroid/widget/TextView;

    if-nez v0, :cond_0

    const-string v2, "reDownload"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->deleteCloud:Landroid/widget/TextView;

    if-nez v0, :cond_1

    const-string v2, "deleteCloud"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v1
.end method

.method public final getAdapterx()Lcom/join/kotlin/ui/cloudarchive/adapter/EmusArchiveAdapter;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->adapterx$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/kotlin/ui/cloudarchive/adapter/EmusArchiveAdapter;

    return-object v0
.end method

.method public final getArchiveDataPop()Lcom/join/mgps/dto/CloudListDataBean;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->archiveDataPop:Lcom/join/mgps/dto/CloudListDataBean;

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
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->archiveTag:Lcom/join/mgps/dto/ModGameArchiveTagBean;

    return-object v0
.end method

.method public final getDataBinding()Lcom/join/android/app/mgsim/wufun/databinding/ki;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->dataBinding:Lcom/join/android/app/mgsim/wufun/databinding/ki;

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

    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->delFragment$delegate:Lkotlin/Lazy;

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
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->deleteCloud:Landroid/widget/TextView;

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

    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->dialog$delegate:Lkotlin/Lazy;

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
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->gameId:Ljava/lang/String;

    return-object v0
.end method

.method public final getImageDialog()Lcom/join/kotlin/ui/cloudarchive/dialog/ImageShowDialog;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->imageDialog$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/kotlin/ui/cloudarchive/dialog/ImageShowDialog;

    return-object v0
.end method

.method public final getIsfirst()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->isfirst:Z

    return v0
.end method

.method public final getMListener()Lcom/join/kotlin/ui/cloudarchive/IOnRunListener;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->mListener:Lcom/join/kotlin/ui/cloudarchive/IOnRunListener;

    return-object v0
.end method

.method public final getMain()Landroid/view/View;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->main:Landroid/view/View;

    if-nez v0, :cond_0

    const-string v1, "main"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getModgameBean()Lcom/join/mgps/dto/StandaloneCloudArchive;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->modgameBean:Lcom/join/mgps/dto/StandaloneCloudArchive;

    return-object v0
.end method

.method public final getModleFourBean()Lcom/join/mgps/dto/GamedetialModleFourBean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->modleFourBean:Lcom/join/mgps/dto/GamedetialModleFourBean;

    return-object v0
.end method

.method public final getPage()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->page:I

    return v0
.end method

.method public final getPopWindow()Landroid/widget/PopupWindow;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->popWindow$delegate:Lkotlin/Lazy;

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
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->reDownload:Landroid/widget/TextView;

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

    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->redownFragment$delegate:Lkotlin/Lazy;

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
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->trangleBottom:Landroid/view/View;

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
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->trangleTop:Landroid/view/View;

    if-nez v0, :cond_0

    const-string v1, "trangleTop"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getViewModle()Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudViewModle;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->viewModle$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudViewModle;

    return-object v0
.end method

.method public final getViewModleShareViewModle()Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->viewModleShareViewModle$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;

    return-object v0
.end method

.method public final initData()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/c0;->a()Lcom/join/mgps/Util/c0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/c0;->d(Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "gameId"

    const-string v2, ""

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(\"gameId\", \"\")"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->gameId:Ljava/lang/String;

    const-string v1, "modleFourBean"

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v1

    const-class v2, Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v1, v0, v2}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/GamedetialModleFourBean;

    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->modleFourBean:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->loadData()V

    .line 8
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->dataBinding:Lcom/join/android/app/mgsim/wufun/databinding/ki;

    const-string v1, "dataBinding"

    if-nez v0, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0, p0}, Landroidx/databinding/ViewDataBinding;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    .line 9
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->dataBinding:Lcom/join/android/app/mgsim/wufun/databinding/ki;

    if-nez v0, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    const/16 v2, 0x1b

    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudViewModle;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroidx/databinding/ViewDataBinding;->setVariable(ILjava/lang/Object;)Z

    .line 10
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->dataBinding:Lcom/join/android/app/mgsim/wufun/databinding/ki;

    if-nez v0, :cond_3

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    const/16 v2, 0x13

    invoke-virtual {v0, v2, p0}, Landroidx/databinding/ViewDataBinding;->setVariable(ILjava/lang/Object;)Z

    .line 11
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->dataBinding:Lcom/join/android/app/mgsim/wufun/databinding/ki;

    if-nez v0, :cond_4

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/ki;->F:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    const-string v2, "dataBinding.recycleView"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->getAdapterx()Lcom/join/kotlin/ui/cloudarchive/adapter/EmusArchiveAdapter;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 12
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->dataBinding:Lcom/join/android/app/mgsim/wufun/databinding/ki;

    if-nez v0, :cond_5

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_5
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/ki;->F:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 13
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->dataBinding:Lcom/join/android/app/mgsim/wufun/databinding/ki;

    if-nez v0, :cond_6

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_6
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/ki;->F:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    new-instance v1, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment$initData$2;

    invoke-direct {v1, p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment$initData$2;-><init>(Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;)V

    invoke-virtual {v0, v1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setLoadingListener(Lcom/join/android/app/component/xrecyclerview/XRecyclerView$f;)V

    .line 14
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudViewModle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudViewModle;->getListArchive()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    .line 15
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    .line 16
    new-instance v2, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment$initData$3;

    invoke-direct {v2, p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment$initData$3;-><init>(Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;)V

    .line 17
    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 18
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudViewModle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudViewModle;->getRequest()Lcom/join/kotlin/ui/cloudarchive/data/EmusDataRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/EmusDataRequest;->getResultData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment$initData$4;

    invoke-direct {v2, p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment$initData$4;-><init>(Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 19
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudViewModle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudViewModle;->getRequest()Lcom/join/kotlin/ui/cloudarchive/data/EmusDataRequest;

    move-result-object v0

    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->getViewModleShareViewModle()Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->getInstallInExtPlug()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/join/kotlin/ui/cloudarchive/data/EmusDataRequest;->setInstallInExtPlug(Z)V

    .line 20
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudViewModle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudViewModle;->getRequest()Lcom/join/kotlin/ui/cloudarchive/data/EmusDataRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/EmusDataRequest;->getDataChangeItem()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    .line 21
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    .line 22
    new-instance v2, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment$initData$5;

    invoke-direct {v2, p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment$initData$5;-><init>(Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;)V

    .line 23
    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 24
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

    if-eqz v0, :cond_7

    .line 25
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 26
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 27
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    const-string v1, "AccountUtil_.getInstance\u2026   activity\n            )"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->isTourist()Z

    move-result v0

    if-nez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_0

    :cond_7
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->isLogin:Z

    return-void
.end method

.method public final isLogin()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->isLogin:Z

    return v0
.end method

.method public final loadData()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->page:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudViewModle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudViewModle;->getLoadBindData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/join/kotlin/domain/common/LoadBindindData;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/join/kotlin/domain/common/LoadBindindData;-><init>(I)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudViewModle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudViewModle;->getRequest()Lcom/join/kotlin/ui/cloudarchive/data/EmusDataRequest;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "requireContext()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget v2, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->page:I

    .line 6
    iget-object v3, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->gameId:Ljava/lang/String;

    .line 7
    invoke-virtual {v0, v1, v2, v3}, Lcom/join/kotlin/ui/cloudarchive/data/EmusDataRequest;->getModeDatas(Landroid/content/Context;ILjava/lang/String;)V

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

.method public onClickDislike(Lcom/join/mgps/dto/CloudListDataBean;)V
    .locals 1
    .param p1    # Lcom/join/mgps/dto/CloudListDataBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "archive"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onClickImage(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->getImageDialog()Lcom/join/kotlin/ui/cloudarchive/dialog/ImageShowDialog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/kotlin/ui/cloudarchive/dialog/ImageShowDialog;->setImageDialogPath(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->getImageDialog()Lcom/join/kotlin/ui/cloudarchive/dialog/ImageShowDialog;

    move-result-object p1

    invoke-static {p1}, Lcom/join/kotlin/domain/ext/EXTKt;->dialogFragmentCanShow(Landroidx/fragment/app/DialogFragment;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->getImageDialog()Lcom/join/kotlin/ui/cloudarchive/dialog/ImageShowDialog;

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

.method public onClickMore(Landroid/view/View;Lcom/join/mgps/dto/CloudListDataBean;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/join/mgps/dto/CloudListDataBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "archive"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p2, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->archiveDataPop:Lcom/join/mgps/dto/CloudListDataBean;

    .line 2
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->getPopWindow()Landroid/widget/PopupWindow;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 3
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->getPopWindow()Landroid/widget/PopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->getPopWindow()Landroid/widget/PopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    return-void

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->deleteCloud:Landroid/widget/TextView;

    if-nez p1, :cond_1

    const-string p2, "deleteCloud"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    const-string p2, "\u5220\u9664"

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onClickReload()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->loadData()V

    return-void
.end method

.method public onClickRun(Lcom/join/mgps/dto/CloudListDataBean;)V
    .locals 1
    .param p1    # Lcom/join/mgps/dto/CloudListDataBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "archive"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->mListener:Lcom/join/kotlin/ui/cloudarchive/IOnRunListener;

    if-eqz p1, :cond_0

    .line 2
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p1}, Lcom/join/kotlin/ui/cloudarchive/IOnRunListener;->onRun()V

    :cond_0
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

    const p3, 0x7f0c0236

    const/4 v0, 0x0

    .line 1
    invoke-static {p1, p3, p2, v0}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    const-string p2, "DataBindingUtil.inflate(\u2026          false\n        )"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/ki;

    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->dataBinding:Lcom/join/android/app/mgsim/wufun/databinding/ki;

    .line 2
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->initData()V

    .line 3
    iget-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->dataBinding:Lcom/join/android/app/mgsim/wufun/databinding/ki;

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
    iget-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->dataBinding:Lcom/join/android/app/mgsim/wufun/databinding/ki;

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

.method public onPraise(Lcom/join/mgps/dto/CloudListDataBean;)V
    .locals 1
    .param p1    # Lcom/join/mgps/dto/CloudListDataBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "archive"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

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
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onRecivedDownLoadEVent: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->archiveTag:Lcom/join/mgps/dto/ModGameArchiveTagBean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/join/mgps/dto/ModGameArchiveTagBean;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final scrollToTop()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->dataBinding:Lcom/join/android/app/mgsim/wufun/databinding/ki;

    const-string v1, "dataBinding"

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    if-nez v0, :cond_1

    return-void

    .line 2
    :cond_1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->dataBinding:Lcom/join/android/app/mgsim/wufun/databinding/ki;

    if-nez v0, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/ki;->F:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    return-void
.end method

.method public final setArchiveDataPop(Lcom/join/mgps/dto/CloudListDataBean;)V
    .locals 1
    .param p1    # Lcom/join/mgps/dto/CloudListDataBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->archiveDataPop:Lcom/join/mgps/dto/CloudListDataBean;

    return-void
.end method

.method public final setArchiveTag(Lcom/join/mgps/dto/ModGameArchiveTagBean;)V
    .locals 0
    .param p1    # Lcom/join/mgps/dto/ModGameArchiveTagBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->archiveTag:Lcom/join/mgps/dto/ModGameArchiveTagBean;

    return-void
.end method

.method public final setDataBinding(Lcom/join/android/app/mgsim/wufun/databinding/ki;)V
    .locals 1
    .param p1    # Lcom/join/android/app/mgsim/wufun/databinding/ki;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->dataBinding:Lcom/join/android/app/mgsim/wufun/databinding/ki;

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
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->deleteCloud:Landroid/widget/TextView;

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
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->gameId:Ljava/lang/String;

    return-void
.end method

.method public final setIsfirst(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->isfirst:Z

    return-void
.end method

.method public final setLogin(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->isLogin:Z

    return-void
.end method

.method public final setMListener(Lcom/join/kotlin/ui/cloudarchive/IOnRunListener;)V
    .locals 0
    .param p1    # Lcom/join/kotlin/ui/cloudarchive/IOnRunListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->mListener:Lcom/join/kotlin/ui/cloudarchive/IOnRunListener;

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
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->main:Landroid/view/View;

    return-void
.end method

.method public final setModgameBean(Lcom/join/mgps/dto/StandaloneCloudArchive;)V
    .locals 0
    .param p1    # Lcom/join/mgps/dto/StandaloneCloudArchive;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->modgameBean:Lcom/join/mgps/dto/StandaloneCloudArchive;

    return-void
.end method

.method public final setModleFourBean(Lcom/join/mgps/dto/GamedetialModleFourBean;)V
    .locals 0
    .param p1    # Lcom/join/mgps/dto/GamedetialModleFourBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->modleFourBean:Lcom/join/mgps/dto/GamedetialModleFourBean;

    return-void
.end method

.method public final setPage(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->page:I

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
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->reDownload:Landroid/widget/TextView;

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
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->trangleBottom:Landroid/view/View;

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
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->trangleTop:Landroid/view/View;

    return-void
.end method

.method public uploadCloud()V
    .locals 0

    return-void
.end method
