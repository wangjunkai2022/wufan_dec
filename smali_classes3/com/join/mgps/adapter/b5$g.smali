.class Lcom/join/mgps/adapter/b5$g;
.super Ljava/lang/Object;
.source "SearchAppAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/b5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "g"
.end annotation


# instance fields
.field a:Lit/sephiroth/android/library/widget/HListView;

.field final synthetic b:Lcom/join/mgps/adapter/b5;


# direct methods
.method public constructor <init>(Lcom/join/mgps/adapter/b5;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/b5$g;->b:Lcom/join/mgps/adapter/b5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const p1, 0x7f090dc1

    .line 2
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lit/sephiroth/android/library/widget/HListView;

    iput-object p1, p0, Lcom/join/mgps/adapter/b5$g;->a:Lit/sephiroth/android/library/widget/HListView;

    return-void
.end method
