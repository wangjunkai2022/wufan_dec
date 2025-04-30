.class public final Lcom/join/mgps/va/overmind/VApp$a;
.super Ljava/lang/Object;
.source "VApp.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/va/overmind/VApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001c\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u0007\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0006\u0010\u0003\u001a\u00020\u0002R\"\u0010\u0005\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0005\u0010\u0006\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u0016\u0010\u000c\u001a\u00020\u000b8\u0006@\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\rR\u0016\u0010\u000e\u001a\u00020\u00028\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0012"
    }
    d2 = {
        "com/join/mgps/va/overmind/VApp$a",
        "",
        "Landroid/content/Context;",
        "a",
        "",
        "virtualDeviceStatus",
        "Z",
        "b",
        "()Z",
        "c",
        "(Z)V",
        "",
        "TAG",
        "Ljava/lang/String;",
        "context",
        "Landroid/content/Context;",
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
    invoke-direct {p0}, Lcom/join/mgps/va/overmind/VApp$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Landroid/content/Context;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/va/overmind/VApp;->a()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "context"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final b()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/mgps/va/overmind/VApp;->b()Z

    move-result v0

    return v0
.end method

.method public final c(Z)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/join/mgps/va/overmind/VApp;->d(Z)V

    return-void
.end method
