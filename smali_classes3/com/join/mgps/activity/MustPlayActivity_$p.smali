.class Lcom/join/mgps/activity/MustPlayActivity_$p;
.super Ljava/lang/Object;
.source "MustPlayActivity_.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/MustPlayActivity_;->onViewChanged(Li3/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/MustPlayActivity_;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/MustPlayActivity_;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/MustPlayActivity_$p;->a:Lcom/join/mgps/activity/MustPlayActivity_;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MustPlayActivity_$p;->a:Lcom/join/mgps/activity/MustPlayActivity_;

    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/MustPlayActivity;->onClick(Landroid/view/View;)V

    return-void
.end method
