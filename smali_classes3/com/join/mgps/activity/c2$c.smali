.class Lcom/join/mgps/activity/c2$c;
.super Ljava/lang/Object;
.source "NowWufunFragment_.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/c2;->onViewChanged(Li3/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/c2;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/c2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/c2$c;->a:Lcom/join/mgps/activity/c2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/c2$c;->a:Lcom/join/mgps/activity/c2;

    invoke-virtual {p1}, Lcom/join/mgps/activity/NowWufunFragment;->setNetwork()V

    return-void
.end method
