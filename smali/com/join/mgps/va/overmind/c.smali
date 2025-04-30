.class public final Lcom/join/mgps/va/overmind/c;
.super Ljava/lang/Object;
.source "NativeLibraryHelperCompat.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/va/overmind/c$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0004\u0018\u0000 \u00042\u00020\u0001:\u0001\u0004B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/join/mgps/va/overmind/c;",
        "",
        "<init>",
        "()V",
        "a",
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
.field public static final a:Lcom/join/mgps/va/overmind/c$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/join/mgps/va/overmind/c$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/join/mgps/va/overmind/c$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/join/mgps/va/overmind/c;->a:Lcom/join/mgps/va/overmind/c$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Ljava/util/Set;)Z
    .locals 1
    .param p0    # Ljava/util/Set;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/join/mgps/va/overmind/c;->a:Lcom/join/mgps/va/overmind/c$a;

    invoke-virtual {v0, p0}, Lcom/join/mgps/va/overmind/c$a;->a(Ljava/util/Set;)Z

    move-result p0

    return p0
.end method

.method public static final b(Ljava/util/Set;)Z
    .locals 1
    .param p0    # Ljava/util/Set;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/join/mgps/va/overmind/c;->a:Lcom/join/mgps/va/overmind/c$a;

    invoke-virtual {v0, p0}, Lcom/join/mgps/va/overmind/c$a;->b(Ljava/util/Set;)Z

    move-result p0

    return p0
.end method

.method public static final c([Ljava/lang/String;Ljava/util/Set;)Ljava/lang/String;
    .locals 1
    .param p0    # [Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/Set;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    sget-object v0, Lcom/join/mgps/va/overmind/c;->a:Lcom/join/mgps/va/overmind/c$a;

    invoke-virtual {v0, p0, p1}, Lcom/join/mgps/va/overmind/c$a;->c([Ljava/lang/String;Ljava/util/Set;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final d(Ljava/lang/String;)Ljava/util/Set;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/join/mgps/va/overmind/c;->a:Lcom/join/mgps/va/overmind/c$a;

    invoke-virtual {v0, p0}, Lcom/join/mgps/va/overmind/c$a;->d(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static final e(Ljava/lang/String;)Z
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/join/mgps/va/overmind/c;->a:Lcom/join/mgps/va/overmind/c$a;

    invoke-virtual {v0, p0}, Lcom/join/mgps/va/overmind/c$a;->e(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static final f(Ljava/lang/String;)Z
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/join/mgps/va/overmind/c;->a:Lcom/join/mgps/va/overmind/c$a;

    invoke-virtual {v0, p0}, Lcom/join/mgps/va/overmind/c$a;->f(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
