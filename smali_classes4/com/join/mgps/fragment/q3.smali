.class public Lcom/join/mgps/fragment/q3;
.super Lcom/join/mgps/fragment/d;
.source "NewGameFragment.java"


# annotations
.annotation build Lorg/androidannotations/annotations/EFragment;
    value = 0x7f0c04e1
.end annotation


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private d:Landroid/widget/TextView;

.field private e:I

.field private f:Z

.field private g:Z

.field private h:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/fragment/d;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/join/mgps/fragment/q3;->a:I

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lcom/join/mgps/fragment/q3;->b:I

    const/4 v0, 0x2

    .line 4
    iput v0, p0, Lcom/join/mgps/fragment/q3;->c:I

    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/join/mgps/fragment/q3;->e:I

    return-void
.end method


# virtual methods
.method afterViews()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    return-void
.end method

.method protected lazyLoad()V
    .locals 0

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/join/mgps/fragment/q3;->h:Landroid/view/View;

    if-nez p2, :cond_0

    const p2, 0x7f0c04e1

    const/4 p3, 0x0

    .line 2
    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/fragment/q3;->h:Landroid/view/View;

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/join/mgps/fragment/q3;->f:Z

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/fragment/q3;->h:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    .line 5
    iget-object p2, p0, Lcom/join/mgps/fragment/q3;->h:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/fragment/q3;->h:Landroid/view/View;

    return-object p1
.end method
