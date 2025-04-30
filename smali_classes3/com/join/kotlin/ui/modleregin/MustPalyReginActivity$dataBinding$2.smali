.class final Lcom/join/kotlin/ui/modleregin/MustPalyReginActivity$dataBinding$2;
.super Lkotlin/jvm/internal/Lambda;
.source "MustPalyReginActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/ui/modleregin/MustPalyReginActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/join/android/app/mgsim/wufun/databinding/i40;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0010\u0004\u001a\n \u0001*\u0004\u0018\u00010\u00000\u0000H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Lcom/join/android/app/mgsim/wufun/databinding/i40;",
        "kotlin.jvm.PlatformType",
        "invoke",
        "()Lcom/join/android/app/mgsim/wufun/databinding/i40;",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/join/kotlin/ui/modleregin/MustPalyReginActivity;


# direct methods
.method constructor <init>(Lcom/join/kotlin/ui/modleregin/MustPalyReginActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/join/kotlin/ui/modleregin/MustPalyReginActivity$dataBinding$2;->this$0:Lcom/join/kotlin/ui/modleregin/MustPalyReginActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/join/android/app/mgsim/wufun/databinding/i40;
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/join/kotlin/ui/modleregin/MustPalyReginActivity$dataBinding$2;->this$0:Lcom/join/kotlin/ui/modleregin/MustPalyReginActivity;

    const v1, 0x7f0c04bc

    invoke-static {v0, v1}, Landroidx/databinding/DataBindingUtil;->setContentView(Landroid/app/Activity;I)Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/join/android/app/mgsim/wufun/databinding/i40;

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/modleregin/MustPalyReginActivity$dataBinding$2;->invoke()Lcom/join/android/app/mgsim/wufun/databinding/i40;

    move-result-object v0

    return-object v0
.end method
