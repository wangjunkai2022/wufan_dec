.class public Lcom/join/mgps/recycler/b;
.super Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.source "HeaderSpanSizeLookup.java"


# instance fields
.field private a:Lcom/join/mgps/recycler/a;

.field private b:I


# direct methods
.method public constructor <init>(Lcom/join/mgps/recycler/a;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/join/mgps/recycler/b;->b:I

    .line 3
    iput-object p1, p0, Lcom/join/mgps/recycler/b;->a:Lcom/join/mgps/recycler/a;

    .line 4
    iput p2, p0, Lcom/join/mgps/recycler/b;->b:I

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/recycler/b;->a:Lcom/join/mgps/recycler/a;

    invoke-virtual {v0, p1}, Lcom/join/mgps/recycler/a;->g(I)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/join/mgps/recycler/b;->a:Lcom/join/mgps/recycler/a;

    invoke-virtual {v0, p1}, Lcom/join/mgps/recycler/a;->f(I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-eqz p1, :cond_2

    .line 2
    iget v1, p0, Lcom/join/mgps/recycler/b;->b:I

    :cond_2
    return v1
.end method
