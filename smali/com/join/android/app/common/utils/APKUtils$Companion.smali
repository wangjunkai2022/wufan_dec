.class public final Lcom/join/android/app/common/utils/APKUtils$Companion;
.super Ljava/lang/Object;
.source "APKUtils.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/android/app/common/utils/APKUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAPKUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 APKUtils.kt\ncom/join/android/app/common/utils/APKUtils$Companion\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,1617:1\n37#2,2:1618\n*E\n*S KotlinDebug\n*F\n+ 1 APKUtils.kt\ncom/join/android/app/common/utils/APKUtils$Companion\n*L\n1340#1,2:1618\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000`\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0015\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008B\u0010CJ \u0010\t\u001a\u00020\u00082\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u001c\u0010\n\u001a\u00020\u00082\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0003J\u0018\u0010\r\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u000c\u001a\u00020\u000bJ\u0018\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u000c\u001a\u00020\u000bH\u0007J&\u0010\u0013\u001a\u00020\u00082\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0011\u001a\u00020\u00102\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u000bH\u0007J0\u0010\u0016\u001a\u00020\u00082\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0014\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u000b2\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u000bH\u0007J\u0018\u0010\u0017\u001a\u00020\u00082\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0007J\u0018\u0010\u0018\u001a\u00020\u00082\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0007J0\u0010\u001d\u001a\u00020\u00082\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u001b\u001a\u00020\u000b2\u0006\u0010\u001c\u001a\u00020\u000b2\u0006\u0010\u0005\u001a\u00020\u0004H\u0007J.\u0010\u001e\u001a\u00020\u00082\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u001b\u001a\u00020\u000b2\u0006\u0010\u001c\u001a\u00020\u000bJ\u001c\u0010 \u001a\u00020\u00082\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u0004H\u0007J$\u0010\"\u001a\u00020\u00082\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u00042\u0006\u0010!\u001a\u00020\u000eH\u0007J\u0012\u0010#\u001a\u00020\u000e2\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u0004H\u0007J\u0012\u0010$\u001a\u00020\u000e2\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u0004H\u0007J\u0012\u0010%\u001a\u00020\u000e2\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u0004H\u0007J\u0012\u0010&\u001a\u00020\u000e2\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u0004H\u0007J\u0012\u0010\'\u001a\u00020\u000e2\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u0004H\u0007J\u001a\u0010)\u001a\u00020\u000e2\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u00042\u0006\u0010(\u001a\u00020\u000bH\u0007J\u0012\u0010+\u001a\u00020\u000e2\u0008\u0010*\u001a\u0004\u0018\u00010\u000bH\u0007J\u001a\u0010,\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u000c\u001a\u00020\u000bH\u0007J\u0018\u0010-\u001a\u00020\u000e2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u000c\u001a\u00020\u000bH\u0007J\u0012\u0010.\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u0003\u001a\u00020\u0002H\u0007J\u001c\u00101\u001a\u00020\u00082\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u00042\u0008\u0008\u0002\u00100\u001a\u00020/H\u0007J\u0012\u00102\u001a\u00020\u00082\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u0004H\u0007J\u001c\u00103\u001a\u00020\u000e2\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u0004H\u0007J\u001c\u00106\u001a\u00020\u000e2\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0008\u00105\u001a\u0004\u0018\u000104H\u0007J \u00109\u001a\u00020\u000e2\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u000c\u00108\u001a\u0008\u0012\u0004\u0012\u00020\u000807H\u0007J&\u0010<\u001a\u00020\u00082\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010;\u001a\u00020:2\u000c\u00108\u001a\u0008\u0012\u0004\u0012\u00020\u000807J\u001c\u0010=\u001a\u00020\u000e2\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0008\u0010;\u001a\u0004\u0018\u00010:H\u0007J\u0010\u0010>\u001a\u00020\u00082\u0006\u0010\u0003\u001a\u00020\u0002H\u0007J\u0018\u0010?\u001a\u00020\u00082\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u001f\u001a\u00020\u0004H\u0007R\u0016\u0010@\u001a\u00020\u000b8\u0006@\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008@\u0010A\u00a8\u0006D"
    }
    d2 = {
        "Lcom/join/android/app/common/utils/APKUtils$Companion;",
        "",
        "Landroid/content/Context;",
        "context",
        "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
        "downloadTask",
        "Lcom/join/mgps/mod/bean/ModMeta;",
        "modMeta",
        "",
        "J",
        "K",
        "",
        "packageName",
        "k",
        "",
        "H",
        "Lcom/join/mgps/dto/ModInfoBean;",
        "bean",
        "from",
        "B",
        "gameId",
        "modGameId",
        "E",
        "I",
        "z",
        "Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;",
        "archiveData",
        "fingerSwitch",
        "introdSwitch",
        "x",
        "y",
        "task",
        "n",
        "isLocal",
        "o",
        "r",
        "v",
        "s",
        "u",
        "q",
        "type",
        "M",
        "pkgName",
        "N",
        "j",
        "p",
        "t",
        "",
        "delay",
        "h",
        "f",
        "c",
        "Lcom/join/mgps/dto/CommonGameInfoBean;",
        "infoBean",
        "d",
        "Lkotlin/Function0;",
        "callback",
        "e",
        "Lcom/join/mgps/db/tables/EMUApkTable;",
        "emuApkTable",
        "L",
        "w",
        "m",
        "l",
        "TAG",
        "Ljava/lang/String;",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/join/android/app/common/utils/APKUtils$Companion;-><init>()V

    return-void
.end method

.method public static synthetic F(Lcom/join/android/app/common/utils/APKUtils$Companion;Landroid/content/Context;Lcom/join/mgps/dto/ModInfoBean;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const-string p3, ""

    .line 1
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/join/android/app/common/utils/APKUtils$Companion;->B(Landroid/content/Context;Lcom/join/mgps/dto/ModInfoBean;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic G(Lcom/join/android/app/common/utils/APKUtils$Companion;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p6, p5, 0x4

    const-string v0, ""

    if-eqz p6, :cond_0

    move-object p3, v0

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    move-object p4, v0

    .line 1
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/join/android/app/common/utils/APKUtils$Companion;->E(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final J(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/mod/bean/ModMeta;)V
    .locals 7

    .line 1
    :try_start_0
    sget-object v0, Lcom/join/mgps/va/overmind/e;->n:Lcom/join/mgps/va/overmind/e$a;

    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "downloadTask.packageName"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getResource_path()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/va/overmind/e$a;->h(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3
    :goto_0
    sget-object v0, Lcom/join/mgps/va/overmind/e;->n:Lcom/join/mgps/va/overmind/e$a;

    invoke-virtual {v0}, Lcom/join/mgps/va/overmind/e$a;->b()Lcom/join/mgps/va/overmind/e;

    move-result-object v0

    invoke-virtual {v0, p1, p3, p2}, Lcom/join/mgps/va/overmind/e;->U(Landroid/content/Context;Lcom/join/mgps/mod/bean/ModMeta;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    const/4 p3, 0x0

    .line 4
    invoke-virtual {p0, p2}, Lcom/join/android/app/common/utils/APKUtils$Companion;->r(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p3, 0x1

    const/4 v3, 0x1

    goto :goto_1

    .line 5
    :cond_0
    invoke-virtual {p0, p2}, Lcom/join/android/app/common/utils/APKUtils$Companion;->v(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p3, 0x2

    const/4 v3, 0x2

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 6
    :goto_1
    invoke-static {p1}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    .line 7
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-static {p1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object p3

    const-string v2, "AccountUtil_.getInstance_(context)"

    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v2

    .line 9
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->get_from()I

    move-result v4

    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->get_from_type()I

    move-result v5

    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getExt()Ljava/lang/String;

    move-result-object v6

    .line 10
    invoke-virtual/range {v0 .. v6}, Lcom/papa/sim/statistic/p;->d1(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V

    .line 11
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/join/mgps/Util/UtilsMy;->y3(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private final K(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-eqz p2, :cond_5

    if-nez p1, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v0, 0x5

    .line 1
    invoke-virtual {p2, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 2
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    if-eqz v1, :cond_2

    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/join/mgps/enums/Dtype;->chajian:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    .line 3
    invoke-static {}, Ln1/k;->n()Ln1/k;

    move-result-object v1

    .line 4
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-virtual {v1, v3}, Ln1/k;->p(Ljava/lang/String;)Lcom/join/mgps/db/tables/DownloadHistoryTable;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lcom/join/mgps/db/tables/DownloadHistoryTable;->setCreate_time(J)V

    goto :goto_0

    .line 7
    :cond_1
    new-instance v1, Lcom/join/mgps/db/tables/DownloadHistoryTable;

    invoke-direct {v1}, Lcom/join/mgps/db/tables/DownloadHistoryTable;-><init>()V

    .line 8
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/join/mgps/db/tables/DownloadHistoryTable;->setCrc_link_type_val(Ljava/lang/String;)V

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lcom/join/mgps/db/tables/DownloadHistoryTable;->setCreate_time(J)V

    .line 10
    :goto_0
    invoke-static {}, Ln1/k;->n()Ln1/k;

    move-result-object v3

    invoke-virtual {v3, v1}, Lg1/b;->m(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/join/mgps/Util/UtilsMy;->b2(Landroid/content/Context;Ljava/lang/String;)V

    .line 12
    new-instance v1, Lcom/join/mgps/pref/PrefDef_;

    invoke-direct {v1, p1}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    .line 13
    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->lastInstallApp()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v1

    invoke-virtual {v1, v2}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    goto :goto_1

    .line 14
    :cond_2
    :try_start_0
    invoke-static {p1}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v1

    .line 15
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "downloadTask.packageName"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p1, v3}, Lcom/join/android/app/common/utils/APKUtils;->k(Landroid/content/Context;Ljava/lang/String;)Lcom/join/android/app/common/utils/APKUtils$a;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 16
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/join/android/app/common/utils/APKUtils$a;->d()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v1}, Lcom/join/android/app/common/utils/APKUtils$a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer_name(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 18
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 19
    :cond_3
    :goto_1
    :try_start_1
    invoke-static {}, Lcom/join/android/app/common/servcie/a;->e()Lcom/join/android/app/common/servcie/a;

    move-result-object v1

    .line 20
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    .line 21
    invoke-virtual {v1, v2}, Lcom/join/android/app/common/servcie/a;->f(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 22
    invoke-virtual {v1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    .line 23
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 24
    :cond_4
    :goto_2
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v1

    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v2

    invoke-virtual {v1, p2, v2}, Lg1/f;->f0(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 25
    invoke-virtual {p2, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 26
    sget-object v1, Lcom/papa/sim/statistic/Event;->installAndroidCompleted:Lcom/papa/sim/statistic/Event;

    invoke-static {p1, p2, v1}, Lcom/join/android/app/common/servcie/b;->b(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/papa/sim/statistic/Event;)V

    .line 27
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object p1

    .line 28
    new-instance v1, Lcom/join/mgps/event/l;

    invoke-direct {v1, p2, v0}, Lcom/join/mgps/event/l;-><init>(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    invoke-virtual {p1, v1}, Lorg/greenrobot/eventbus/c;->o(Ljava/lang/Object;)V

    .line 29
    :try_start_2
    new-instance p1, Ljava/io/File;

    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 30
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 31
    invoke-static {p1}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception p1

    .line 32
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    :goto_3
    return-void
.end method

.method public static final synthetic a(Lcom/join/android/app/common/utils/APKUtils$Companion;Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/mod/bean/ModMeta;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/join/android/app/common/utils/APKUtils$Companion;->J(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/mod/bean/ModMeta;)V

    return-void
.end method

.method public static final synthetic b(Lcom/join/android/app/common/utils/APKUtils$Companion;Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/android/app/common/utils/APKUtils$Companion;->K(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    return-void
.end method

.method public static synthetic i(Lcom/join/android/app/common/utils/APKUtils$Companion;Lcom/github/snowdream/android/app/downloader/DownloadTask;JILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const p2, 0x5265c00

    int-to-long p2, p2

    .line 1
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/join/android/app/common/utils/APKUtils$Companion;->h(Lcom/github/snowdream/android/app/downloader/DownloadTask;J)V

    return-void
.end method


# virtual methods
.method public final A(Landroid/content/Context;Lcom/join/mgps/dto/ModInfoBean;)V
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/join/mgps/dto/ModInfoBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lcom/join/android/app/common/utils/APKUtils$Companion;->F(Lcom/join/android/app/common/utils/APKUtils$Companion;Landroid/content/Context;Lcom/join/mgps/dto/ModInfoBean;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public final B(Landroid/content/Context;Lcom/join/mgps/dto/ModInfoBean;Ljava/lang/String;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/join/mgps/dto/ModInfoBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "bean"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Lcom/join/mgps/activity/ModGameIndexActivity_;->H2(Landroid/content/Context;)Lcom/join/mgps/activity/ModGameIndexActivity_$b0;

    move-result-object v0

    invoke-virtual {p2}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/ModGameIndexActivity_$b0;->b(Ljava/lang/String;)Lcom/join/mgps/activity/ModGameIndexActivity_$b0;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/join/mgps/activity/ModGameIndexActivity_$b0;->a(Ljava/lang/String;)Lcom/join/mgps/activity/ModGameIndexActivity_$b0;

    move-result-object p3

    .line 2
    invoke-virtual {p2}, Lcom/join/mgps/dto/ModInfoBean;->getMain_game_id()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/join/mgps/activity/ModGameIndexActivity_$b0;->c(Ljava/lang/String;)Lcom/join/mgps/activity/ModGameIndexActivity_$b0;

    move-result-object p2

    invoke-virtual {p2}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 3
    instance-of p2, p1, Lcom/join/mgps/activity/ModGameIndexActivity_;

    if-eqz p2, :cond_0

    check-cast p1, Lcom/join/mgps/activity/ModGameIndexActivity_;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public final C(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v6}, Lcom/join/android/app/common/utils/APKUtils$Companion;->G(Lcom/join/android/app/common/utils/APKUtils$Companion;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public final D(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v6}, Lcom/join/android/app/common/utils/APKUtils$Companion;->G(Lcom/join/android/app/common/utils/APKUtils$Companion;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public final E(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "gameId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "modGameId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Lcom/join/mgps/activity/ModGameIndexActivity_;->H2(Landroid/content/Context;)Lcom/join/mgps/activity/ModGameIndexActivity_$b0;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/join/mgps/activity/ModGameIndexActivity_$b0;->b(Ljava/lang/String;)Lcom/join/mgps/activity/ModGameIndexActivity_$b0;

    move-result-object p3

    invoke-virtual {p3, p4}, Lcom/join/mgps/activity/ModGameIndexActivity_$b0;->a(Ljava/lang/String;)Lcom/join/mgps/activity/ModGameIndexActivity_$b0;

    move-result-object p3

    .line 2
    invoke-virtual {p3, p2}, Lcom/join/mgps/activity/ModGameIndexActivity_$b0;->c(Ljava/lang/String;)Lcom/join/mgps/activity/ModGameIndexActivity_$b0;

    move-result-object p2

    invoke-virtual {p2}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 3
    instance-of p2, p1, Lcom/join/mgps/activity/ModGameIndexActivity_;

    if-eqz p2, :cond_0

    check-cast p1, Lcom/join/mgps/activity/ModGameIndexActivity_;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public final H(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 9
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packageName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    :try_start_0
    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v2

    .line 4
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v2, 0x0

    .line 5
    :try_start_1
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v3, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 7
    invoke-virtual {v0, v3, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    const-string v4, "pkgMag.queryIntentActivi\u2026IVITIES\n                )"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_2

    .line 9
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 10
    iget-object v8, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v8, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 11
    iget-object v0, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    goto :goto_1

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 12
    :cond_2
    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v5

    .line 13
    :cond_3
    new-instance v0, Landroid/content/ComponentName;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v0, p2, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 14
    invoke-virtual {p1, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 15
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return v1
.end method

.method public final I(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/github/snowdream/android/app/downloader/DownloadTask;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "downloadTask"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/join/mgps/mod/bean/ModMeta;

    invoke-direct {v0}, Lcom/join/mgps/mod/bean/ModMeta;-><init>()V

    .line 2
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/mod/bean/ModMeta;->setPackageName(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getResource_path()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/mod/bean/ModMeta;->setModPath(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0, p2}, Lcom/join/android/app/common/utils/APKUtils$Companion;->u(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSingleGameModInfoBean()Lcom/join/mgps/dto/SingleGameModInfoBean;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/join/mgps/dto/SingleGameModInfoBean;->getVersion()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/join/mgps/mod/bean/ModMeta;->setModVersion(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v1}, Lcom/join/mgps/dto/SingleGameModInfoBean;->getVersion()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "singleGameModInfoBean.version"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/mod/bean/ModMeta;->setModCode(I)V

    .line 8
    :cond_0
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/mod/bean/ModMeta;->setGameId(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 9
    invoke-virtual {v0, v1}, Lcom/join/mgps/mod/bean/ModMeta;->setModType(I)V

    .line 10
    sget-object v1, Lcom/join/mgps/va/overmind/e;->n:Lcom/join/mgps/va/overmind/e$a;

    invoke-virtual {v1}, Lcom/join/mgps/va/overmind/e$a;->b()Lcom/join/mgps/va/overmind/e;

    move-result-object v1

    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/va/overmind/e;->M(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 11
    sget-object v1, Lcom/MApplication;->q:Lcom/MApplication;

    const-string v2, "MApplication.instance"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/MApplication;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "MApplication.instance.activity"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0, v1, p2}, Lcom/join/android/app/common/utils/APKUtils$Companion;->c(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    .line 13
    :cond_1
    new-instance v2, Lcom/join/android/app/common/utils/APKUtils$Companion$openVmApp$1;

    invoke-direct {v2, p1, p2, v0}, Lcom/join/android/app/common/utils/APKUtils$Companion$openVmApp$1;-><init>(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/mod/bean/ModMeta;)V

    invoke-virtual {p0, v1, v2}, Lcom/join/android/app/common/utils/APKUtils$Companion;->e(Landroid/content/Context;Lkotlin/jvm/functions/Function0;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    .line 14
    :cond_2
    invoke-direct {p0, p1, p2, v0}, Lcom/join/android/app/common/utils/APKUtils$Companion;->J(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/mod/bean/ModMeta;)V

    return-void
.end method

.method public final L(Landroid/content/Context;Lcom/join/mgps/db/tables/EMUApkTable;Lkotlin/jvm/functions/Function0;)V
    .locals 5
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/join/mgps/db/tables/EMUApkTable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/join/mgps/db/tables/EMUApkTable;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "emuApkTable"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/MApplication;->q:Lcom/MApplication;

    const-string v1, "MApplication.instance"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/MApplication;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, p1

    .line 2
    :cond_0
    new-instance v1, Lcom/join/mgps/customview/t;

    const v2, 0x7f120176

    invoke-direct {v1, v0, v2}, Lcom/join/mgps/customview/t;-><init>(Landroid/content/Context;I)V

    const v0, 0x7f0c0531

    .line 3
    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(I)V

    const v0, 0x7f09100f

    .line 4
    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f0902eb

    .line 5
    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f090257

    .line 6
    invoke-virtual {v1, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    const-string v4, "titleT"

    .line 7
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/join/mgps/db/tables/EMUApkTable;->getApk_name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "contentT"

    .line 8
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/join/mgps/db/tables/EMUApkTable;->getVer_info()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f09036b

    .line 9
    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v2, "null cannot be cast to non-null type android.widget.Button"

    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Landroid/widget/Button;

    const v4, 0x7f090365

    .line 10
    invoke-virtual {v1, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v4, Landroid/widget/Button;

    .line 11
    new-instance v2, Lcom/join/android/app/common/utils/APKUtils$Companion$a;

    invoke-direct {v2, v1, v3, p2, p3}, Lcom/join/android/app/common/utils/APKUtils$Companion$a;-><init>(Lcom/join/mgps/customview/t;Landroid/widget/CheckBox;Lcom/join/mgps/db/tables/EMUApkTable;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v4, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    new-instance p3, Lcom/join/android/app/common/utils/APKUtils$Companion$b;

    invoke-direct {p3, v1, p2, p1, v3}, Lcom/join/android/app/common/utils/APKUtils$Companion$b;-><init>(Lcom/join/mgps/customview/t;Lcom/join/mgps/db/tables/EMUApkTable;Landroid/content/Context;Landroid/widget/CheckBox;)V

    invoke-virtual {v0, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p1, 0x1

    .line 13
    invoke-virtual {v1, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 14
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public final M(Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/lang/String;)Z
    .locals 3
    .param p1    # Lcom/github/snowdream/android/app/downloader/DownloadTask;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 1
    invoke-static {p2}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTipBeans()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/TipBean;

    const-string v2, "t"

    .line 3
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method public final N(Ljava/lang/String;)Z
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 p1, 0x1

    return p1
.end method

.method public final c(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/github/snowdream/android/app/downloader/DownloadTask;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Lcom/MApplication;->q:Lcom/MApplication;

    const-string v0, "MApplication.instance"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/MApplication;->getActivity()Landroid/app/Activity;

    move-result-object p1

    .line 2
    :cond_0
    sget-object v0, Lcom/join/mgps/va/overmind/e;->n:Lcom/join/mgps/va/overmind/e$a;

    invoke-virtual {v0}, Lcom/join/mgps/va/overmind/e$a;->e()Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_1

    .line 3
    invoke-static {}, Ln1/p;->o()Ln1/p;

    move-result-object v0

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/join/mgps/enums/ConstantIntEnum;->VA64:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v3}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ln1/p;->n(Ljava/lang/String;)Lcom/join/mgps/db/tables/EMUApkTable;

    move-result-object v0

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {}, Ln1/p;->o()Ln1/p;

    move-result-object v0

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/join/mgps/enums/ConstantIntEnum;->VA32:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v3}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ln1/p;->n(Ljava/lang/String;)Lcom/join/mgps/db/tables/EMUApkTable;

    move-result-object v0

    .line 7
    :goto_0
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->isPluginPkgInstalled()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0, p1, v0}, Lcom/join/android/app/common/utils/APKUtils$Companion;->w(Landroid/content/Context;Lcom/join/mgps/db/tables/EMUApkTable;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    return p1

    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    .line 8
    new-instance v1, Lcom/join/mgps/dialog/z1;

    invoke-direct {v1, p1}, Lcom/join/mgps/dialog/z1;-><init>(Landroid/content/Context;)V

    .line 9
    invoke-virtual {v1, p2, v0}, Lcom/join/mgps/dialog/z1;->a(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/db/tables/EMUApkTable;)V

    :cond_4
    const/4 p1, 0x1

    return p1
.end method

.method public final d(Landroid/content/Context;Lcom/join/mgps/dto/CommonGameInfoBean;)Z
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/join/mgps/dto/CommonGameInfoBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Lcom/MApplication;->q:Lcom/MApplication;

    const-string v0, "MApplication.instance"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/MApplication;->getActivity()Landroid/app/Activity;

    move-result-object p1

    .line 2
    :cond_0
    sget-object v0, Lcom/join/mgps/va/overmind/e;->n:Lcom/join/mgps/va/overmind/e$a;

    invoke-virtual {v0}, Lcom/join/mgps/va/overmind/e$a;->e()Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_1

    .line 3
    invoke-static {}, Ln1/p;->o()Ln1/p;

    move-result-object v0

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/join/mgps/enums/ConstantIntEnum;->VA64:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v3}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ln1/p;->n(Ljava/lang/String;)Lcom/join/mgps/db/tables/EMUApkTable;

    move-result-object v0

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {}, Ln1/p;->o()Ln1/p;

    move-result-object v0

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/join/mgps/enums/ConstantIntEnum;->VA32:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v3}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ln1/p;->n(Ljava/lang/String;)Lcom/join/mgps/db/tables/EMUApkTable;

    move-result-object v0

    .line 7
    :goto_0
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->isPluginPkgInstalled()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0, p1, v0}, Lcom/join/android/app/common/utils/APKUtils$Companion;->w(Landroid/content/Context;Lcom/join/mgps/db/tables/EMUApkTable;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    return p1

    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    .line 8
    new-instance v1, Lcom/join/mgps/dialog/z1;

    invoke-direct {v1, p1}, Lcom/join/mgps/dialog/z1;-><init>(Landroid/content/Context;)V

    .line 9
    invoke-virtual {v1, p2, v0}, Lcom/join/mgps/dialog/z1;->b(Lcom/join/mgps/dto/CommonGameInfoBean;Lcom/join/mgps/db/tables/EMUApkTable;)V

    :cond_4
    const/4 p1, 0x1

    return p1
.end method

.method public final e(Landroid/content/Context;Lkotlin/jvm/functions/Function0;)Z
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)Z"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/join/mgps/va/overmind/e;->n:Lcom/join/mgps/va/overmind/e$a;

    invoke-virtual {v0}, Lcom/join/mgps/va/overmind/e$a;->e()Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Ln1/p;->o()Ln1/p;

    move-result-object v0

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/join/mgps/enums/ConstantIntEnum;->VA64:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v3}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ln1/p;->n(Ljava/lang/String;)Lcom/join/mgps/db/tables/EMUApkTable;

    move-result-object v0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Ln1/p;->o()Ln1/p;

    move-result-object v0

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/join/mgps/enums/ConstantIntEnum;->VA32:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v3}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ln1/p;->n(Ljava/lang/String;)Lcom/join/mgps/db/tables/EMUApkTable;

    move-result-object v0

    .line 6
    :goto_0
    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->q0(Landroid/content/Context;Lcom/join/mgps/db/tables/EMUApkTable;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 7
    invoke-static {v0, p1}, Lcom/join/mgps/Util/UtilsMy;->V0(Lcom/join/mgps/db/tables/EMUApkTable;Landroid/content/Context;)V

    return v2

    :cond_1
    const-string v1, "emuApkTable"

    .line 8
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/join/mgps/db/tables/EMUApkTable;->isCanUpdate()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 9
    invoke-virtual {p0, p1, v0, p2}, Lcom/join/android/app/common/utils/APKUtils$Companion;->L(Landroid/content/Context;Lcom/join/mgps/db/tables/EMUApkTable;Lkotlin/jvm/functions/Function0;)V

    return v2

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public final f(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 11
    .param p1    # Lcom/github/snowdream/android/app/downloader/DownloadTask;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, ""

    if-eqz p1, :cond_d

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->isMod()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_6

    .line 2
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getModInfoBean()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 3
    invoke-virtual {v1}, Lcom/join/mgps/dto/ModInfoBean;->getCompatible_version()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 4
    invoke-virtual {v1}, Lcom/join/mgps/dto/ModInfoBean;->getCompatible_version()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 5
    invoke-virtual {v1}, Lcom/join/mgps/dto/ModInfoBean;->getCompatible_version()Ljava/lang/String;

    move-result-object v5

    const-string v4, "modInfoBean.compatible_version"

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, ","

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x6

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/String;

    .line 6
    invoke-interface {v4, v5}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 7
    check-cast v4, [Ljava/lang/String;

    .line 8
    array-length v5, v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_2

    aget-object v7, v4, v6

    .line 9
    invoke-virtual {v1}, Lcom/join/mgps/dto/ModInfoBean;->getMain_game_ver()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 10
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    const/4 v1, 0x0

    .line 11
    :goto_1
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTipBeans()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/join/mgps/dto/TipBean;

    const-string v6, "tipBean2"

    .line 12
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v6

    .line 13
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    sget-object v8, Lcom/join/mgps/enums/ConstantIntEnum;->DATA:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v8}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v8

    .line 15
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v5}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v6

    .line 16
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    sget-object v8, Lcom/join/mgps/enums/ConstantIntEnum;->OBB:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v8}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v8

    .line 18
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v5}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v5

    .line 19
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    sget-object v7, Lcom/join/mgps/enums/ConstantIntEnum;->OBBDATA:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v7}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v7

    .line 21
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_4
    const/4 v3, 0x1

    goto :goto_2

    :cond_5
    move v2, v1

    goto :goto_3

    .line 22
    :cond_6
    invoke-virtual {p0, p1}, Lcom/join/android/app/common/utils/APKUtils$Companion;->v(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_3

    :cond_7
    const/4 v2, 0x0

    .line 23
    :goto_3
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0x1e

    if-eqz v0, :cond_a

    .line 24
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_8

    if-eqz v2, :cond_9

    :cond_8
    if-eqz v3, :cond_a

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v1, :cond_a

    .line 26
    :cond_9
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z

    .line 27
    :cond_a
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 28
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 29
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_b

    if-eqz v2, :cond_c

    :cond_b
    if-eqz v3, :cond_d

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v1, :cond_d

    .line 30
    :cond_c
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    .line 31
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_d
    :goto_4
    return-void
.end method

.method public final g(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 6
    .param p1    # Lcom/github/snowdream/android/app/downloader/DownloadTask;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-wide/16 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/join/android/app/common/utils/APKUtils$Companion;->i(Lcom/join/android/app/common/utils/APKUtils$Companion;Lcom/github/snowdream/android/app/downloader/DownloadTask;JILjava/lang/Object;)V

    return-void
.end method

.method public final h(Lcom/github/snowdream/android/app/downloader/DownloadTask;J)V
    .locals 4
    .param p1    # Lcom/github/snowdream/android/app/downloader/DownloadTask;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFinishTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    cmp-long v2, v0, p2

    if-ltz v2, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3
    new-instance p2, Ljava/io/File;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPath()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 5
    invoke-static {p2}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z

    .line 6
    :cond_0
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 7
    new-instance p2, Ljava/io/File;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 9
    invoke-static {p2}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z

    :cond_1
    return-void
.end method

.method public final j(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packageName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/16 v0, 0x40

    .line 2
    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object p1

    const-string v0, "pm\n                .getI\u2026geManager.GET_SIGNATURES)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 4
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 6
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 7
    invoke-static {v1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8
    iget-object p1, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 p2, 0x0

    aget-object p1, p1, p2

    invoke-virtual {p1}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final k(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packageName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    .line 2
    :try_start_0
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final l(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 8
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/github/snowdream/android/app/downloader/DownloadTask;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "task"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v1

    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/join/android/app/common/utils/APKUtils;->e(Lcom/join/android/app/common/utils/APKUtils;Landroid/content/Context;Ljava/lang/String;Lcom/join/android/app/common/utils/APKUtils$DEVICE_TYPE;ILjava/lang/Object;)Z

    move-result v0

    const-string v1, "task.packageName"

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/join/android/app/common/utils/APKUtils$Companion;->H(Landroid/content/Context;Ljava/lang/String;)Z

    .line 3
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/join/mgps/Util/UtilsMy;->y3(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5
    new-instance v2, Lcom/join/mgps/pref/PrefDef_;

    invoke-direct {v2, p1}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    .line 6
    invoke-virtual {v2}, Lcom/join/mgps/pref/PrefDef_;->lastLaunchModGameId()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v3

    invoke-virtual {v3}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 7
    invoke-static {v3}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 8
    invoke-virtual {v2}, Lcom/join/mgps/pref/PrefDef_;->lastLaunchModGameId()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v3

    invoke-virtual {v3}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 9
    invoke-virtual {v2}, Lcom/join/mgps/pref/PrefDef_;->lastLaunchModGameId()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 10
    :cond_1
    sget-object v2, Lcom/join/mgps/va/overmind/e;->n:Lcom/join/mgps/va/overmind/e$a;

    invoke-virtual {v2}, Lcom/join/mgps/va/overmind/e$a;->b()Lcom/join/mgps/va/overmind/e;

    move-result-object v2

    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/join/mgps/va/overmind/e;->j0(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 12
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/join/mgps/va/overmind/f;->d:Lcom/join/mgps/va/overmind/f;

    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/join/mgps/va/overmind/f;->M(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z

    .line 13
    :cond_2
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    .line 14
    new-instance v2, Ljava/io/File;

    sget-object v6, Lcom/join/mgps/va/overmind/f;->d:Lcom/join/mgps/va/overmind/f;

    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6, v7, v5, v4, v3}, Lcom/join/mgps/va/overmind/f;->x(Lcom/join/mgps/va/overmind/f;Ljava/lang/String;IILjava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z

    .line 15
    :cond_3
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getResource_path()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 16
    new-instance v2, Ljava/io/File;

    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getResource_path()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    const-string v7, "modFile.parentFile"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    const-string v7, "modFile.parentFile.absolutePath"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6, v7, v5, v4, v3}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 18
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z

    goto :goto_0

    .line 19
    :cond_4
    invoke-static {v2}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z

    :cond_5
    :goto_0
    const/16 v1, 0xb

    .line 20
    invoke-virtual {p2, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 21
    sget-object v2, Lcom/join/android/app/common/utils/APKUtils$DEVICE_TYPE;->REAL:Lcom/join/android/app/common/utils/APKUtils$DEVICE_TYPE;

    invoke-virtual {v2}, Lcom/join/android/app/common/utils/APKUtils$DEVICE_TYPE;->value()I

    move-result v2

    invoke-virtual {p2, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setInstall_type(I)V

    .line 22
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v2

    invoke-virtual {v2, p2}, Lg1/b;->m(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object v2

    new-instance v3, Lcom/join/mgps/event/l;

    invoke-direct {v3, p2, v1}, Lcom/join/mgps/event/l;-><init>(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    invoke-virtual {v2, v3}, Lorg/greenrobot/eventbus/c;->o(Ljava/lang/Object;)V

    .line 24
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 25
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-ge v1, v2, :cond_7

    .line 26
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/join/mgps/enums/Dtype;->androidobb:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/join/mgps/enums/Dtype;->androiddata:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/join/mgps/enums/Dtype;->androidobbdata:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 27
    :cond_6
    invoke-static {}, Lcom/join/android/app/common/servcie/a;->e()Lcom/join/android/app/common/servcie/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2, v5}, Lcom/join/android/app/common/servcie/a;->r(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Z)V

    return-void

    .line 28
    :cond_7
    invoke-static {p1}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object p2

    invoke-virtual {p2, p1, v0}, Lcom/join/android/app/common/utils/APKUtils;->x(Landroid/content/Context;Ljava/io/File;)V

    return-void

    .line 29
    :cond_8
    invoke-static {p1, p2}, Lcom/join/mgps/Util/UtilsMy;->T0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDown_status()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_9

    .line 30
    invoke-static {p1, p2}, Lcom/join/mgps/Util/UtilsMy;->R0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_1

    .line 31
    :cond_9
    invoke-static {p2, p1}, Lcom/php25/PDownload/d;->c(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    :cond_a
    :goto_1
    return-void
.end method

.method public final m(Landroid/content/Context;)V
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->get()Lcom/xinzhu/overmind/Overmind;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/xinzhu/overmind/Overmind;->getInstalledPackages(II)Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 3
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 4
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getMindPackageManager()Lcom/xinzhu/overmind/client/frameworks/f;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/xinzhu/overmind/client/frameworks/f;->k(Ljava/lang/String;)Lcom/xinzhu/overmind/server/pm/MindPackageSettings;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {v2}, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->k()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 6
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v3

    invoke-virtual {v3, v1}, Lg1/f;->D(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 7
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 8
    sget-object v4, Lcom/join/android/app/common/utils/APKUtils;->b:Lcom/join/android/app/common/utils/APKUtils$Companion;

    invoke-virtual {v4, v3}, Lcom/join/android/app/common/utils/APKUtils$Companion;->r(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v4, v3}, Lcom/join/android/app/common/utils/APKUtils$Companion;->v(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_3
    move-object v2, v3

    :cond_4
    if-eqz v2, :cond_0

    .line 9
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v1

    const/16 v3, 0x30

    if-ne v1, v3, :cond_5

    return-void

    .line 10
    :cond_5
    invoke-static {p1, v2}, Lcom/join/mgps/Util/UtilsMy;->D0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    :cond_6
    return-void
.end method

.method public final n(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/github/snowdream/android/app/downloader/DownloadTask;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTask_down_type()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTask_down_type()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    invoke-virtual {p0, p2}, Lcom/join/android/app/common/utils/APKUtils$Companion;->v(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTask_down_type()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x5

    .line 3
    invoke-virtual {p2, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 4
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v1

    invoke-virtual {v0, p2, v1}, Lg1/f;->f0(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/join/android/app/common/utils/APKUtils$Companion;->K(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_1

    .line 6
    :cond_1
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTask_down_type()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    .line 7
    invoke-virtual {p0, p1, p2, v1}, Lcom/join/android/app/common/utils/APKUtils$Companion;->o(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Z)V

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, p1, p2, v0}, Lcom/join/android/app/common/utils/APKUtils$Companion;->o(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final o(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Z)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/github/snowdream/android/app/downloader/DownloadTask;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-eqz p2, :cond_0

    .line 1
    invoke-static {}, Lcom/join/mgps/mod/utils/a;->a()Lcom/join/mgps/mod/utils/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/join/mgps/mod/utils/a;->b(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Z)V

    :cond_0
    return-void
.end method

.method public final p(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packageName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activity"

    .line 1
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type android.app.ActivityManager"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Landroid/app/ActivityManager;

    const/16 v0, 0x96

    .line 2
    invoke-virtual {p1, v0}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object p1

    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return v1

    .line 4
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 5
    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v2, "info.baseActivity!!"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method public final q(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z
    .locals 0
    .param p1    # Lcom/github/snowdream/android/app/downloader/DownloadTask;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->isMiniGame()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final r(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z
    .locals 3
    .param p1    # Lcom/github/snowdream/android/app/downloader/DownloadTask;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getMod_info()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v0

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getMod_info()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/join/mgps/dto/ModInfoBean;

    invoke-virtual {v0, v1, v2}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Lcom/join/mgps/dto/ModInfoBean;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final s(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z
    .locals 2
    .param p1    # Lcom/github/snowdream/android/app/downloader/DownloadTask;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    move-result-object v0

    const-string v1, "task.sp_tag_info"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/join/mgps/dto/TipNew;->getNet_game_vm()Lcom/join/mgps/dto/TipBean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/join/mgps/dto/TipNew;->getNet_game_vm()Lcom/join/mgps/dto/TipBean;

    move-result-object v0

    const-string v1, "task.sp_tag_info.net_game_vm"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "157"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getInstall_type()I

    move-result p1

    sget-object v0, Lcom/join/android/app/common/utils/APKUtils$DEVICE_TYPE;->REAL:Lcom/join/android/app/common/utils/APKUtils$DEVICE_TYPE;

    invoke-virtual {v0}, Lcom/join/android/app/common/utils/APKUtils$DEVICE_TYPE;->value()I

    move-result v0

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final t(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object p1

    const-string v1, "packageManager.getInstalledPackages(0)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    .line 3
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_2

    .line 4
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v3, "com.tencent.qqlite"

    const/4 v4, 0x1

    .line 5
    invoke-static {v2, v3, v4}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_0

    return-object v3

    :cond_0
    const-string v3, "com.tencent.mobileqq"

    .line 6
    invoke-static {v2, v3, v4}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public final u(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z
    .locals 2
    .param p1    # Lcom/github/snowdream/android/app/downloader/DownloadTask;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    move-result-object v0

    const-string v1, "task.sp_tag_info"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/join/mgps/dto/TipNew;->getSingle_game_vm()Lcom/join/mgps/dto/TipBean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/join/mgps/dto/TipNew;->getSingle_game_vm()Lcom/join/mgps/dto/TipBean;

    move-result-object v0

    const-string v1, "task.sp_tag_info.single_game_vm"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "163"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getInstall_type()I

    move-result p1

    sget-object v0, Lcom/join/android/app/common/utils/APKUtils$DEVICE_TYPE;->REAL:Lcom/join/android/app/common/utils/APKUtils$DEVICE_TYPE;

    invoke-virtual {v0}, Lcom/join/android/app/common/utils/APKUtils$DEVICE_TYPE;->value()I

    move-result v0

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final v(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z
    .locals 1
    .param p1    # Lcom/github/snowdream/android/app/downloader/DownloadTask;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/android/app/common/utils/APKUtils$Companion;->s(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/join/android/app/common/utils/APKUtils$Companion;->u(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/join/android/app/common/utils/APKUtils$Companion;->u(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/join/android/app/common/utils/APKUtils$Companion;->q(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public final w(Landroid/content/Context;Lcom/join/mgps/db/tables/EMUApkTable;)Z
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/join/mgps/db/tables/EMUApkTable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_4

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lcom/join/mgps/db/tables/EMUApkTable;->getPackage_name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_1

    .line 2
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    :cond_1
    if-eqz v1, :cond_4

    .line 3
    sget-object p2, Lcom/join/mgps/va/overmind/c;->a:Lcom/join/mgps/va/overmind/c$a;

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {p2, p1}, Lcom/join/mgps/va/overmind/c$a;->d(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p1

    .line 4
    invoke-virtual {p2, p1}, Lcom/join/mgps/va/overmind/c$a;->a(Ljava/util/Set;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/join/mgps/va/overmind/e;->n:Lcom/join/mgps/va/overmind/e$a;

    invoke-virtual {v1}, Lcom/join/mgps/va/overmind/e$a;->e()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5
    :cond_2
    invoke-virtual {p2, p1}, Lcom/join/mgps/va/overmind/c$a;->b(Ljava/util/Set;)Z

    move-result p1

    if-eqz p1, :cond_4

    sget-object p1, Lcom/join/mgps/va/overmind/e;->n:Lcom/join/mgps/va/overmind/e$a;

    invoke-virtual {p1}, Lcom/join/mgps/va/overmind/e$a;->e()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_4

    :cond_3
    const/4 v0, 0x1

    goto :goto_2

    .line 6
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    :cond_4
    :goto_2
    return v0
.end method

.method public final x(Landroid/content/Context;Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;Ljava/lang/String;Ljava/lang/String;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/github/snowdream/android/app/downloader/DownloadTask;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "archiveData"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fingerSwitch"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "introdSwitch"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "downloadTask"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/join/mgps/va/overmind/e;->n:Lcom/join/mgps/va/overmind/e$a;

    invoke-virtual {v0}, Lcom/join/mgps/va/overmind/e$a;->b()Lcom/join/mgps/va/overmind/e;

    move-result-object v0

    invoke-virtual {p5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/va/overmind/e;->M(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0, p1, p5}, Lcom/join/android/app/common/utils/APKUtils$Companion;->c(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v0, Lcom/join/android/app/common/utils/APKUtils$Companion$openCloudVmApp$1;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p5

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/join/android/app/common/utils/APKUtils$Companion$openCloudVmApp$1;-><init>(Landroid/content/Context;Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/join/android/app/common/utils/APKUtils$Companion;->e(Landroid/content/Context;Lkotlin/jvm/functions/Function0;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p5

    move-object v4, p3

    move-object v5, p4

    .line 4
    invoke-virtual/range {v0 .. v5}, Lcom/join/android/app/common/utils/APKUtils$Companion;->y(Landroid/content/Context;Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final y(Landroid/content/Context;Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/lang/String;Ljava/lang/String;)V
    .locals 17
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/github/snowdream/android/app/downloader/DownloadTask;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    const-string v0, "context"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "archiveData"

    move-object/from16 v6, p2

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "downloadTask"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fingerSwitch"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "introdSwitch"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/join/mgps/va/overmind/e;->n:Lcom/join/mgps/va/overmind/e$a;

    invoke-virtual {v0}, Lcom/join/mgps/va/overmind/e$a;->b()Lcom/join/mgps/va/overmind/e;

    move-result-object v7

    .line 2
    invoke-virtual/range {p2 .. p2}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "archiveData.packageName"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual/range {p2 .. p2}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getMainArchiveLocalPath()Ljava/lang/String;

    move-result-object v9

    const-string v10, "archiveData.mainArchiveLocalPath"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual/range {p2 .. p2}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getMainArchiveLocalPath2()Ljava/lang/String;

    move-result-object v10

    .line 5
    invoke-virtual/range {p2 .. p2}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getId()Ljava/lang/String;

    move-result-object v11

    const-string v12, "archiveData.id"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/join/mgps/va/overmind/e;->y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :try_start_0
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x15

    if-lt v7, v8, :cond_0

    .line 8
    invoke-virtual/range {p3 .. p3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "downloadTask.getPackageName()"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-virtual/range {p3 .. p3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getResource_path()Ljava/lang/String;

    move-result-object v8

    .line 10
    invoke-virtual {v0, v7, v8}, Lcom/join/mgps/va/overmind/e$a;->h(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 12
    :cond_0
    :goto_0
    new-instance v0, Lcom/join/mgps/mod/bean/ModMeta;

    invoke-direct {v0}, Lcom/join/mgps/mod/bean/ModMeta;-><init>()V

    const/4 v7, 0x0

    .line 13
    invoke-virtual {v1, v3}, Lcom/join/android/app/common/utils/APKUtils$Companion;->r(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v7, 0x1

    .line 14
    invoke-virtual/range {p3 .. p3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getModInfoBean()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 15
    invoke-virtual {v8}, Lcom/join/mgps/dto/ModInfoBean;->getVer()I

    move-result v8

    .line 16
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/join/mgps/mod/bean/ModMeta;->setModVersion(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v0, v8}, Lcom/join/mgps/mod/bean/ModMeta;->setModCode(I)V

    :cond_1
    const/4 v13, 0x1

    goto :goto_1

    .line 18
    :cond_2
    invoke-virtual {v1, v3}, Lcom/join/android/app/common/utils/APKUtils$Companion;->v(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v8

    if-eqz v8, :cond_4

    const/4 v7, 0x2

    .line 19
    invoke-virtual/range {p3 .. p3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSingleGameModInfoBean()Lcom/join/mgps/dto/SingleGameModInfoBean;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 20
    invoke-virtual {v8}, Lcom/join/mgps/dto/SingleGameModInfoBean;->getVersion()Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "modInfo.version"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 21
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/join/mgps/mod/bean/ModMeta;->setModVersion(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v0, v8}, Lcom/join/mgps/mod/bean/ModMeta;->setModCode(I)V

    :cond_3
    const/4 v13, 0x2

    goto :goto_1

    :cond_4
    const/4 v13, 0x0

    .line 23
    :goto_1
    invoke-virtual/range {p3 .. p3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/join/mgps/mod/bean/ModMeta;->setPackageName(Ljava/lang/String;)V

    .line 24
    invoke-virtual/range {p3 .. p3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getResource_path()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/join/mgps/mod/bean/ModMeta;->setModPath(Ljava/lang/String;)V

    .line 25
    invoke-virtual/range {p3 .. p3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/join/mgps/mod/bean/ModMeta;->setGameId(Ljava/lang/String;)V

    .line 26
    invoke-virtual {v0, v4}, Lcom/join/mgps/mod/bean/ModMeta;->setGoldFingerSwitch(Ljava/lang/String;)V

    .line 27
    invoke-virtual {v0, v5}, Lcom/join/mgps/mod/bean/ModMeta;->setIntroductionSwitch(Ljava/lang/String;)V

    const-string v4, "1"

    .line 28
    invoke-virtual {v0, v4}, Lcom/join/mgps/mod/bean/ModMeta;->setArchiveCloudSwitch(Ljava/lang/String;)V

    .line 29
    sget-object v4, Lcom/join/mgps/va/overmind/e;->n:Lcom/join/mgps/va/overmind/e$a;

    invoke-virtual {v4}, Lcom/join/mgps/va/overmind/e$a;->b()Lcom/join/mgps/va/overmind/e;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getUserId()I

    move-result v5

    invoke-virtual/range {p3 .. p3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getMod_info()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v2, v0, v5, v6}, Lcom/join/mgps/va/overmind/e;->T(Landroid/content/Context;Lcom/join/mgps/mod/bean/ModMeta;ILjava/lang/String;)V

    .line 30
    invoke-static/range {p1 .. p1}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v10

    .line 31
    invoke-virtual/range {p3 .. p3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v11

    .line 32
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    const-string v4, "AccountUtil_.getInstance_(context)"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v12

    .line 33
    invoke-virtual/range {p3 .. p3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->get_from()I

    move-result v14

    invoke-virtual/range {p3 .. p3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->get_from_type()I

    move-result v15

    invoke-virtual/range {p3 .. p3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getExt()Ljava/lang/String;

    move-result-object v16

    .line 34
    invoke-virtual/range {v10 .. v16}, Lcom/papa/sim/statistic/p;->d1(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V

    .line 35
    invoke-virtual/range {p3 .. p3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/join/mgps/Util/UtilsMy;->y3(Landroid/content/Context;Ljava/lang/String;)V

    .line 36
    invoke-virtual/range {p3 .. p3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getModInfoBean()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 37
    invoke-virtual/range {p3 .. p3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getModInfoBean()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v0

    const-string v3, "downloadTask.modInfoBean"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/join/mgps/dto/ModInfoBean;->getMain_game_id()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/join/mgps/Util/UtilsMy;->y3(Landroid/content/Context;Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public final z(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/github/snowdream/android/app/downloader/DownloadTask;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "downloadTask"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->isMiniGame()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Lcom/join/mgps/activity/MiniGameLoadingActivity_;->J0(Landroid/content/Context;)Lcom/join/mgps/activity/MiniGameLoadingActivity_$c;

    move-result-object p1

    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Lorg/androidannotations/api/builder/e;->flags(I)Lorg/androidannotations/api/builder/e;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/activity/MiniGameLoadingActivity_$c;

    .line 3
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/MiniGameLoadingActivity_$c;->a(Ljava/lang/String;)Lcom/join/mgps/activity/MiniGameLoadingActivity_$c;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    :cond_0
    return-void
.end method
