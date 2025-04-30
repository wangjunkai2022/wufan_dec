.class Lcom/join/mgps/fragment/u3$a;
.super Ljava/lang/Object;
.source "PaPaLocalGameFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/u3;->afterViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/fragment/u3;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/u3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/u3$a;->a:Lcom/join/mgps/fragment/u3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/fragment/u3$a;->a:Lcom/join/mgps/fragment/u3;

    invoke-static {p1}, Lcom/join/mgps/fragment/u3;->M(Lcom/join/mgps/fragment/u3;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 2
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    const-string p3, "gameInfo"

    .line 3
    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 4
    iget-object p1, p0, Lcom/join/mgps/fragment/u3$a;->a:Lcom/join/mgps/fragment/u3;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    const/4 p3, -0x1

    invoke-virtual {p1, p3, p2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 5
    iget-object p1, p0, Lcom/join/mgps/fragment/u3$a;->a:Lcom/join/mgps/fragment/u3;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
