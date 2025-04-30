.class public Lcom/join/android/app/common/utils/APKUtils;
.super Ljava/lang/Object;
.source "APKUtils.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/android/app/common/utils/APKUtils$a;,
        Lcom/join/android/app/common/utils/APKUtils$DEVICE_TYPE;,
        Lcom/join/android/app/common/utils/APKUtils$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAPKUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 APKUtils.kt\ncom/join/android/app/common/utils/APKUtils\n+ 2 Strings.kt\nkotlin/text/StringsKt__StringsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,1617:1\n107#2:1618\n79#2,22:1619\n1#3:1641\n37#4,2:1642\n*E\n*S KotlinDebug\n*F\n+ 1 APKUtils.kt\ncom/join/android/app/common/utils/APKUtils\n*L\n551#1:1618\n551#1,22:1619\n754#1,2:1642\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000p\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0011\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0008\t\n\u0002\u0010\u0012\n\u0002\u0008\t\u0008\u0017\u0018\u0000 ?2\u00020\u0001:\u0003@ABB\u0007\u00a2\u0006\u0004\u0008=\u0010>J.\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00062\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0008H\u0002J/\u0010\u0011\u001a\u000e\u0012\n\u0008\u0001\u0012\u0006\u0012\u0002\u0008\u00030\u000c0\u00102\n\u0010\r\u001a\u0006\u0012\u0002\u0008\u00030\u000c2\u0006\u0010\u000f\u001a\u00020\u000eH\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0018\u0010\u0014\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u00022\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u000eJ\u0016\u0010\u0015\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u000eJ\"\u0010\u0018\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u00022\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u000e2\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u000eJ\"\u0010\u001a\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0019\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006H\u0017J\u0016\u0010\u001b\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0019\u001a\u00020\u0004J\u001a\u0010\u001f\u001a\u00020\n2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001c2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u000eJ\u0018\u0010\"\u001a\u00020\n2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001c2\u0006\u0010!\u001a\u00020 J\u001a\u0010#\u001a\u00020\n2\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u000eJ\u0018\u0010$\u001a\u00020\n2\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010!\u001a\u00020 J\u0018\u0010&\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u00022\u0008\u0010!\u001a\u0004\u0018\u00010%J$\u0010)\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u000e2\u0008\u0008\u0002\u0010(\u001a\u00020\'H\u0007J\u001a\u0010,\u001a\u00060+R\u00020\u00002\u0006\u0010*\u001a\u00020\u00022\u0006\u0010!\u001a\u00020 J\u001a\u0010-\u001a\u00060+R\u00020\u00002\u0006\u0010*\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u000eJ\"\u0010/\u001a\u00060+R\u00020\u00002\u0006\u0010*\u001a\u00020\u00022\u0006\u0010.\u001a\u00020\u000e2\u0006\u0010(\u001a\u00020\'J\u0018\u00101\u001a\u000c\u0012\u0008\u0012\u00060+R\u00020\u0000002\u0006\u0010*\u001a\u00020\u0002J\u0018\u00102\u001a\u000c\u0012\u0008\u0012\u00060+R\u00020\u0000002\u0006\u0010*\u001a\u00020\u0002J\u001a\u00104\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u0003\u001a\u00020\u00022\u0008\u00103\u001a\u0004\u0018\u00010\u000eJ\u0010\u00106\u001a\u00020\n2\u0008\u00105\u001a\u0004\u0018\u00010 J\"\u00109\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0008\u00107\u001a\u0004\u0018\u00010\u000e2\u0008\u00108\u001a\u0004\u0018\u00010\u000eJ\u0010\u0010<\u001a\u00020\n2\u0008\u0010;\u001a\u0004\u0018\u00010:\u00a8\u0006C"
    }
    d2 = {
        "Lcom/join/android/app/common/utils/APKUtils;",
        "",
        "Landroid/content/Context;",
        "context",
        "Lcom/join/mgps/Util/StartGameMeta;",
        "meta",
        "",
        "netMode",
        "Landroid/content/Intent;",
        "intent",
        "",
        "e0",
        "Ljava/lang/Class;",
        "cls",
        "",
        "mName",
        "",
        "q",
        "(Ljava/lang/Class;Ljava/lang/String;)[Ljava/lang/Class;",
        "pak",
        "M",
        "c0",
        "packageName",
        "activityName",
        "N",
        "startGameMeta",
        "L",
        "Q",
        "Landroid/app/Activity;",
        "activity",
        "apkFilePath",
        "v",
        "Ljava/io/File;",
        "apkFile",
        "u",
        "y",
        "x",
        "Landroid/net/Uri;",
        "w",
        "Lcom/join/android/app/common/utils/APKUtils$DEVICE_TYPE;",
        "type",
        "d",
        "ctx",
        "Lcom/join/android/app/common/utils/APKUtils$a;",
        "r",
        "k",
        "pkg",
        "l",
        "",
        "m",
        "o",
        "FilePath",
        "p",
        "file",
        "z",
        "fileName",
        "path",
        "g",
        "",
        "signature",
        "Z",
        "<init>",
        "()V",
        "b",
        "a",
        "Companion",
        "DEVICE_TYPE",
        "app_wufunNormalRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EBean;
    scope = .enum Lorg/androidannotations/annotations/EBean$Scope;->Singleton:Lorg/androidannotations/annotations/EBean$Scope;
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "APKUtils"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final b:Lcom/join/android/app/common/utils/APKUtils$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/join/android/app/common/utils/APKUtils$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/join/android/app/common/utils/APKUtils$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/join/android/app/common/utils/APKUtils;->b:Lcom/join/android/app/common/utils/APKUtils$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final A(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Lcom/github/snowdream/android/app/downloader/DownloadTask;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/join/android/app/common/utils/APKUtils;->b:Lcom/join/android/app/common/utils/APKUtils$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/join/android/app/common/utils/APKUtils$Companion;->n(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    return-void
.end method

.method public static final B(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Z)V
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Lcom/github/snowdream/android/app/downloader/DownloadTask;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/join/android/app/common/utils/APKUtils;->b:Lcom/join/android/app/common/utils/APKUtils$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/join/android/app/common/utils/APKUtils$Companion;->o(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Z)V

    return-void
.end method

.method public static final C(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/join/android/app/common/utils/APKUtils;->b:Lcom/join/android/app/common/utils/APKUtils$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/join/android/app/common/utils/APKUtils$Companion;->p(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static final D(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z
    .locals 1
    .param p0    # Lcom/github/snowdream/android/app/downloader/DownloadTask;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/join/android/app/common/utils/APKUtils;->b:Lcom/join/android/app/common/utils/APKUtils$Companion;

    invoke-virtual {v0, p0}, Lcom/join/android/app/common/utils/APKUtils$Companion;->q(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result p0

    return p0
.end method

.method public static final E(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z
    .locals 1
    .param p0    # Lcom/github/snowdream/android/app/downloader/DownloadTask;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/join/android/app/common/utils/APKUtils;->b:Lcom/join/android/app/common/utils/APKUtils$Companion;

    invoke-virtual {v0, p0}, Lcom/join/android/app/common/utils/APKUtils$Companion;->r(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result p0

    return p0
.end method

.method public static final F(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z
    .locals 1
    .param p0    # Lcom/github/snowdream/android/app/downloader/DownloadTask;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/join/android/app/common/utils/APKUtils;->b:Lcom/join/android/app/common/utils/APKUtils$Companion;

    invoke-virtual {v0, p0}, Lcom/join/android/app/common/utils/APKUtils$Companion;->s(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result p0

    return p0
.end method

.method public static final G(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    sget-object v0, Lcom/join/android/app/common/utils/APKUtils;->b:Lcom/join/android/app/common/utils/APKUtils$Companion;

    invoke-virtual {v0, p0}, Lcom/join/android/app/common/utils/APKUtils$Companion;->t(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final H(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z
    .locals 1
    .param p0    # Lcom/github/snowdream/android/app/downloader/DownloadTask;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/join/android/app/common/utils/APKUtils;->b:Lcom/join/android/app/common/utils/APKUtils$Companion;

    invoke-virtual {v0, p0}, Lcom/join/android/app/common/utils/APKUtils$Companion;->u(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result p0

    return p0
.end method

.method public static final I(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z
    .locals 1
    .param p0    # Lcom/github/snowdream/android/app/downloader/DownloadTask;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/join/android/app/common/utils/APKUtils;->b:Lcom/join/android/app/common/utils/APKUtils$Companion;

    invoke-virtual {v0, p0}, Lcom/join/android/app/common/utils/APKUtils$Companion;->v(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result p0

    return p0
.end method

.method public static final J(Landroid/content/Context;Lcom/join/mgps/db/tables/EMUApkTable;)Z
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Lcom/join/mgps/db/tables/EMUApkTable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/join/android/app/common/utils/APKUtils;->b:Lcom/join/android/app/common/utils/APKUtils$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/join/android/app/common/utils/APKUtils$Companion;->w(Landroid/content/Context;Lcom/join/mgps/db/tables/EMUApkTable;)Z

    move-result p0

    return p0
.end method

.method public static synthetic O(Lcom/join/android/app/common/utils/APKUtils;Landroid/content/Context;Lcom/join/mgps/Util/StartGameMeta;ZILjava/lang/Object;)V
    .locals 0

    if-nez p5, :cond_1

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 1
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/join/android/app/common/utils/APKUtils;->L(Landroid/content/Context;Lcom/join/mgps/Util/StartGameMeta;Z)V

    return-void

    .line 2
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: open"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final P(Landroid/content/Context;Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;Ljava/lang/String;Ljava/lang/String;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 6
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
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
    .param p4    # Lcom/github/snowdream/android/app/downloader/DownloadTask;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/join/android/app/common/utils/APKUtils;->b:Lcom/join/android/app/common/utils/APKUtils$Companion;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/join/android/app/common/utils/APKUtils$Companion;->x(Landroid/content/Context;Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;Ljava/lang/String;Ljava/lang/String;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    return-void
.end method

.method public static final R(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/github/snowdream/android/app/downloader/DownloadTask;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/join/android/app/common/utils/APKUtils;->b:Lcom/join/android/app/common/utils/APKUtils$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/join/android/app/common/utils/APKUtils$Companion;->z(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    return-void
.end method

.method public static final S(Landroid/content/Context;Lcom/join/mgps/dto/ModInfoBean;)V
    .locals 6
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Lcom/join/mgps/dto/ModInfoBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/join/android/app/common/utils/APKUtils;->b:Lcom/join/android/app/common/utils/APKUtils$Companion;

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lcom/join/android/app/common/utils/APKUtils$Companion;->F(Lcom/join/android/app/common/utils/APKUtils$Companion;Landroid/content/Context;Lcom/join/mgps/dto/ModInfoBean;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public static final T(Landroid/content/Context;Lcom/join/mgps/dto/ModInfoBean;Ljava/lang/String;)V
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Lcom/join/mgps/dto/ModInfoBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/join/android/app/common/utils/APKUtils;->b:Lcom/join/android/app/common/utils/APKUtils$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/join/android/app/common/utils/APKUtils$Companion;->B(Landroid/content/Context;Lcom/join/mgps/dto/ModInfoBean;Ljava/lang/String;)V

    return-void
.end method

.method public static final U(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/join/android/app/common/utils/APKUtils;->b:Lcom/join/android/app/common/utils/APKUtils$Companion;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v0 .. v6}, Lcom/join/android/app/common/utils/APKUtils$Companion;->G(Lcom/join/android/app/common/utils/APKUtils$Companion;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public static final V(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
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

    sget-object v0, Lcom/join/android/app/common/utils/APKUtils;->b:Lcom/join/android/app/common/utils/APKUtils$Companion;

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v0 .. v6}, Lcom/join/android/app/common/utils/APKUtils$Companion;->G(Lcom/join/android/app/common/utils/APKUtils$Companion;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public static final W(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
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

    sget-object v0, Lcom/join/android/app/common/utils/APKUtils;->b:Lcom/join/android/app/common/utils/APKUtils$Companion;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/join/android/app/common/utils/APKUtils$Companion;->E(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final X(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/join/android/app/common/utils/APKUtils;->b:Lcom/join/android/app/common/utils/APKUtils$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/join/android/app/common/utils/APKUtils$Companion;->H(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static final Y(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/github/snowdream/android/app/downloader/DownloadTask;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/join/android/app/common/utils/APKUtils;->b:Lcom/join/android/app/common/utils/APKUtils$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/join/android/app/common/utils/APKUtils$Companion;->I(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    return-void
.end method

.method public static final a(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Lcom/github/snowdream/android/app/downloader/DownloadTask;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/join/android/app/common/utils/APKUtils;->b:Lcom/join/android/app/common/utils/APKUtils$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/join/android/app/common/utils/APKUtils$Companion;->c(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result p0

    return p0
.end method

.method private static final a0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/join/android/app/common/utils/APKUtils;->b:Lcom/join/android/app/common/utils/APKUtils$Companion;

    invoke-static {v0, p0, p1}, Lcom/join/android/app/common/utils/APKUtils$Companion;->b(Lcom/join/android/app/common/utils/APKUtils$Companion;Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    return-void
.end method

.method public static final b(Landroid/content/Context;Lcom/join/mgps/dto/CommonGameInfoBean;)Z
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Lcom/join/mgps/dto/CommonGameInfoBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/join/android/app/common/utils/APKUtils;->b:Lcom/join/android/app/common/utils/APKUtils$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/join/android/app/common/utils/APKUtils$Companion;->d(Landroid/content/Context;Lcom/join/mgps/dto/CommonGameInfoBean;)Z

    move-result p0

    return p0
.end method

.method public static final b0(Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/lang/String;)Z
    .locals 1
    .param p0    # Lcom/github/snowdream/android/app/downloader/DownloadTask;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/join/android/app/common/utils/APKUtils;->b:Lcom/join/android/app/common/utils/APKUtils$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/join/android/app/common/utils/APKUtils$Companion;->M(Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static final d0(Ljava/lang/String;)Z
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/join/android/app/common/utils/APKUtils;->b:Lcom/join/android/app/common/utils/APKUtils$Companion;

    invoke-virtual {v0, p0}, Lcom/join/android/app/common/utils/APKUtils$Companion;->N(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic e(Lcom/join/android/app/common/utils/APKUtils;Landroid/content/Context;Ljava/lang/String;Lcom/join/android/app/common/utils/APKUtils$DEVICE_TYPE;ILjava/lang/Object;)Z
    .locals 0

    if-nez p5, :cond_1

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 1
    sget-object p3, Lcom/join/android/app/common/utils/APKUtils$DEVICE_TYPE;->REAL:Lcom/join/android/app/common/utils/APKUtils$DEVICE_TYPE;

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/join/android/app/common/utils/APKUtils;->d(Landroid/content/Context;Ljava/lang/String;Lcom/join/android/app/common/utils/APKUtils$DEVICE_TYPE;)Z

    move-result p0

    return p0

    .line 2
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: checkInstall"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final e0(Landroid/content/Context;Lcom/join/mgps/Util/StartGameMeta;ZLandroid/content/Intent;)V
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    const-string v1, "AccountUtil_.getInstance_(context)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/join/mgps/Util/StartGameMeta;->setUserID(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/join/mgps/Util/StartGameMeta;->setPa_package_name(Ljava/lang/String;)V

    .line 3
    invoke-static {p1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->isTourist()Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/join/mgps/Util/StartGameMeta;->setTourist(Z)V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "GameMeta:"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 4
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    .line 5
    sget-object v0, Lcom/MApplication;->C:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v2, 0x1

    :cond_1
    if-eqz v2, :cond_2

    const/4 v0, 0x4

    const-string v1, "Papa_Stat_SharedPreferences"

    .line 6
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "DNSHttpUrl"

    const-string v1, ""

    .line 7
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-virtual {p2, p1}, Lcom/join/mgps/Util/StartGameMeta;->setDnsJson(Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :cond_2
    sget-object p1, Lcom/MApplication;->C:Ljava/lang/String;

    invoke-virtual {p2, p1}, Lcom/join/mgps/Util/StartGameMeta;->setDnsJson(Ljava/lang/String;)V

    :goto_0
    if-eqz p4, :cond_3

    .line 10
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "jsonData"

    invoke-virtual {p4, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-nez p3, :cond_3

    .line 11
    invoke-virtual {p2}, Lcom/join/mgps/Util/StartGameMeta;->getTagId()I

    move-result p1

    sget-object p3, Lcom/join/mgps/enums/ConstantIntEnum;->NDS:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {p3}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result p3

    if-ne p1, p3, :cond_3

    .line 12
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/join/mgps/Util/StartGameMeta;->getRomPath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".nds"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GAMEPATH"

    invoke-virtual {p4, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_3
    return-void
.end method

.method public static final f(Landroid/content/Context;Lkotlin/jvm/functions/Function0;)Z
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Lkotlin/jvm/functions/Function0;
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

    sget-object v0, Lcom/join/android/app/common/utils/APKUtils;->b:Lcom/join/android/app/common/utils/APKUtils$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/join/android/app/common/utils/APKUtils$Companion;->e(Landroid/content/Context;Lkotlin/jvm/functions/Function0;)Z

    move-result p0

    return p0
.end method

.method static synthetic f0(Lcom/join/android/app/common/utils/APKUtils;Landroid/content/Context;Lcom/join/mgps/Util/StartGameMeta;ZLandroid/content/Intent;ILjava/lang/Object;)V
    .locals 0

    if-nez p6, :cond_2

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    const/4 p3, 0x0

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    const/4 p4, 0x0

    .line 1
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/join/android/app/common/utils/APKUtils;->e0(Landroid/content/Context;Lcom/join/mgps/Util/StartGameMeta;ZLandroid/content/Intent;)V

    return-void

    .line 2
    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: wrapGameMeta"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final h(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 1
    .param p0    # Lcom/github/snowdream/android/app/downloader/DownloadTask;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/join/android/app/common/utils/APKUtils;->b:Lcom/join/android/app/common/utils/APKUtils$Companion;

    invoke-virtual {v0, p0}, Lcom/join/android/app/common/utils/APKUtils$Companion;->f(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    return-void
.end method

.method public static final i(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 6
    .param p0    # Lcom/github/snowdream/android/app/downloader/DownloadTask;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/join/android/app/common/utils/APKUtils;->b:Lcom/join/android/app/common/utils/APKUtils$Companion;

    const-wide/16 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lcom/join/android/app/common/utils/APKUtils$Companion;->i(Lcom/join/android/app/common/utils/APKUtils$Companion;Lcom/github/snowdream/android/app/downloader/DownloadTask;JILjava/lang/Object;)V

    return-void
.end method

.method public static final j(Lcom/github/snowdream/android/app/downloader/DownloadTask;J)V
    .locals 1
    .param p0    # Lcom/github/snowdream/android/app/downloader/DownloadTask;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/join/android/app/common/utils/APKUtils;->b:Lcom/join/android/app/common/utils/APKUtils$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/join/android/app/common/utils/APKUtils$Companion;->h(Lcom/github/snowdream/android/app/downloader/DownloadTask;J)V

    return-void
.end method

.method public static final n(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    sget-object v0, Lcom/join/android/app/common/utils/APKUtils;->b:Lcom/join/android/app/common/utils/APKUtils$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/join/android/app/common/utils/APKUtils$Companion;->j(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final q(Ljava/lang/Class;Ljava/lang/String;)[Ljava/lang/Class;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    .line 2
    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    const-string v2, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    check-cast v0, [Ljava/lang/Class;

    .line 4
    invoke-virtual {p1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object p1

    const-string v2, "mtd"

    .line 5
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v2, p1

    :goto_0
    if-ge v1, v2, :cond_1

    .line 6
    aget-object v3, p1, v1

    const-string v4, "mtd[i]"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    goto :goto_1

    .line 7
    :cond_0
    aget-object v0, p1, v1

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    const-string v3, "mtd[i].parameterTypes"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static final s(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/github/snowdream/android/app/downloader/DownloadTask;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/join/android/app/common/utils/APKUtils;->b:Lcom/join/android/app/common/utils/APKUtils$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/join/android/app/common/utils/APKUtils$Companion;->l(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    return-void
.end method

.method public static final t(Landroid/content/Context;)V
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/join/android/app/common/utils/APKUtils;->b:Lcom/join/android/app/common/utils/APKUtils$Companion;

    invoke-virtual {v0, p0}, Lcom/join/android/app/common/utils/APKUtils$Companion;->m(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final K(Landroid/content/Context;Lcom/join/mgps/Util/StartGameMeta;)V
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/join/mgps/Util/StartGameMeta;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lcom/join/android/app/common/utils/APKUtils;->O(Lcom/join/android/app/common/utils/APKUtils;Landroid/content/Context;Lcom/join/mgps/Util/StartGameMeta;ZILjava/lang/Object;)V

    return-void
.end method

.method public L(Landroid/content/Context;Lcom/join/mgps/Util/StartGameMeta;Z)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/join/mgps/Util/StartGameMeta;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "startGameMeta"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    invoke-virtual {p2}, Lcom/join/mgps/Util/StartGameMeta;->getActivityName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    :catch_0
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p3, :cond_0

    const/high16 v1, 0x800000

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const/high16 v1, 0x20000

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 5
    :goto_0
    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p2}, Lcom/join/mgps/Util/StartGameMeta;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/join/mgps/Util/StartGameMeta;->getActivityName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 7
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/join/android/app/common/utils/APKUtils;->e0(Landroid/content/Context;Lcom/join/mgps/Util/StartGameMeta;ZLandroid/content/Intent;)V

    const/4 p2, 0x0

    .line 8
    invoke-static {p1, v0, p2}, Landroidx/core/content/ContextCompat;->startActivity(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public final M(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    .line 3
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public final N(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/high16 v1, 0x800000

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x10200000

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4
    new-instance v1, Landroid/content/ComponentName;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v1, p2, p3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string p2, "android.intent.action.VIEW"

    .line 6
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 7
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public final Q(Landroid/content/Context;Lcom/join/mgps/Util/StartGameMeta;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/join/mgps/Util/StartGameMeta;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "startGameMeta"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/join/android/app/common/utils/APKUtils;->L(Landroid/content/Context;Lcom/join/mgps/Util/StartGameMeta;Z)V

    return-void
.end method

.method public final Z([B)V
    .locals 4
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    :try_start_0
    const-string v0, "X.509"

    .line 1
    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Ljava/security/cert/X509Certificate;

    .line 3
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cert.serialNumber.toString()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "signName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSigAlgName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pubKey:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "signNumber:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "subjectDN:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_0

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type java.security.cert.X509Certificate"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/security/cert/CertificateException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public final c(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lcom/join/android/app/common/utils/APKUtils;->e(Lcom/join/android/app/common/utils/APKUtils;Landroid/content/Context;Ljava/lang/String;Lcom/join/android/app/common/utils/APKUtils$DEVICE_TYPE;ILjava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final c0(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pak"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "package:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DELETE"

    invoke-direct {v0, v1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public final d(Landroid/content/Context;Ljava/lang/String;Lcom/join/android/app/common/utils/APKUtils$DEVICE_TYPE;)Z
    .locals 5
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/join/android/app/common/utils/APKUtils$DEVICE_TYPE;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p3}, Lcom/join/android/app/common/utils/APKUtils$DEVICE_TYPE;->value()I

    move-result v0

    sget-object v1, Lcom/join/android/app/common/utils/APKUtils$DEVICE_TYPE;->VM:Lcom/join/android/app/common/utils/APKUtils$DEVICE_TYPE;

    invoke-virtual {v1}, Lcom/join/android/app/common/utils/APKUtils$DEVICE_TYPE;->value()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    invoke-virtual {p3}, Lcom/join/android/app/common/utils/APKUtils$DEVICE_TYPE;->value()I

    move-result v0

    sget-object v1, Lcom/join/android/app/common/utils/APKUtils$DEVICE_TYPE;->ALL:Lcom/join/android/app/common/utils/APKUtils$DEVICE_TYPE;

    invoke-virtual {v1}, Lcom/join/android/app/common/utils/APKUtils$DEVICE_TYPE;->value()I

    move-result v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 2
    :cond_1
    :goto_0
    sget-object v0, Lcom/join/mgps/va/overmind/e;->n:Lcom/join/mgps/va/overmind/e$a;

    invoke-virtual {v0}, Lcom/join/mgps/va/overmind/e$a;->b()Lcom/join/mgps/va/overmind/e;

    move-result-object v0

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v1, 0x2

    const/4 v3, 0x0

    invoke-static {v0, p2, v2, v1, v3}, Lcom/join/mgps/va/overmind/e;->F(Lcom/join/mgps/va/overmind/e;Ljava/lang/String;IILjava/lang/Object;)Z

    move-result v0

    .line 3
    :goto_1
    invoke-virtual {p3}, Lcom/join/android/app/common/utils/APKUtils$DEVICE_TYPE;->value()I

    move-result v1

    sget-object v3, Lcom/join/android/app/common/utils/APKUtils$DEVICE_TYPE;->REAL:Lcom/join/android/app/common/utils/APKUtils$DEVICE_TYPE;

    invoke-virtual {v3}, Lcom/join/android/app/common/utils/APKUtils$DEVICE_TYPE;->value()I

    move-result v3

    const/4 v4, 0x1

    if-eq v1, v3, :cond_2

    invoke-virtual {p3}, Lcom/join/android/app/common/utils/APKUtils$DEVICE_TYPE;->value()I

    move-result v1

    sget-object v3, Lcom/join/android/app/common/utils/APKUtils$DEVICE_TYPE;->ALL:Lcom/join/android/app/common/utils/APKUtils$DEVICE_TYPE;

    invoke-virtual {v3}, Lcom/join/android/app/common/utils/APKUtils$DEVICE_TYPE;->value()I

    move-result v3

    if-ne v1, v3, :cond_3

    .line 4
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 5
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 6
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/16 v3, 0x2000

    .line 7
    invoke-virtual {p1, p2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    const-string v3, "context.packageManager.g\u2026ACKAGES\n                )"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    const/4 p1, 0x1

    goto :goto_3

    .line 8
    :catch_0
    :try_start_1
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 9
    invoke-virtual {v1, p2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 10
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    array-length p1, p1
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    if-lez p1, :cond_3

    goto :goto_2

    :catch_1
    :cond_3
    const/4 p1, 0x0

    .line 11
    :goto_3
    invoke-virtual {p3}, Lcom/join/android/app/common/utils/APKUtils$DEVICE_TYPE;->value()I

    move-result p2

    sget-object v1, Lcom/join/android/app/common/utils/APKUtils$DEVICE_TYPE;->VM:Lcom/join/android/app/common/utils/APKUtils$DEVICE_TYPE;

    invoke-virtual {v1}, Lcom/join/android/app/common/utils/APKUtils$DEVICE_TYPE;->value()I

    move-result v1

    if-ne p2, v1, :cond_4

    move v2, v0

    goto :goto_4

    .line 12
    :cond_4
    invoke-virtual {p3}, Lcom/join/android/app/common/utils/APKUtils$DEVICE_TYPE;->value()I

    move-result p2

    sget-object p3, Lcom/join/android/app/common/utils/APKUtils$DEVICE_TYPE;->REAL:Lcom/join/android/app/common/utils/APKUtils$DEVICE_TYPE;

    invoke-virtual {p3}, Lcom/join/android/app/common/utils/APKUtils$DEVICE_TYPE;->value()I

    move-result p3

    if-ne p2, p3, :cond_5

    move v2, p1

    goto :goto_4

    :cond_5
    if-nez p1, :cond_6

    if-eqz v0, :cond_7

    :cond_6
    const/4 v2, 0x1

    :cond_7
    :goto_4
    return v2
.end method

.method public final g(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    const-string p2, "context.assets.open(fileName!!)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p2}, Ljava/io/File;->createNewFile()Z

    .line 4
    new-instance p3, Ljava/io/FileOutputStream;

    invoke-direct {p3, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 p2, 0x400

    new-array p2, p2, [B

    .line 5
    :goto_0
    invoke-virtual {p1, p2}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-lez v1, :cond_0

    .line 6
    invoke-virtual {p3, p2, v0, v1}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p3}, Ljava/io/FileOutputStream;->close()V

    .line 8
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    return v0
.end method

.method public final k(Landroid/content/Context;Ljava/lang/String;)Lcom/join/android/app/common/utils/APKUtils$a;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pak"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/join/android/app/common/utils/APKUtils$DEVICE_TYPE;->REAL:Lcom/join/android/app/common/utils/APKUtils$DEVICE_TYPE;

    invoke-virtual {p0, p1, p2, v0}, Lcom/join/android/app/common/utils/APKUtils;->l(Landroid/content/Context;Ljava/lang/String;Lcom/join/android/app/common/utils/APKUtils$DEVICE_TYPE;)Lcom/join/android/app/common/utils/APKUtils$a;

    move-result-object p1

    return-object p1
.end method

.method public final l(Landroid/content/Context;Ljava/lang/String;Lcom/join/android/app/common/utils/APKUtils$DEVICE_TYPE;)Lcom/join/android/app/common/utils/APKUtils$a;
    .locals 11
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/join/android/app/common/utils/APKUtils$DEVICE_TYPE;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pkg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-gt v3, v0, :cond_5

    if-nez v4, :cond_0

    move v5, v3

    goto :goto_1

    :cond_0
    move v5, v0

    .line 2
    :goto_1
    invoke-interface {p2, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v6, 0x20

    .line 3
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v5

    if-gtz v5, :cond_1

    const/4 v5, 0x1

    goto :goto_2

    :cond_1
    const/4 v5, 0x0

    :goto_2
    if-nez v4, :cond_3

    if-nez v5, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    if-nez v5, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_5
    :goto_3
    add-int/2addr v0, v1

    .line 4
    invoke-interface {p2, v3, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p2

    .line 5
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .line 6
    new-instance v0, Lcom/join/android/app/common/utils/APKUtils$a;

    invoke-direct {v0, p0}, Lcom/join/android/app/common/utils/APKUtils$a;-><init>(Lcom/join/android/app/common/utils/APKUtils;)V

    .line 7
    invoke-virtual {p3}, Lcom/join/android/app/common/utils/APKUtils$DEVICE_TYPE;->value()I

    move-result v3

    sget-object v4, Lcom/join/android/app/common/utils/APKUtils$DEVICE_TYPE;->REAL:Lcom/join/android/app/common/utils/APKUtils$DEVICE_TYPE;

    invoke-virtual {v4}, Lcom/join/android/app/common/utils/APKUtils$DEVICE_TYPE;->value()I

    move-result v4

    const/4 v9, 0x0

    if-eq v3, v4, :cond_6

    invoke-virtual {p3}, Lcom/join/android/app/common/utils/APKUtils$DEVICE_TYPE;->value()I

    move-result v3

    sget-object v4, Lcom/join/android/app/common/utils/APKUtils$DEVICE_TYPE;->ALL:Lcom/join/android/app/common/utils/APKUtils$DEVICE_TYPE;

    invoke-virtual {v4}, Lcom/join/android/app/common/utils/APKUtils$DEVICE_TYPE;->value()I

    move-result v4

    if-ne v3, v4, :cond_7

    .line 8
    :cond_6
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    .line 9
    :try_start_0
    invoke-static/range {v3 .. v8}, Lcom/join/android/app/common/utils/APKUtils;->e(Lcom/join/android/app/common/utils/APKUtils;Landroid/content/Context;Ljava/lang/String;Lcom/join/android/app/common/utils/APKUtils$DEVICE_TYPE;ILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 10
    invoke-virtual {v10, p2, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 11
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 12
    iget v4, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 13
    iget-object v5, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {v5, p1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 14
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v5, "appinfo.packageName"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 15
    :try_start_1
    invoke-virtual {v0, v4}, Lcom/join/android/app/common/utils/APKUtils$a;->i(I)V

    .line 16
    invoke-virtual {v0, v3}, Lcom/join/android/app/common/utils/APKUtils$a;->j(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v0, p1}, Lcom/join/android/app/common/utils/APKUtils$a;->f(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v0, v1}, Lcom/join/android/app/common/utils/APKUtils$a;->h(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v0, v9}, Lcom/join/android/app/common/utils/APKUtils$a;->g(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    goto :goto_4

    :cond_7
    move-object v1, p2

    goto :goto_5

    :catch_1
    move-exception p1

    move-object v1, p2

    .line 20
    :goto_4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 21
    :goto_5
    invoke-virtual {p3}, Lcom/join/android/app/common/utils/APKUtils$DEVICE_TYPE;->value()I

    move-result p1

    sget-object v3, Lcom/join/android/app/common/utils/APKUtils$DEVICE_TYPE;->VM:Lcom/join/android/app/common/utils/APKUtils$DEVICE_TYPE;

    invoke-virtual {v3}, Lcom/join/android/app/common/utils/APKUtils$DEVICE_TYPE;->value()I

    move-result v3

    if-eq p1, v3, :cond_8

    invoke-virtual {p3}, Lcom/join/android/app/common/utils/APKUtils$DEVICE_TYPE;->value()I

    move-result p1

    sget-object p3, Lcom/join/android/app/common/utils/APKUtils$DEVICE_TYPE;->ALL:Lcom/join/android/app/common/utils/APKUtils$DEVICE_TYPE;

    invoke-virtual {p3}, Lcom/join/android/app/common/utils/APKUtils$DEVICE_TYPE;->value()I

    move-result p3

    if-ne p1, p3, :cond_a

    .line 22
    :cond_8
    sget-object p1, Lcom/join/mgps/va/overmind/e;->n:Lcom/join/mgps/va/overmind/e$a;

    invoke-virtual {p1}, Lcom/join/mgps/va/overmind/e$a;->b()Lcom/join/mgps/va/overmind/e;

    move-result-object p3

    const/4 v3, 0x2

    invoke-static {p3, p2, v2, v3, v9}, Lcom/join/mgps/va/overmind/e;->F(Lcom/join/mgps/va/overmind/e;Ljava/lang/String;IILjava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_a

    .line 23
    invoke-virtual {p1}, Lcom/join/mgps/va/overmind/e$a;->b()Lcom/join/mgps/va/overmind/e;

    move-result-object p1

    invoke-static {p1, p2, v2, v3, v9}, Lcom/join/mgps/va/overmind/e;->s(Lcom/join/mgps/va/overmind/e;Ljava/lang/String;IILjava/lang/Object;)Lr1/a;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 24
    iget p2, p1, Lr1/a;->k:I

    invoke-virtual {v0, p2}, Lcom/join/android/app/common/utils/APKUtils$a;->i(I)V

    .line 25
    iget-object p2, p1, Lr1/a;->l:Ljava/lang/String;

    invoke-virtual {v0, p2}, Lcom/join/android/app/common/utils/APKUtils$a;->j(Ljava/lang/String;)V

    .line 26
    iget-object p2, p1, Lr1/a;->e:Ljava/lang/CharSequence;

    if-eqz p2, :cond_9

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    :cond_9
    invoke-virtual {v0, v9}, Lcom/join/android/app/common/utils/APKUtils$a;->f(Ljava/lang/String;)V

    .line 27
    invoke-virtual {v0, v1}, Lcom/join/android/app/common/utils/APKUtils$a;->h(Ljava/lang/String;)V

    .line 28
    iget-object p1, p1, Lr1/a;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Lcom/join/android/app/common/utils/APKUtils$a;->g(Landroid/graphics/drawable/Drawable;)V

    :cond_a
    return-object v0
.end method

.method public final m(Landroid/content/Context;)Ljava/util/List;
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/join/android/app/common/utils/APKUtils$a;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p1, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v2

    const-string v3, "packageManager.getInstalledPackages(0)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    if-ge v1, v3, :cond_2

    .line 5
    :try_start_1
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 6
    :try_start_2
    iget-object v5, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    and-int/lit8 v6, v5, 0x1

    if-nez v6, :cond_1

    and-int/lit16 v5, v5, 0x80

    if-eqz v5, :cond_0

    goto :goto_1

    :catch_0
    move-exception v5

    .line 7
    :try_start_3
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 8
    :cond_0
    new-instance v5, Lcom/join/android/app/common/utils/APKUtils$a;

    invoke-direct {v5, p0}, Lcom/join/android/app/common/utils/APKUtils$a;-><init>(Lcom/join/android/app/common/utils/APKUtils;)V

    .line 9
    iget-object v6, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 10
    invoke-virtual {p1, v6}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/join/android/app/common/utils/APKUtils$a;->f(Ljava/lang/String;)V

    .line 11
    iget-object v6, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/join/android/app/common/utils/APKUtils$a;->h(Ljava/lang/String;)V

    .line 12
    iget-object v6, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/join/android/app/common/utils/APKUtils$a;->j(Ljava/lang/String;)V

    .line 13
    iget v4, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v5, v4}, Lcom/join/android/app/common/utils/APKUtils$a;->i(I)V

    const/4 v4, 0x0

    .line 14
    invoke-virtual {v5, v4}, Lcom/join/android/app/common/utils/APKUtils$a;->g(Landroid/graphics/drawable/Drawable;)V

    .line 15
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v4

    .line 16
    :try_start_4
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_2
    move-exception p1

    .line 17
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    return-object v0
.end method

.method public final o(Landroid/content/Context;)Ljava/util/List;
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/join/android/app/common/utils/APKUtils$a;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p1, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v2

    const-string v3, "packageManager.getInstalledPackages(0)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    if-ge v1, v3, :cond_2

    .line 5
    :try_start_1
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 6
    :try_start_2
    iget-object v5, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v6, v5, 0x1

    if-nez v6, :cond_0

    and-int/lit16 v5, v5, 0x80

    if-eqz v5, :cond_1

    .line 7
    :cond_0
    new-instance v5, Lcom/join/android/app/common/utils/APKUtils$a;

    invoke-direct {v5, p0}, Lcom/join/android/app/common/utils/APKUtils$a;-><init>(Lcom/join/android/app/common/utils/APKUtils;)V

    .line 8
    iget-object v6, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 9
    invoke-virtual {p1, v6}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/join/android/app/common/utils/APKUtils$a;->f(Ljava/lang/String;)V

    .line 10
    iget-object v6, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/join/android/app/common/utils/APKUtils$a;->h(Ljava/lang/String;)V

    .line 11
    iget-object v6, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/join/android/app/common/utils/APKUtils$a;->j(Ljava/lang/String;)V

    .line 12
    iget v4, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v5, v4}, Lcom/join/android/app/common/utils/APKUtils$a;->i(I)V

    const/4 v4, 0x0

    .line 13
    invoke-virtual {v5, v4}, Lcom/join/android/app/common/utils/APKUtils$a;->g(Landroid/graphics/drawable/Drawable;)V

    .line 14
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    .line 15
    :try_start_3
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v4

    .line 16
    :try_start_4
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_2
    move-exception p1

    .line 17
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    return-object v0
.end method

.method public final p(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 2
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 3
    iget-object v0, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 4
    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 5
    iget-object p1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5305\u540d\u662f\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    iget-object p2, p2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u7248\u672c\u4fe1\u606f\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final r(Landroid/content/Context;Ljava/io/File;)Lcom/join/android/app/common/utils/APKUtils$a;
    .locals 5
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "apkFile"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/join/android/app/common/utils/APKUtils$a;

    invoke-direct {v0, p0}, Lcom/join/android/app/common/utils/APKUtils$a;-><init>(Lcom/join/android/app/common/utils/APKUtils;)V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 3
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x1

    invoke-virtual {p1, p2, v1}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p2

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 4
    iget-object v1, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 5
    iget-object p2, p2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 6
    invoke-virtual {p1, v1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 7
    invoke-virtual {p1, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p1

    const-string v3, "null cannot be cast to non-null type kotlin.String"

    invoke-static {p1, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 8
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object v4, v1

    move-object v1, p2

    move-object p2, v4

    goto :goto_0

    :cond_0
    move-object p1, v1

    move-object p2, p1

    move-object v2, p2

    .line 9
    :goto_0
    invoke-virtual {v0, v1}, Lcom/join/android/app/common/utils/APKUtils$a;->j(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v0, p1}, Lcom/join/android/app/common/utils/APKUtils$a;->f(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v0, p2}, Lcom/join/android/app/common/utils/APKUtils$a;->h(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v0, v2}, Lcom/join/android/app/common/utils/APKUtils$a;->g(Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method public final u(Landroid/app/Activity;Ljava/io/File;)V
    .locals 5
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "apkFile"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    const/4 v3, 0x1

    const-string v4, "application/vnd.android.package-archive"

    if-lt v1, v2, :cond_1

    .line 4
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".fileprovider"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-static {p1, v1, p2}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    const-string v1, "FileProvider.getUriForFi\u2026    apkFile\n            )"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0, p2, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 8
    :cond_1
    invoke-static {p2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {v0, p2, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 9
    :goto_0
    invoke-virtual {p1, v0, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public final v(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 4
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lcom/join/mgps/pref/PrefDef_;

    invoke-direct {v0, p1}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v1

    invoke-virtual {v1, p2}, Lg1/f;->A(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 3
    sget-object v2, Lcom/MApplication;->q:Lcom/MApplication;

    const-string v3, "MApplication.instance"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/MApplication;->getActivity()Landroid/app/Activity;

    move-result-object v2

    instance-of v2, v2, Lcom/join/mgps/activity/ModGameIndexActivity;

    if-nez v2, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->lastInstallApp()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 5
    :cond_0
    sget-object v0, Lcom/join/mgps/enums/Dtype;->MOD:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/join/android/app/common/utils/APKUtils;->b:Lcom/join/android/app/common/utils/APKUtils$Companion;

    invoke-virtual {v0, v1}, Lcom/join/android/app/common/utils/APKUtils$Companion;->v(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    :cond_1
    sget-object p2, Lcom/join/android/app/common/utils/APKUtils;->b:Lcom/join/android/app/common/utils/APKUtils$Companion;

    invoke-virtual {p2, p1, v1}, Lcom/join/android/app/common/utils/APKUtils$Companion;->n(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    return-void

    .line 7
    :cond_2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/join/android/app/common/utils/APKUtils;->u(Landroid/app/Activity;Ljava/io/File;)V

    return-void
.end method

.method public final w(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/net/Uri;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "android.permission.REQUEST_INSTALL_PACKAGES"

    .line 1
    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->c2(Landroid/content/Context;Ljava/lang/String;)V

    .line 2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v2, "application/vnd.android.package-archive"

    const/16 v3, 0x18

    if-lt v1, v3, :cond_0

    const/4 v1, 0x1

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 6
    invoke-virtual {v0, p2, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0, p2, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 8
    :goto_0
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public final x(Landroid/content/Context;Ljava/io/File;)V
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "apkFile"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, " permissxx   installApk4"

    .line 1
    invoke-static {v0}, Lcom/join/mgps/Util/t0;->c(Ljava/lang/String;)V

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "android.intent.action.VIEW"

    const/16 v2, 0x18

    const-string v3, "application/vnd.android.package-archive"

    const/high16 v4, 0x10000000

    if-ge v0, v2, :cond_0

    .line 3
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5
    invoke-static {p2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    :try_start_0
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 8
    :cond_0
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v5, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    if-lt v0, v2, :cond_2

    const/4 v0, 0x1

    .line 10
    invoke-virtual {v5, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v0, "FileProvider.getUriForFi\u2026apkFile\n                )"

    if-eqz p1, :cond_1

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".fileprovider"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 12
    invoke-static {p1, v1, p2}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 13
    :cond_1
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v1, "com.join.android.app.mgsim.wufun.fileprovider"

    .line 14
    invoke-static {p1, v1, p2}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    :goto_0
    invoke-virtual {v5, v1, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 16
    :cond_2
    invoke-static {p2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 17
    invoke-virtual {v5, v0, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 18
    :goto_1
    :try_start_1
    instance-of v0, p1, Landroid/app/Service;

    if-eqz v0, :cond_3

    .line 19
    invoke-virtual {v5, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 20
    :cond_3
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 21
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    const-string v0, " permissxx   installApk"

    .line 22
    invoke-static {v0}, Lcom/join/mgps/Util/t0;->c(Ljava/lang/String;)V

    .line 23
    invoke-static {p1}, Lcom/join/mgps/Util/l1;->b(Landroid/content/Context;)Z

    move-result v0

    .line 24
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    const-string v3, "android.permission.REQUEST_INSTALL_PACKAGES"

    if-lt v1, v2, :cond_5

    .line 25
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->canRequestPackageInstalls()Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    :cond_4
    const-string v0, " permissxx   installApk2"

    .line 26
    invoke-static {v0}, Lcom/join/mgps/Util/t0;->c(Ljava/lang/String;)V

    .line 27
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    .line 28
    invoke-static {p1, v3, p2}, Lcom/join/mgps/Util/UtilsMy;->d2(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    if-nez v0, :cond_6

    const-string v0, " permissxx   installApk3"

    .line 29
    invoke-static {v0}, Lcom/join/mgps/Util/t0;->c(Ljava/lang/String;)V

    .line 30
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    .line 31
    invoke-static {p1, v3, p2}, Lcom/join/mgps/Util/UtilsMy;->d2(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_3
    return-void
.end method

.method public final y(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 2
    new-instance v0, Lcom/join/mgps/pref/PrefDef_;

    invoke-direct {v0, p1}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    .line 3
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v1

    invoke-virtual {v1, p2}, Lg1/f;->A(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 4
    sget-object v2, Lcom/MApplication;->q:Lcom/MApplication;

    const-string v3, "MApplication.instance"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/MApplication;->getActivity()Landroid/app/Activity;

    move-result-object v2

    instance-of v2, v2, Lcom/join/mgps/activity/ModGameIndexActivity;

    if-nez v2, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->lastInstallApp()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 6
    :cond_0
    sget-object v0, Lcom/join/mgps/enums/Dtype;->MOD:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/join/android/app/common/utils/APKUtils;->b:Lcom/join/android/app/common/utils/APKUtils$Companion;

    invoke-virtual {v0, v1}, Lcom/join/android/app/common/utils/APKUtils$Companion;->v(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    :cond_1
    sget-object p2, Lcom/join/android/app/common/utils/APKUtils;->b:Lcom/join/android/app/common/utils/APKUtils$Companion;

    invoke-virtual {p2, p1, v1}, Lcom/join/android/app/common/utils/APKUtils$Companion;->n(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    return-void

    .line 8
    :cond_2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/join/android/app/common/utils/APKUtils;->x(Landroid/content/Context;Ljava/io/File;)V

    return-void
.end method

.method public final z(Ljava/io/File;)V
    .locals 6
    .param p1    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "installPackage"

    const-string v1, "getPackageManager"

    :try_start_0
    const-string v2, "android.app.ActivityThread"

    .line 1
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "Class.forName(\"android.app.ActivityThread\")"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, v2, v1}, Lcom/join/android/app/common/utils/APKUtils;->q(Ljava/lang/Class;Ljava/lang/String;)[Ljava/lang/Class;

    move-result-object v3

    .line 3
    array-length v4, v3

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Class;

    invoke-virtual {v2, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const-string v3, "activityTherad.getMethod\u2026ageManager\", *paramTypes)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    .line 4
    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 6
    invoke-direct {p0, v2, v0}, Lcom/join/android/app/common/utils/APKUtils;->q(Ljava/lang/Class;Ljava/lang/String;)[Ljava/lang/Class;

    move-result-object v4

    .line 7
    array-length v5, v4

    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Class;

    invoke-virtual {v2, v0, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const-string v2, "pmService.getMethod(\"ins\u2026llPackage\", *paramTypes1)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    .line 8
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    aput-object p1, v2, v3

    const/4 p1, 0x1

    const/4 v4, 0x0

    aput-object v4, v2, p1

    const/4 p1, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, p1

    const/4 p1, 0x3

    aput-object v4, v2, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception p1

    .line 12
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    :catch_4
    move-exception p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    :goto_0
    return-void
.end method
