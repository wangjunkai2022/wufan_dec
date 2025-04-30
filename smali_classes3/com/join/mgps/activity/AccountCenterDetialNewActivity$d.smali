.class Lcom/join/mgps/activity/AccountCenterDetialNewActivity$d;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "AccountCenterDetialNewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/AccountCenterDetialNewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation


# instance fields
.field public a:Landroid/widget/TextView;

.field public b:Landroid/widget/LinearLayout;

.field public c:Landroid/view/View;

.field public d:Landroid/view/View;

.field final synthetic e:Lcom/join/mgps/activity/AccountCenterDetialNewActivity;


# direct methods
.method public constructor <init>(Lcom/join/mgps/activity/AccountCenterDetialNewActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/AccountCenterDetialNewActivity$d;->e:Lcom/join/mgps/activity/AccountCenterDetialNewActivity;

    .line 2
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f091023

    .line 3
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/activity/AccountCenterDetialNewActivity$d;->a:Landroid/widget/TextView;

    const p1, 0x7f0908c8

    .line 4
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/activity/AccountCenterDetialNewActivity$d;->d:Landroid/view/View;

    const p1, 0x7f0909c1

    .line 5
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/join/mgps/activity/AccountCenterDetialNewActivity$d;->b:Landroid/widget/LinearLayout;

    const p1, 0x7f090886

    .line 6
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/activity/AccountCenterDetialNewActivity$d;->c:Landroid/view/View;

    return-void
.end method
