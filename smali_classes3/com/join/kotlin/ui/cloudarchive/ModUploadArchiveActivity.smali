.class public final Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;
.super Lcom/BaseAppCompatActivity;
.source "ModUploadArchiveActivity.kt"

# interfaces
.implements Landroidx/databinding/adapters/TextViewBindingAdapter$OnTextChanged;
.implements Landroidx/databinding/adapters/TextViewBindingAdapter$BeforeTextChanged;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nModUploadArchiveActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ModUploadArchiveActivity.kt\ncom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,393:1\n1009#2,2:394\n*E\n*S KotlinDebug\n*F\n+ 1 ModUploadArchiveActivity.kt\ncom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity\n*L\n169#1,2:394\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0098\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\r\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004B\u0007\u00a2\u0006\u0004\u0008Z\u0010[J&\u0010\r\u001a\u00020\u000c2\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00052\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u0012\u0010\u0010\u001a\u00020\u000c2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0014J\u0012\u0010\u0013\u001a\u00020\u000c2\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0011H\u0016J\u0006\u0010\u0014\u001a\u00020\u000cJ\"\u0010\u001a\u001a\u00020\u000c2\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0017\u001a\u00020\u00152\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0018H\u0014J\u0008\u0010\u001b\u001a\u00020\u000cH\u0016J\u0008\u0010\u001c\u001a\u00020\u000cH\u0016J\u0006\u0010\u001d\u001a\u00020\u000cJ*\u0010#\u001a\u00020\u000c2\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u001e2\u0006\u0010 \u001a\u00020\u00152\u0006\u0010!\u001a\u00020\u00152\u0006\u0010\"\u001a\u00020\u0015H\u0016J*\u0010%\u001a\u00020\u000c2\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u001e2\u0006\u0010 \u001a\u00020\u00152\u0006\u0010\"\u001a\u00020\u00152\u0006\u0010$\u001a\u00020\u0015H\u0016R\u001d\u0010+\u001a\u00020&8F@\u0006X\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\'\u0010(\u001a\u0004\u0008)\u0010*R\"\u0010-\u001a\u00020,8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008-\u0010.\u001a\u0004\u0008-\u0010/\"\u0004\u00080\u00101R\u001d\u00106\u001a\u0002028F@\u0006X\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00083\u0010(\u001a\u0004\u00084\u00105R\u001d\u0010;\u001a\u0002078F@\u0006X\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00088\u0010(\u001a\u0004\u00089\u0010:R\u001d\u0010@\u001a\u00020<8F@\u0006X\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008=\u0010(\u001a\u0004\u0008>\u0010?R\"\u0010\u000b\u001a\u00020\n8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000b\u0010A\u001a\u0004\u0008B\u0010C\"\u0004\u0008D\u0010ER\u001d\u0010J\u001a\u00020F8F@\u0006X\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008G\u0010(\u001a\u0004\u0008H\u0010IR\"\u0010\t\u001a\u00020\u00088\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\t\u0010K\u001a\u0004\u0008L\u0010M\"\u0004\u0008N\u0010OR\u001d\u0010T\u001a\u00020P8F@\u0006X\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008Q\u0010(\u001a\u0004\u0008R\u0010SR\u001d\u0010Y\u001a\u00020U8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008V\u0010(\u001a\u0004\u0008W\u0010X\u00a8\u0006\\"
    }
    d2 = {
        "Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;",
        "Lcom/BaseAppCompatActivity;",
        "Landroidx/databinding/adapters/TextViewBindingAdapter$OnTextChanged;",
        "Landroidx/databinding/adapters/TextViewBindingAdapter$BeforeTextChanged;",
        "Landroid/view/View$OnClickListener;",
        "",
        "Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;",
        "datas",
        "",
        "imagePath",
        "",
        "runIngArchiveId",
        "",
        "initData",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "Landroid/view/View;",
        "v",
        "onClick",
        "goMyAlbumActivity4PickPic",
        "",
        "requestCode",
        "resultCode",
        "Landroid/content/Intent;",
        "data",
        "onActivityResult",
        "onBackPressed",
        "finish",
        "backModGame",
        "",
        "s",
        "start",
        "before",
        "count",
        "onTextChanged",
        "after",
        "beforeTextChanged",
        "Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;",
        "viewModleLoadData$delegate",
        "Lkotlin/Lazy;",
        "getViewModleLoadData",
        "()Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;",
        "viewModleLoadData",
        "",
        "isFromGame",
        "Z",
        "()Z",
        "setFromGame",
        "(Z)V",
        "Lcom/join/android/app/mgsim/wufun/databinding/n30;",
        "databinDing$delegate",
        "getDatabinDing",
        "()Lcom/join/android/app/mgsim/wufun/databinding/n30;",
        "databinDing",
        "Lcom/join/kotlin/ui/cloudarchive/dialog/NoticeWhiteDialog;",
        "noticeDialog$delegate",
        "getNoticeDialog",
        "()Lcom/join/kotlin/ui/cloudarchive/dialog/NoticeWhiteDialog;",
        "noticeDialog",
        "Lcom/join/mgps/dialog/y0;",
        "dialog$delegate",
        "getDialog",
        "()Lcom/join/mgps/dialog/y0;",
        "dialog",
        "J",
        "getRunIngArchiveId",
        "()J",
        "setRunIngArchiveId",
        "(J)V",
        "Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;",
        "viewModle$delegate",
        "getViewModle",
        "()Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;",
        "viewModle",
        "Ljava/lang/String;",
        "getImagePath",
        "()Ljava/lang/String;",
        "setImagePath",
        "(Ljava/lang/String;)V",
        "Lcom/join/mgps/dialog/x0;",
        "dialogLoding$delegate",
        "getDialogLoding",
        "()Lcom/join/mgps/dialog/x0;",
        "dialogLoding",
        "Lcom/join/kotlin/ui/cloudarchive/dialog/ChoiceArchiveDialog;",
        "dialogChoice$delegate",
        "getDialogChoice",
        "()Lcom/join/kotlin/ui/cloudarchive/dialog/ChoiceArchiveDialog;",
        "dialogChoice",
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
.field private final databinDing$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final dialog$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final dialogChoice$delegate:Lkotlin/Lazy;

.field private final dialogLoding$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private imagePath:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private isFromGame:Z

.field private final noticeDialog$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private runIngArchiveId:J

.field private final viewModle$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final viewModleLoadData$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/BaseAppCompatActivity;-><init>()V

    .line 2
    new-instance v0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity$viewModle$2;

    invoke-direct {v0, p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity$viewModle$2;-><init>(Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->viewModle$delegate:Lkotlin/Lazy;

    .line 3
    new-instance v0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity$databinDing$2;

    invoke-direct {v0, p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity$databinDing$2;-><init>(Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->databinDing$delegate:Lkotlin/Lazy;

    .line 4
    new-instance v0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity$dialog$2;

    invoke-direct {v0, p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity$dialog$2;-><init>(Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->dialog$delegate:Lkotlin/Lazy;

    .line 5
    new-instance v0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity$viewModleLoadData$2;

    invoke-direct {v0, p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity$viewModleLoadData$2;-><init>(Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->viewModleLoadData$delegate:Lkotlin/Lazy;

    .line 6
    new-instance v0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity$dialogLoding$2;

    invoke-direct {v0, p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity$dialogLoding$2;-><init>(Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->dialogLoding$delegate:Lkotlin/Lazy;

    const-string v0, ""

    .line 7
    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->imagePath:Ljava/lang/String;

    .line 8
    sget-object v0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity$dialogChoice$2;->INSTANCE:Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity$dialogChoice$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->dialogChoice$delegate:Lkotlin/Lazy;

    .line 9
    sget-object v0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity$noticeDialog$2;->INSTANCE:Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity$noticeDialog$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->noticeDialog$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$initData(Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;Ljava/util/List;Ljava/lang/String;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->initData(Ljava/util/List;Ljava/lang/String;J)V

    return-void
.end method

.method private final getDialogChoice()Lcom/join/kotlin/ui/cloudarchive/dialog/ChoiceArchiveDialog;
    .locals 1

    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->dialogChoice$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/kotlin/ui/cloudarchive/dialog/ChoiceArchiveDialog;

    return-object v0
.end method

.method private final initData(Ljava/util/List;Ljava/lang/String;J)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;",
            ">;",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    .line 1
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-nez v2, :cond_2

    .line 2
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;->getImagepath()Landroidx/lifecycle/MutableLiveData;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :cond_2
    const-wide/16 v2, 0x0

    cmp-long p2, p3, v2

    if-eqz p2, :cond_3

    .line 3
    invoke-static {}, Ln1/g;->t()Ln1/g;

    move-result-object p2

    .line 4
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ln1/g;->p(Ljava/lang/String;)Lcom/join/mgps/db/tables/CloudArchiveTable;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 5
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object p3

    .line 6
    invoke-virtual {p2}, Lcom/join/mgps/db/tables/CloudArchiveTable;->getArchiveDataJson()Ljava/lang/String;

    move-result-object p2

    const-class p4, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    invoke-virtual {p3, p2, p4}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    .line 7
    check-cast p2, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    if-eqz p2, :cond_3

    .line 8
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;

    move-result-object p3

    invoke-virtual {p3}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;->getNoticeWarnings()Landroidx/lifecycle/MutableLiveData;

    move-result-object p3

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6700\u8fd1\u8fd0\u884c\u7684\u662f\u201c"

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getNickname()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\u201d\u7684\u5b58\u6863"

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 9
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-le p2, v1, :cond_4

    new-instance p2, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity$initData$$inlined$sortByDescending$1;

    invoke-direct {p2}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity$initData$$inlined$sortByDescending$1;-><init>()V

    invoke-static {p1, p2}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    .line 10
    :cond_4
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    xor-int/2addr p2, v1

    if-eqz p2, :cond_c

    .line 11
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;

    move-result-object p2

    invoke-virtual {p2}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;->getArchiveDatas()Landroidx/lifecycle/MutableLiveData;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 12
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;

    move-result-object p2

    invoke-virtual {p2}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;->getArchive()Landroidx/lifecycle/MutableLiveData;

    move-result-object p2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 13
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    invoke-virtual {p2}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getCoverLocation()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 14
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;

    move-result-object p2

    invoke-virtual {p2}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;->getImagepath()Landroidx/lifecycle/MutableLiveData;

    move-result-object p2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    invoke-virtual {p3}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getCoverLocation()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 15
    :cond_5
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;

    move-result-object p2

    invoke-virtual {p2}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;->getArchive()Landroidx/lifecycle/MutableLiveData;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string p3, "viewModle.archive.value!!"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    invoke-virtual {p2}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getId()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_6

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-nez p2, :cond_7

    :cond_6
    const/4 v0, 0x1

    :cond_7
    const-string p2, "0"

    if-nez v0, :cond_9

    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;

    move-result-object p4

    invoke-virtual {p4}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;->getArchive()Landroidx/lifecycle/MutableLiveData;

    move-result-object p4

    invoke-virtual {p4}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p4

    invoke-static {p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p4, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p4, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    invoke-virtual {p4}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getId()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_8

    goto :goto_2

    :cond_8
    const-string p4, "\u53d1\u5e03"

    goto :goto_3

    :cond_9
    :goto_2
    const-string p4, "\u73a9\u8fc7"

    .line 16
    :goto_3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 17
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getAddTime()J

    move-result-wide v4

    const/16 v6, 0x3e8

    int-to-long v6, v6

    mul-long v4, v4, v6

    invoke-static {v4, v5}, Lcom/join/mgps/Util/x;->p(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setPlayTime(Ljava/lang/String;)V

    goto :goto_4

    .line 18
    :cond_a
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;

    move-result-object p4

    invoke-virtual {p4}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;->getArchive()Landroidx/lifecycle/MutableLiveData;

    move-result-object p4

    invoke-virtual {p4}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p4

    invoke-static {p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p4, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p4, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    invoke-virtual {p4}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getArchiveDesc()Ljava/lang/String;

    move-result-object p4

    .line 19
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;->getArchive()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getId()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    xor-int/2addr p2, v1

    if-eqz p2, :cond_b

    .line 20
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->getDatabinDing()Lcom/join/android/app/mgsim/wufun/databinding/n30;

    move-result-object p2

    iget-object p2, p2, Lcom/join/android/app/mgsim/wufun/databinding/n30;->I:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {p2, p4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 21
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;

    move-result-object p2

    invoke-virtual {p2}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;->getMessage()Landroidx/lifecycle/MutableLiveData;

    move-result-object p2

    invoke-virtual {p2, p4}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 22
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->getDatabinDing()Lcom/join/android/app/mgsim/wufun/databinding/n30;

    move-result-object p2

    iget-object p2, p2, Lcom/join/android/app/mgsim/wufun/databinding/n30;->I:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setSelection(I)V

    .line 23
    :cond_b
    invoke-interface {p1}, Ljava/util/List;->size()I

    goto :goto_5

    :cond_c
    const-string p1, "\u672c\u5730\u9ed8\u8ba4\u5b58\u6863\u4e3a\u7a7a\uff0c\u65e0\u6cd5\u5206\u4eab"

    .line 24
    invoke-static {p0, p1}, Lcom/psk/kotlin/ext/CommonExtKt;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 25
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->finish()V

    :goto_5
    return-void
.end method


# virtual methods
.method public final backModGame()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->getViewModleLoadData()Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->getModGameArchivePathData()Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;->getModPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 2
    :goto_0
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;->getArchive()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getUserId()I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 3
    :goto_1
    sget-object v2, Lcom/join/mgps/va/overmind/e;->n:Lcom/join/mgps/va/overmind/e$a;

    invoke-virtual {v2}, Lcom/join/mgps/va/overmind/e$a;->b()Lcom/join/mgps/va/overmind/e;

    move-result-object v2

    invoke-virtual {v2, p0, v1, v0}, Lcom/join/mgps/va/overmind/e;->S(Landroid/content/Context;ILjava/lang/String;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public finish()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->isFromGame:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->backModGame()V

    .line 3
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final getDatabinDing()Lcom/join/android/app/mgsim/wufun/databinding/n30;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->databinDing$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/android/app/mgsim/wufun/databinding/n30;

    return-object v0
.end method

.method public final getDialog()Lcom/join/mgps/dialog/y0;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->dialog$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dialog/y0;

    return-object v0
.end method

.method public final getDialogLoding()Lcom/join/mgps/dialog/x0;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->dialogLoding$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dialog/x0;

    return-object v0
.end method

.method public final getImagePath()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->imagePath:Ljava/lang/String;

    return-object v0
.end method

.method public final getNoticeDialog()Lcom/join/kotlin/ui/cloudarchive/dialog/NoticeWhiteDialog;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->noticeDialog$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/kotlin/ui/cloudarchive/dialog/NoticeWhiteDialog;

    return-object v0
.end method

.method public final getRunIngArchiveId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->runIngArchiveId:J

    return-wide v0
.end method

.method public final getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->viewModle$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;

    return-object v0
.end method

.method public final getViewModleLoadData()Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->viewModleLoadData$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;

    return-object v0
.end method

.method public final goMyAlbumActivity4PickPic()V
    .locals 4

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 1
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 2
    invoke-static {p0, v0}, Lcom/join/mgps/Util/UtilsMy;->c2(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    .line 3
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    invoke-static {p0, v0}, Lcom/join/mgps/Util/UtilsMy;->c2(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    :goto_0
    if-eqz v2, :cond_2

    .line 5
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/join/android/app/component/album/MyAlbumActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "MAX_PICK_SIZE"

    .line 6
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v1, 0x100

    .line 7
    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_2
    return-void
.end method

.method public final isFromGame()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->isFromGame:Z

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p3    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p2, 0x100

    if-ne p1, p2, :cond_2

    const/4 p1, 0x0

    if-eqz p3, :cond_0

    .line 2
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, p1

    :goto_0
    if-eqz p2, :cond_2

    const-string p3, "key_selected_images"

    .line 3
    invoke-virtual {p2, p3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 4
    move-object p3, p2

    check-cast p3, Ljava/util/List;

    .line 5
    check-cast p2, Ljava/util/Collection;

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_2

    const/4 p2, 0x0

    .line 6
    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    const/4 v0, 0x2

    const-string v1, "content://"

    .line 7
    invoke-static {p3, v1, p2, v0, p1}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 8
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;->getImagepath()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    goto :goto_1

    .line 9
    :cond_1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;->getImagepath()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "file://"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->getDatabinDing()Lcom/join/android/app/mgsim/wufun/databinding/n30;

    move-result-object v0

    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/n30;->I:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-static {v0}, Ly1/a;->b(Landroid/view/View;)V

    .line 2
    invoke-super {p0}, Lcom/BaseAppCompatActivity;->onBackPressed()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 11
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    const v1, 0x7f09010c

    const-string v2, "supportFragmentManager"

    const/4 v3, 0x1

    if-nez p1, :cond_1

    goto/16 :goto_1

    .line 2
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v1, :cond_2

    .line 3
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;->getArchiveDatas()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v3, :cond_1a

    .line 4
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->getDatabinDing()Lcom/join/android/app/mgsim/wufun/databinding/n30;

    move-result-object p1

    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/n30;->I:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-static {p1}, Ly1/a;->b(Landroid/view/View;)V

    .line 5
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 6
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;->getArchive()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/Serializable;

    const-string v1, "archive"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 7
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;->getArchiveDatas()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type java.io.Serializable"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Ljava/io/Serializable;

    const-string v1, "archiveList"

    .line 8
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 9
    invoke-direct {p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->getDialogChoice()Lcom/join/kotlin/ui/cloudarchive/dialog/ChoiceArchiveDialog;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 10
    invoke-direct {p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->getDialogChoice()Lcom/join/kotlin/ui/cloudarchive/dialog/ChoiceArchiveDialog;

    move-result-object p1

    new-instance v0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity$onClick$1;

    invoke-direct {v0, p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity$onClick$1;-><init>(Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;)V

    invoke-virtual {p1, v0}, Lcom/join/kotlin/ui/cloudarchive/dialog/ChoiceArchiveDialog;->setItemChoiced(Lkotlin/jvm/functions/Function1;)V

    .line 11
    invoke-direct {p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->getDialogChoice()Lcom/join/kotlin/ui/cloudarchive/dialog/ChoiceArchiveDialog;

    move-result-object p1

    invoke-static {p1}, Lcom/join/kotlin/domain/ext/EXTKt;->dialogFragmentCanShow(Landroidx/fragment/app/DialogFragment;)Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 12
    invoke-direct {p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->getDialogChoice()Lcom/join/kotlin/ui/cloudarchive/dialog/ChoiceArchiveDialog;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "dialogChoice"

    invoke-virtual {p1, v0, v1}, Lcom/join/kotlin/ui/cloudarchive/dialog/ChoiceArchiveDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_c

    :cond_2
    :goto_1
    const v1, 0x7f09012c

    if-nez p1, :cond_3

    goto :goto_2

    .line 13
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v1, :cond_4

    .line 14
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->getDatabinDing()Lcom/join/android/app/mgsim/wufun/databinding/n30;

    move-result-object p1

    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/n30;->I:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-static {p1}, Ly1/a;->b(Landroid/view/View;)V

    .line 15
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->finish()V

    goto/16 :goto_c

    :cond_4
    :goto_2
    const v1, 0x7f090264

    if-nez p1, :cond_5

    goto :goto_3

    .line 16
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v1, :cond_6

    .line 17
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->getDatabinDing()Lcom/join/android/app/mgsim/wufun/databinding/n30;

    move-result-object p1

    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/n30;->I:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-static {p1}, Ly1/a;->b(Landroid/view/View;)V

    .line 18
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->goMyAlbumActivity4PickPic()V

    goto/16 :goto_c

    :cond_6
    :goto_3
    const v1, 0x7f09027d

    if-nez p1, :cond_7

    goto :goto_4

    .line 19
    :cond_7
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v1, :cond_8

    .line 20
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;->getImagepath()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    goto/16 :goto_c

    :cond_8
    :goto_4
    const v1, 0x7f090db0

    if-nez p1, :cond_9

    goto/16 :goto_c

    .line 21
    :cond_9
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v1, :cond_1a

    .line 22
    iget-boolean p1, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->isFromGame:Z

    if-eqz p1, :cond_a

    const-string p1, "2"

    goto :goto_5

    :cond_a
    const-string p1, "1"

    .line 23
    :goto_5
    invoke-static {p0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v1

    .line 24
    sget-object v4, Lcom/papa/sim/statistic/Event;->clickUpCloudButton:Lcom/papa/sim/statistic/Event;

    .line 25
    new-instance v5, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v5}, Lcom/papa/sim/statistic/Ext;-><init>()V

    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;

    move-result-object v6

    invoke-virtual {v6}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;->getArchive()Landroidx/lifecycle/MutableLiveData;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    if-eqz v6, :cond_b

    invoke-virtual {v6}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getGame_id()Ljava/lang/String;

    move-result-object v6

    goto :goto_6

    :cond_b
    move-object v6, v0

    :goto_6
    invoke-virtual {v5, v6}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object p1

    .line 26
    invoke-virtual {v1, v4, p1}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 27
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;->getMessage()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    .line 28
    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_19

    .line 29
    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v4, "message.value!!"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v5, 0x0

    if-nez v1, :cond_c

    const/4 v1, 0x1

    goto :goto_7

    :cond_c
    const/4 v1, 0x0

    :goto_7
    if-nez v1, :cond_19

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/String;

    const-string v4, "null cannot be cast to non-null type kotlin.CharSequence"

    invoke-static {v1, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {v1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 30
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_d

    const/4 v1, 0x1

    goto :goto_8

    :cond_d
    const/4 v1, 0x0

    :goto_8
    if-eqz v1, :cond_e

    goto/16 :goto_b

    .line 31
    :cond_e
    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v4, 0x5

    if-ge v1, v4, :cond_f

    .line 32
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    const-string v0, "\u5b58\u6863\u63cf\u8ff0\u4e0d\u80fd\u5c11\u4e8e5\u4e2a\u5b57"

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void

    .line 33
    :cond_f
    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/join/mgps/Util/n;->f(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 34
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    const-string v0, "\u6682\u4e0d\u652f\u6301\u8f93\u5165\u8868\u60c5\uff01\u8bf7\u53bb\u6389\u8868\u60c5\u5b57\u7b26\uff01"

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void

    .line 35
    :cond_10
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/join/mgps/Util/IntentUtil;->goLogin(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_11

    const-string p1, "\u60a8\u8fd8\u672a\u767b\u5f55\u8bf7\u5148\u767b\u5f55\u5e10\u53f7\uff01"

    .line 36
    invoke-static {p0, p1}, Lcom/psk/kotlin/ext/CommonExtKt;->toast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 37
    :cond_11
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;->getImagepath()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_13

    .line 38
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->getNoticeDialog()Lcom/join/kotlin/ui/cloudarchive/dialog/NoticeWhiteDialog;

    move-result-object p1

    .line 39
    new-instance v0, Lcom/join/kotlin/ui/cloudarchive/dialog/DialogData;

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/16 v9, 0x8

    const/4 v10, 0x0

    const-string v4, "\u63d0\u793a"

    const-string v5, "\u60a8\u8fd8\u672a\u6dfb\u52a0\u5b58\u6863\u5c01\u9762"

    const-string v6, "\u53bb\u76f8\u518c\u9009\u62e9\u56fe\u7247"

    move-object v3, v0

    invoke-direct/range {v3 .. v10}, Lcom/join/kotlin/ui/cloudarchive/dialog/DialogData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 40
    invoke-virtual {p1, v0}, Lcom/join/kotlin/ui/cloudarchive/dialog/NoticeWhiteDialog;->setDatas(Lcom/join/kotlin/ui/cloudarchive/dialog/DialogData;)V

    .line 41
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->getNoticeDialog()Lcom/join/kotlin/ui/cloudarchive/dialog/NoticeWhiteDialog;

    move-result-object p1

    new-instance v0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity$onClick$2;

    invoke-direct {v0, p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity$onClick$2;-><init>(Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;)V

    invoke-virtual {p1, v0}, Lcom/join/kotlin/ui/cloudarchive/dialog/NoticeWhiteDialog;->setClickDelDialogListener(Lcom/join/kotlin/ui/cloudarchive/dialog/ClickDelDialogListener;)V

    .line 42
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->getNoticeDialog()Lcom/join/kotlin/ui/cloudarchive/dialog/NoticeWhiteDialog;

    move-result-object p1

    invoke-static {p1}, Lcom/join/kotlin/domain/ext/EXTKt;->dialogFragmentCanShow(Landroidx/fragment/app/DialogFragment;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 43
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->getNoticeDialog()Lcom/join/kotlin/ui/cloudarchive/dialog/NoticeWhiteDialog;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "noticeDialog"

    invoke-virtual {p1, v0, v1}, Lcom/join/kotlin/ui/cloudarchive/dialog/NoticeWhiteDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 44
    :cond_12
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->getDatabinDing()Lcom/join/android/app/mgsim/wufun/databinding/n30;

    move-result-object p1

    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/n30;->I:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-static {p1}, Ly1/a;->b(Landroid/view/View;)V

    return-void

    .line 45
    :cond_13
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->getDialog()Lcom/join/mgps/dialog/y0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/dialog/y0;->c()V

    .line 46
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->getDialog()Lcom/join/mgps/dialog/y0;

    move-result-object p1

    const-string v1, "\u6253\u5305\u5b58\u6863\u4e2d\u8bf7\u7a0d\u5019"

    invoke-virtual {p1, v1}, Lcom/join/mgps/dialog/y0;->b(Ljava/lang/String;)Landroid/app/Dialog;

    .line 47
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->getDatabinDing()Lcom/join/android/app/mgsim/wufun/databinding/n30;

    move-result-object p1

    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/n30;->I:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-static {p1}, Ly1/a;->b(Landroid/view/View;)V

    .line 48
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;->getArchive()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    if-eqz p1, :cond_14

    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getId()Ljava/lang/String;

    move-result-object v0

    :cond_14
    if-eqz v0, :cond_16

    .line 49
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_15

    goto :goto_9

    :cond_15
    const/4 v3, 0x0

    :cond_16
    :goto_9
    if-nez v3, :cond_18

    const-string p1, "0"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_17

    goto :goto_a

    .line 50
    :cond_17
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;->updateArchiveMessage(Landroid/content/Context;)V

    goto :goto_c

    .line 51
    :cond_18
    :goto_a
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;->uploadArchive(Landroid/content/Context;)V

    goto :goto_c

    .line 52
    :cond_19
    :goto_b
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    const-string v0, "\u8bf7\u8f93\u5165\u5b58\u6863\u63cf\u8ff0"

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    :cond_1a
    :goto_c
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/BaseAppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/BaseAppCompatActivity;->canShowFeedBack:Z

    .line 3
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->getDatabinDing()Lcom/join/android/app/mgsim/wufun/databinding/n30;

    move-result-object v0

    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/android/app/mgsim/wufun/databinding/n30;->m1(Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;)V

    .line 4
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->getDatabinDing()Lcom/join/android/app/mgsim/wufun/databinding/n30;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/android/app/mgsim/wufun/databinding/n30;->j1(Landroidx/databinding/adapters/TextViewBindingAdapter$OnTextChanged;)V

    .line 5
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->getDatabinDing()Lcom/join/android/app/mgsim/wufun/databinding/n30;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/android/app/mgsim/wufun/databinding/n30;->l1(Landroid/view/View$OnClickListener;)V

    .line 6
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->getDatabinDing()Lcom/join/android/app/mgsim/wufun/databinding/n30;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/databinding/ViewDataBinding;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    .line 7
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->getDatabinDing()Lcom/join/android/app/mgsim/wufun/databinding/n30;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/android/app/mgsim/wufun/databinding/n30;->k1(Landroidx/databinding/adapters/TextViewBindingAdapter$BeforeTextChanged;)V

    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "archives"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    const-wide/16 v2, 0x0

    const-string v4, "runIngArchiveId"

    const-string v5, ""

    const-string v6, "imagePath"

    if-eqz v0, :cond_1

    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 10
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;->getArchiveFileSuffix()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    const-string v7, "archiveFileSuffix"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 11
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.collections.MutableList<com.join.kotlin.ui.cloudarchive.data.ArchiveData>"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 12
    invoke-virtual {p1, v4, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 13
    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    move-object v5, p1

    .line 14
    :cond_0
    invoke-direct {p0, v0, v5, v1, v2}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->initData(Ljava/util/List;Ljava/lang/String;J)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->isFromGame:Z

    .line 16
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->getDialogLoding()Lcom/join/mgps/dialog/x0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dialog/x0;->b()V

    .line 17
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v7, "uploadGameId"

    .line 18
    invoke-virtual {v1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 19
    invoke-virtual {v1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    move-object v5, v6

    :cond_2
    iput-object v5, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->imagePath:Ljava/lang/String;

    .line 20
    invoke-virtual {v1, v4, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->runIngArchiveId:J

    if-eqz v7, :cond_3

    .line 21
    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    const/4 p1, 0x1

    :cond_4
    if-eqz p1, :cond_5

    .line 22
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->finish()V

    .line 23
    :cond_5
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->getViewModleLoadData()Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;

    move-result-object p1

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, v7, p0}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->getDetialData(Ljava/lang/String;Landroid/content/Context;)V

    .line 24
    :goto_0
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;->getResponseReult()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    new-instance v0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity$onCreate$3;

    invoke-direct {v0, p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity$onCreate$3;-><init>(Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 25
    new-instance p1, Ljava/util/Timer;

    invoke-direct {p1}, Ljava/util/Timer;-><init>()V

    const-wide/16 v0, 0x1f4

    new-instance v2, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity$onCreate$$inlined$schedule$1;

    invoke-direct {v2, p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity$onCreate$$inlined$schedule$1;-><init>(Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;)V

    invoke-virtual {p1, v2, v0, v1}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 26
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;->getUploadProgress()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    new-instance v0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity$onCreate$5;

    invoke-direct {v0, p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity$onCreate$5;-><init>(Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 27
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->getViewModleLoadData()Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->getLocalArchiveLists()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    new-instance v0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity$onCreate$6;

    invoke-direct {v0, p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity$onCreate$6;-><init>(Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 28
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->getViewModleLoadData()Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->getShowDialog()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    new-instance v0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity$onCreate$7;

    invoke-direct {v0, p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity$onCreate$7;-><init>(Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;

    move-result-object p2

    invoke-virtual {p2}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;->getMessage()Landroidx/lifecycle/MutableLiveData;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    const/16 p3, 0x3c

    if-le p2, p3, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->getDatabinDing()Lcom/join/android/app/mgsim/wufun/databinding/n30;

    move-result-object p2

    iget-object p2, p2, Lcom/join/android/app/mgsim/wufun/databinding/n30;->I:Lcom/google/android/material/textfield/TextInputEditText;

    const-string p4, "databinDing.message"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "\u8fbe\u5230\u9650\u5236\u5b57\u6570\uff0c\u65e0\u6cd5\u7ee7\u7eed\u8f93\u5165"

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 4
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->getDatabinDing()Lcom/join/android/app/mgsim/wufun/databinding/n30;

    move-result-object p2

    iget-object p2, p2, Lcom/join/android/app/mgsim/wufun/databinding/n30;->I:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p3}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 5
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->getDatabinDing()Lcom/join/android/app/mgsim/wufun/databinding/n30;

    move-result-object p1

    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/n30;->I:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->getDatabinDing()Lcom/join/android/app/mgsim/wufun/databinding/n30;

    move-result-object p2

    iget-object p2, p2, Lcom/join/android/app/mgsim/wufun/databinding/n30;->I:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p2}, Landroid/text/Editable;->length()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 6
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    :cond_1
    :goto_0
    return-void
.end method

.method public final setFromGame(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->isFromGame:Z

    return-void
.end method

.method public final setImagePath(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->imagePath:Ljava/lang/String;

    return-void
.end method

.method public final setRunIngArchiveId(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->runIngArchiveId:J

    return-void
.end method
