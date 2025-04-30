.class Lcom/join/mgps/adapter/CommentSelfListAdapter$o;
.super Ljava/lang/Object;
.source "CommentSelfListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/CommentSelfListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "o"
.end annotation


# instance fields
.field public a:Landroid/widget/TextView;

.field public b:Landroid/widget/LinearLayout;

.field public c:Landroid/view/View;

.field public d:Landroid/view/View;

.field final synthetic e:Lcom/join/mgps/adapter/CommentSelfListAdapter;


# direct methods
.method public constructor <init>(Lcom/join/mgps/adapter/CommentSelfListAdapter;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/CommentSelfListAdapter$o;->e:Lcom/join/mgps/adapter/CommentSelfListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const p1, 0x7f091023

    .line 2
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/adapter/CommentSelfListAdapter$o;->a:Landroid/widget/TextView;

    const p1, 0x7f0908c8

    .line 3
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/adapter/CommentSelfListAdapter$o;->d:Landroid/view/View;

    const p1, 0x7f0909c1

    .line 4
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/join/mgps/adapter/CommentSelfListAdapter$o;->b:Landroid/widget/LinearLayout;

    const p1, 0x7f090886

    .line 5
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/adapter/CommentSelfListAdapter$o;->c:Landroid/view/View;

    return-void
.end method
