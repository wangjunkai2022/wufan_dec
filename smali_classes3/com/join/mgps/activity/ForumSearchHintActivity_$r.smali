.class Lcom/join/mgps/activity/ForumSearchHintActivity_$r;
.super Ljava/lang/Object;
.source "ForumSearchHintActivity_.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ForumSearchHintActivity_;->onViewChanged(Li3/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/ForumSearchHintActivity_;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ForumSearchHintActivity_;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ForumSearchHintActivity_$r;->a:Lcom/join/mgps/activity/ForumSearchHintActivity_;

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
    iget-object p1, p0, Lcom/join/mgps/activity/ForumSearchHintActivity_$r;->a:Lcom/join/mgps/activity/ForumSearchHintActivity_;

    invoke-virtual {p1, p3}, Lcom/join/mgps/activity/ForumSearchHintActivity;->Q0(I)V

    return-void
.end method
