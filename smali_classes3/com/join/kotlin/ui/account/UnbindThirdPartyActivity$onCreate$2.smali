.class final Lcom/join/kotlin/ui/account/UnbindThirdPartyActivity$onCreate$2;
.super Ljava/lang/Object;
.source "UnbindThirdPartyActivity.kt"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/ui/account/UnbindThirdPartyActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer<",
        "Ljava/lang/Boolean;",
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
        "\u0000\u0010\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0010\u0006\u001a\u00020\u00032\u000e\u0010\u0002\u001a\n \u0001*\u0004\u0018\u00010\u00000\u0000H\n\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "",
        "kotlin.jvm.PlatformType",
        "it",
        "",
        "onChanged",
        "(Ljava/lang/Boolean;)V",
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
.field final synthetic this$0:Lcom/join/kotlin/ui/account/UnbindThirdPartyActivity;


# direct methods
.method constructor <init>(Lcom/join/kotlin/ui/account/UnbindThirdPartyActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/join/kotlin/ui/account/UnbindThirdPartyActivity$onCreate$2;->this$0:Lcom/join/kotlin/ui/account/UnbindThirdPartyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Boolean;)V
    .locals 1

    .line 2
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/join/kotlin/ui/account/UnbindThirdPartyActivity$onCreate$2;->this$0:Lcom/join/kotlin/ui/account/UnbindThirdPartyActivity;

    invoke-static {p1}, Lcom/join/kotlin/ui/account/UnbindThirdPartyActivity;->access$getViewBinding(Lcom/join/kotlin/ui/account/UnbindThirdPartyActivity;)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/wc0;

    .line 5
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/wc0;->F:Landroid/widget/TextView;

    invoke-static {p1}, Ly1/a;->b(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/join/kotlin/ui/account/UnbindThirdPartyActivity$onCreate$2;->onChanged(Ljava/lang/Boolean;)V

    return-void
.end method
