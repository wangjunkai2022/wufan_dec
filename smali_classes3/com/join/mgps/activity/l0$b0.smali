.class Lcom/join/mgps/activity/l0$b0;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "GamedetialModleFiveFragemnt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/l0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b0"
.end annotation


# instance fields
.field a:Landroid/widget/ImageView;

.field final synthetic b:Lcom/join/mgps/activity/l0;


# direct methods
.method public constructor <init>(Lcom/join/mgps/activity/l0;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/l0$b0;->b:Lcom/join/mgps/activity/l0;

    .line 2
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f090709

    .line 3
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/join/mgps/activity/l0$b0;->a:Landroid/widget/ImageView;

    return-void
.end method
