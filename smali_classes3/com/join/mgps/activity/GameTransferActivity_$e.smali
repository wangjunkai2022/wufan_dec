.class Lcom/join/mgps/activity/GameTransferActivity_$e;
.super Ljava/lang/Object;
.source "GameTransferActivity_.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/GameTransferActivity_;->onViewChanged(Li3/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/GameTransferActivity_;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/GameTransferActivity_;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/GameTransferActivity_$e;->a:Lcom/join/mgps/activity/GameTransferActivity_;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity_$e;->a:Lcom/join/mgps/activity/GameTransferActivity_;

    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/GameTransferActivity;->onClick(Landroid/view/View;)V

    return-void
.end method
