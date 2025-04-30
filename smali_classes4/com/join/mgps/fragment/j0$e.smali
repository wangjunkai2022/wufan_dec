.class Lcom/join/mgps/fragment/j0$e;
.super Ljava/lang/Object;
.source "DownloadMYGameFragment_.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/j0;->onViewChanged(Li3/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/fragment/j0;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/j0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/j0$e;->a:Lcom/join/mgps/fragment/j0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/fragment/j0$e;->a:Lcom/join/mgps/fragment/j0;

    invoke-virtual {p1}, Lcom/join/mgps/fragment/i0;->setNetwork()V

    return-void
.end method
