.class final Lcom/join/kotlin/ui/cloudarchive/dialog/CommentArchiveDialog$onCreateView$1;
.super Lkotlin/jvm/internal/Lambda;
.source "CommentArchiveDialog.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/ui/cloudarchive/dialog/CommentArchiveDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
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
        "\u0000\u000e\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "",
        "it",
        "",
        "invoke",
        "(I)V",
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
.field final synthetic this$0:Lcom/join/kotlin/ui/cloudarchive/dialog/CommentArchiveDialog;


# direct methods
.method constructor <init>(Lcom/join/kotlin/ui/cloudarchive/dialog/CommentArchiveDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/dialog/CommentArchiveDialog$onCreateView$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/dialog/CommentArchiveDialog;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/join/kotlin/ui/cloudarchive/dialog/CommentArchiveDialog$onCreateView$1;->invoke(I)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/dialog/CommentArchiveDialog$onCreateView$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/dialog/CommentArchiveDialog;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    const-string v0, "\u8bc4\u4ef7\u6210\u529f"

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/dialog/CommentArchiveDialog$onCreateView$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/dialog/CommentArchiveDialog;

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/dialog/CommentArchiveDialog$onCreateView$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/dialog/CommentArchiveDialog;

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    :goto_0
    return-void
.end method
