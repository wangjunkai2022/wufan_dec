.class Lcom/join/mgps/adapter/h4$j1;
.super Ljava/lang/Object;
.source "PapaMainAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/h4;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/adapter/h4;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/h4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/h4$j1;->a:Lcom/join/mgps/adapter/h4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/join/mgps/adapter/h4$j1;->a:Lcom/join/mgps/adapter/h4;

    invoke-static {p1}, Lcom/join/mgps/adapter/h4;->o(Lcom/join/mgps/adapter/h4;)Landroid/content/Context;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/join/mgps/adapter/h4$j1;->a:Lcom/join/mgps/adapter/h4;

    invoke-static {v1}, Lcom/join/mgps/adapter/h4;->o(Lcom/join/mgps/adapter/h4;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/join/kotlin/EverdayNewGameActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/adapter/h4$j1;->a:Lcom/join/mgps/adapter/h4;

    const-string v0, "3-3"

    invoke-static {p1, v0}, Lcom/join/mgps/adapter/h4;->p(Lcom/join/mgps/adapter/h4;Ljava/lang/String;)V

    return-void
.end method
