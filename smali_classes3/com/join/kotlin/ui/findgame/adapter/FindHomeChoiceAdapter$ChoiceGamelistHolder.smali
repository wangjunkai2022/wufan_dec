.class public final Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter$ChoiceGamelistHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "FindHomeChoiceAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ChoiceGamelistHolder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\t\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\n\u0010\u0008R\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter$ChoiceGamelistHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "Lcom/join/android/app/mgsim/wufun/databinding/t5;",
        "binding",
        "Lcom/join/android/app/mgsim/wufun/databinding/t5;",
        "getBinding",
        "()Lcom/join/android/app/mgsim/wufun/databinding/t5;",
        "setBinding",
        "(Lcom/join/android/app/mgsim/wufun/databinding/t5;)V",
        "bindingi",
        "<init>",
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
.field private binding:Lcom/join/android/app/mgsim/wufun/databinding/t5;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/join/android/app/mgsim/wufun/databinding/t5;)V
    .locals 1
    .param p1    # Lcom/join/android/app/mgsim/wufun/databinding/t5;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "bindingi"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/join/android/app/mgsim/wufun/databinding/t5;->b()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 2
    iput-object p1, p0, Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter$ChoiceGamelistHolder;->binding:Lcom/join/android/app/mgsim/wufun/databinding/t5;

    return-void
.end method


# virtual methods
.method public final getBinding()Lcom/join/android/app/mgsim/wufun/databinding/t5;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter$ChoiceGamelistHolder;->binding:Lcom/join/android/app/mgsim/wufun/databinding/t5;

    return-object v0
.end method

.method public final setBinding(Lcom/join/android/app/mgsim/wufun/databinding/t5;)V
    .locals 1
    .param p1    # Lcom/join/android/app/mgsim/wufun/databinding/t5;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter$ChoiceGamelistHolder;->binding:Lcom/join/android/app/mgsim/wufun/databinding/t5;

    return-void
.end method
