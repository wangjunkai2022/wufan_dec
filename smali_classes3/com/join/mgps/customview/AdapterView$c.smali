.class Lcom/join/mgps/customview/AdapterView$c;
.super Landroid/database/DataSetObserver;
.source "AdapterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/customview/AdapterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field private a:Landroid/os/Parcelable;

.field final synthetic b:Lcom/join/mgps/customview/AdapterView;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/AdapterView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/AdapterView$c;->b:Lcom/join/mgps/customview/AdapterView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/join/mgps/customview/AdapterView$c;->a:Landroid/os/Parcelable;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/join/mgps/customview/AdapterView$c;->a:Landroid/os/Parcelable;

    return-void
.end method

.method public onChanged()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/AdapterView$c;->b:Lcom/join/mgps/customview/AdapterView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/join/mgps/customview/AdapterView;->m:Z

    .line 2
    iget v1, v0, Lcom/join/mgps/customview/AdapterView;->s:I

    iput v1, v0, Lcom/join/mgps/customview/AdapterView;->t:I

    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/customview/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    iput v1, v0, Lcom/join/mgps/customview/AdapterView;->s:I

    .line 4
    iget-object v0, p0, Lcom/join/mgps/customview/AdapterView$c;->b:Lcom/join/mgps/customview/AdapterView;

    invoke-virtual {v0}, Lcom/join/mgps/customview/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/join/mgps/customview/AdapterView$c;->a:Landroid/os/Parcelable;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/join/mgps/customview/AdapterView$c;->b:Lcom/join/mgps/customview/AdapterView;

    iget v2, v1, Lcom/join/mgps/customview/AdapterView;->t:I

    if-nez v2, :cond_0

    iget v2, v1, Lcom/join/mgps/customview/AdapterView;->s:I

    if-lez v2, :cond_0

    .line 5
    invoke-static {v1, v0}, Lcom/join/mgps/customview/AdapterView;->a(Lcom/join/mgps/customview/AdapterView;Landroid/os/Parcelable;)V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/join/mgps/customview/AdapterView$c;->a:Landroid/os/Parcelable;

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/AdapterView$c;->b:Lcom/join/mgps/customview/AdapterView;

    invoke-virtual {v0}, Lcom/join/mgps/customview/AdapterView;->o()V

    .line 8
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/customview/AdapterView$c;->b:Lcom/join/mgps/customview/AdapterView;

    invoke-virtual {v0}, Lcom/join/mgps/customview/AdapterView;->d()V

    .line 9
    iget-object v0, p0, Lcom/join/mgps/customview/AdapterView$c;->b:Lcom/join/mgps/customview/AdapterView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method public onInvalidated()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/AdapterView$c;->b:Lcom/join/mgps/customview/AdapterView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/join/mgps/customview/AdapterView;->m:Z

    .line 2
    invoke-virtual {v0}, Lcom/join/mgps/customview/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/mgps/customview/AdapterView$c;->b:Lcom/join/mgps/customview/AdapterView;

    invoke-static {v0}, Lcom/join/mgps/customview/AdapterView;->b(Lcom/join/mgps/customview/AdapterView;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/customview/AdapterView$c;->a:Landroid/os/Parcelable;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/AdapterView$c;->b:Lcom/join/mgps/customview/AdapterView;

    iget v1, v0, Lcom/join/mgps/customview/AdapterView;->s:I

    iput v1, v0, Lcom/join/mgps/customview/AdapterView;->t:I

    const/4 v1, 0x0

    .line 5
    iput v1, v0, Lcom/join/mgps/customview/AdapterView;->s:I

    const/4 v2, -0x1

    .line 6
    iput v2, v0, Lcom/join/mgps/customview/AdapterView;->p:I

    const-wide/high16 v3, -0x8000000000000000L

    .line 7
    iput-wide v3, v0, Lcom/join/mgps/customview/AdapterView;->q:J

    .line 8
    iput v2, v0, Lcom/join/mgps/customview/AdapterView;->n:I

    .line 9
    iput-wide v3, v0, Lcom/join/mgps/customview/AdapterView;->o:J

    .line 10
    iput-boolean v1, v0, Lcom/join/mgps/customview/AdapterView;->f:Z

    .line 11
    invoke-virtual {v0}, Lcom/join/mgps/customview/AdapterView;->e()V

    .line 12
    iget-object v0, p0, Lcom/join/mgps/customview/AdapterView$c;->b:Lcom/join/mgps/customview/AdapterView;

    invoke-virtual {v0}, Lcom/join/mgps/customview/AdapterView;->d()V

    .line 13
    iget-object v0, p0, Lcom/join/mgps/customview/AdapterView$c;->b:Lcom/join/mgps/customview/AdapterView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method
