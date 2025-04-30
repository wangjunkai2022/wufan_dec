.class Lcom/join/mgps/adapter/CommentSelfListAdapter$n;
.super Ljava/lang/Object;
.source "CommentSelfListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/CommentSelfListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "n"
.end annotation


# instance fields
.field a:Landroid/widget/ImageView;

.field b:Lcom/facebook/drawee/view/SimpleDraweeView;

.field c:Landroid/widget/TextView;

.field d:Landroid/widget/ImageView;

.field e:Landroid/widget/ImageView;

.field f:Landroid/widget/TextView;

.field g:Landroid/widget/LinearLayout;

.field h:Lcom/join/mgps/customview/VipView;

.field final synthetic i:Lcom/join/mgps/adapter/CommentSelfListAdapter;


# direct methods
.method public constructor <init>(Lcom/join/mgps/adapter/CommentSelfListAdapter;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/CommentSelfListAdapter$n;->i:Lcom/join/mgps/adapter/CommentSelfListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const p1, 0x7f091018

    .line 2
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/join/mgps/adapter/CommentSelfListAdapter$n;->a:Landroid/widget/ImageView;

    const p1, 0x7f09122b

    .line 3
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object p1, p0, Lcom/join/mgps/adapter/CommentSelfListAdapter$n;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    const p1, 0x7f091237

    .line 4
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/adapter/CommentSelfListAdapter$n;->c:Landroid/widget/TextView;

    const p1, 0x7f091002

    .line 5
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/adapter/CommentSelfListAdapter$n;->f:Landroid/widget/TextView;

    const p1, 0x7f09100c

    .line 6
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/join/mgps/adapter/CommentSelfListAdapter$n;->g:Landroid/widget/LinearLayout;

    const p1, 0x7f091293

    .line 7
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/join/mgps/adapter/CommentSelfListAdapter$n;->d:Landroid/widget/ImageView;

    const p1, 0x7f090f05

    .line 8
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/customview/VipView;

    iput-object p1, p0, Lcom/join/mgps/adapter/CommentSelfListAdapter$n;->h:Lcom/join/mgps/customview/VipView;

    const p1, 0x7f090e2d

    .line 9
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/join/mgps/adapter/CommentSelfListAdapter$n;->e:Landroid/widget/ImageView;

    return-void
.end method
