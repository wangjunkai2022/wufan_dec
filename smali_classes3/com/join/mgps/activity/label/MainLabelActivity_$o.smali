.class Lcom/join/mgps/activity/label/MainLabelActivity_$o;
.super Ljava/lang/Object;
.source "MainLabelActivity_.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/label/MainLabelActivity_;->onViewChanged(Li3/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/label/MainLabelActivity_;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/label/MainLabelActivity_;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/label/MainLabelActivity_$o;->a:Lcom/join/mgps/activity/label/MainLabelActivity_;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/label/MainLabelActivity_$o;->a:Lcom/join/mgps/activity/label/MainLabelActivity_;

    invoke-virtual {p1}, Lcom/join/mgps/activity/label/MainLabelActivity;->setNetwork()V

    return-void
.end method
