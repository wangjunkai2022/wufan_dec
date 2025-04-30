.class public final Lcom/join/android/app/mgsim/wufun/b;
.super Ljava/lang/Object;
.source "BuildConfig.java"


# static fields
.field public static final a:Z = false

.field public static final b:Ljava/lang/String; = "com.join.android.app.mgsim.wufun"

.field public static final c:Ljava/lang/String; = "release"

.field public static final d:Ljava/lang/String; = "wufunNormal"

.field public static final e:Ljava/lang/String; = "wufun"

.field public static final f:Ljava/lang/String; = "normal"

.field public static final g:I = 0x154

.field public static final h:Ljava/lang/String; = "4.9.9.6"

.field public static final i:Ljava/lang/String; = "\u609f\u996d\u6e38\u620f\u5385"

.field public static final j:Ljava/lang/String; = "com.join.android.app.mgsim.wufun.addon"

.field public static final k:Ljava/lang/String; = "1110720062"

.field public static final l:Ljava/lang/String; = "wufun"

.field public static final m:Ljava/lang/String; = "wufun"

.field public static final n:Ljava/lang/Integer;

.field public static final o:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x1a

    .line 1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/join/android/app/mgsim/wufun/b;->n:Ljava/lang/Integer;

    const/4 v0, 0x1

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/join/android/app/mgsim/wufun/b;->o:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
