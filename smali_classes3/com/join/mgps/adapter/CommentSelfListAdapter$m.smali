.class Lcom/join/mgps/adapter/CommentSelfListAdapter$m;
.super Ljava/lang/Object;
.source "CommentSelfListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/CommentSelfListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "m"
.end annotation


# instance fields
.field a:Lit/sephiroth/android/library/widget/HListView;

.field final synthetic b:Lcom/join/mgps/adapter/CommentSelfListAdapter;


# direct methods
.method public constructor <init>(Lcom/join/mgps/adapter/CommentSelfListAdapter;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/CommentSelfListAdapter$m;->b:Lcom/join/mgps/adapter/CommentSelfListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const p1, 0x7f090488

    .line 2
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lit/sephiroth/android/library/widget/HListView;

    iput-object p1, p0, Lcom/join/mgps/adapter/CommentSelfListAdapter$m;->a:Lit/sephiroth/android/library/widget/HListView;

    return-void
.end method
