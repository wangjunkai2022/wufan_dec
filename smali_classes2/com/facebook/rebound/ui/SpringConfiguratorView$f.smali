.class Lcom/facebook/rebound/ui/SpringConfiguratorView$f;
.super Ljava/lang/Object;
.source "SpringConfiguratorView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/rebound/ui/SpringConfiguratorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "f"
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/rebound/ui/SpringConfiguratorView;


# direct methods
.method private constructor <init>(Lcom/facebook/rebound/ui/SpringConfiguratorView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/rebound/ui/SpringConfiguratorView$f;->a:Lcom/facebook/rebound/ui/SpringConfiguratorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/rebound/ui/SpringConfiguratorView;Lcom/facebook/rebound/ui/SpringConfiguratorView$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/facebook/rebound/ui/SpringConfiguratorView$f;-><init>(Lcom/facebook/rebound/ui/SpringConfiguratorView;)V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
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
    iget-object p1, p0, Lcom/facebook/rebound/ui/SpringConfiguratorView$f;->a:Lcom/facebook/rebound/ui/SpringConfiguratorView;

    invoke-static {p1}, Lcom/facebook/rebound/ui/SpringConfiguratorView;->i(Lcom/facebook/rebound/ui/SpringConfiguratorView;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/facebook/rebound/k;

    invoke-static {p1, p2}, Lcom/facebook/rebound/ui/SpringConfiguratorView;->h(Lcom/facebook/rebound/ui/SpringConfiguratorView;Lcom/facebook/rebound/k;)Lcom/facebook/rebound/k;

    .line 2
    iget-object p1, p0, Lcom/facebook/rebound/ui/SpringConfiguratorView$f;->a:Lcom/facebook/rebound/ui/SpringConfiguratorView;

    invoke-static {p1}, Lcom/facebook/rebound/ui/SpringConfiguratorView;->g(Lcom/facebook/rebound/ui/SpringConfiguratorView;)Lcom/facebook/rebound/k;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/facebook/rebound/ui/SpringConfiguratorView;->j(Lcom/facebook/rebound/ui/SpringConfiguratorView;Lcom/facebook/rebound/k;)V

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
