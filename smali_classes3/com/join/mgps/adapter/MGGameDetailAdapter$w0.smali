.class Lcom/join/mgps/adapter/MGGameDetailAdapter$w0;
.super Ljava/lang/Object;
.source "MGGameDetailAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/MGGameDetailAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "w0"
.end annotation


# instance fields
.field public a:Landroid/widget/TextView;

.field public b:Landroid/widget/RelativeLayout;

.field public c:Landroid/widget/TextView;

.field public d:Landroid/widget/TextView;

.field public e:Landroid/widget/TextView;

.field public f:Landroid/widget/LinearLayout;

.field final synthetic g:Lcom/join/mgps/adapter/MGGameDetailAdapter;


# direct methods
.method public constructor <init>(Lcom/join/mgps/adapter/MGGameDetailAdapter;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$w0;->g:Lcom/join/mgps/adapter/MGGameDetailAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const p1, 0x7f090517

    .line 2
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$w0;->b:Landroid/widget/RelativeLayout;

    const p1, 0x7f090708

    .line 3
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$w0;->a:Landroid/widget/TextView;

    const p1, 0x7f09127d

    .line 4
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$w0;->f:Landroid/widget/LinearLayout;

    .line 5
    invoke-virtual {p2, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method
