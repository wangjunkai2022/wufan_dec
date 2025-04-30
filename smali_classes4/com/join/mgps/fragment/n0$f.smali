.class Lcom/join/mgps/fragment/n0$f;
.super Ljava/lang/Object;
.source "FindMiniGameFragment_.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/n0;->onViewChanged(Li3/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/fragment/n0;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/n0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/n0$f;->a:Lcom/join/mgps/fragment/n0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/fragment/n0$f;->a:Lcom/join/mgps/fragment/n0;

    invoke-virtual {p1}, Lcom/join/mgps/fragment/k0;->setNetwork()V

    return-void
.end method
