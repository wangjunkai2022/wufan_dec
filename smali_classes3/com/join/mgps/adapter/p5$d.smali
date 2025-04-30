.class Lcom/join/mgps/adapter/p5$d;
.super Ljava/lang/Object;
.source "SimulatorAreaAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/p5;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/adapter/p5;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/p5;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/p5$d;->a:Lcom/join/mgps/adapter/p5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/join/mgps/adapter/p5$d;->a:Lcom/join/mgps/adapter/p5;

    invoke-static {v0}, Lcom/join/mgps/adapter/p5;->a(Lcom/join/mgps/adapter/p5;)Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "typeId"

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3
    iget-object v0, p0, Lcom/join/mgps/adapter/p5$d;->a:Lcom/join/mgps/adapter/p5;

    invoke-static {v0}, Lcom/join/mgps/adapter/p5;->b(Lcom/join/mgps/adapter/p5;)I

    move-result v0

    const-string v1, "tagId"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4
    iget-object v0, p0, Lcom/join/mgps/adapter/p5$d;->a:Lcom/join/mgps/adapter/p5;

    invoke-static {v0}, Lcom/join/mgps/adapter/p5;->c(Lcom/join/mgps/adapter/p5;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "tagName"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    iget-object v0, p0, Lcom/join/mgps/adapter/p5$d;->a:Lcom/join/mgps/adapter/p5;

    invoke-static {v0}, Lcom/join/mgps/adapter/p5;->a(Lcom/join/mgps/adapter/p5;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
