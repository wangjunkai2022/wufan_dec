.class Lcom/join/mgps/activity/HavenDownActivity$b;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "HavenDownActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/HavenDownActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field a:Landroid/widget/TextView;

.field b:Landroid/widget/TextView;

.field c:Landroid/view/View;

.field d:Lcom/facebook/drawee/view/SimpleDraweeView;

.field e:Landroid/view/View;

.field f:Landroid/view/View;

.field final synthetic g:Lcom/join/mgps/activity/HavenDownActivity;


# direct methods
.method public constructor <init>(Lcom/join/mgps/activity/HavenDownActivity;Landroid/view/View;)V
    .locals 0
    .param p1    # Lcom/join/mgps/activity/HavenDownActivity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/HavenDownActivity$b;->g:Lcom/join/mgps/activity/HavenDownActivity;

    .line 2
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0902eb

    .line 3
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/activity/HavenDownActivity$b;->a:Landroid/widget/TextView;

    const p1, 0x7f0900e1

    .line 4
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/activity/HavenDownActivity$b;->b:Landroid/widget/TextView;

    const p1, 0x7f09034a

    .line 5
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/activity/HavenDownActivity$b;->c:Landroid/view/View;

    const p1, 0x7f090687

    .line 6
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object p1, p0, Lcom/join/mgps/activity/HavenDownActivity$b;->d:Lcom/facebook/drawee/view/SimpleDraweeView;

    const p1, 0x7f090563

    .line 7
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/activity/HavenDownActivity$b;->e:Landroid/view/View;

    const p1, 0x7f0909eb

    .line 8
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/activity/HavenDownActivity$b;->f:Landroid/view/View;

    return-void
.end method
