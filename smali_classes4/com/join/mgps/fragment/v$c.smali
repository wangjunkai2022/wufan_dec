.class Lcom/join/mgps/fragment/v$c;
.super Ljava/lang/Object;
.source "CollectionThreeSubFragment_.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/v;->onViewChanged(Li3/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/fragment/v;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/v;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/v$c;->a:Lcom/join/mgps/fragment/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/fragment/v$c;->a:Lcom/join/mgps/fragment/v;

    invoke-virtual {p1}, Lcom/join/mgps/fragment/u;->instalButtomButn()V

    return-void
.end method
