.class public Lcom/join/mgps/adapter/n2;
.super Landroid/widget/BaseAdapter;
.source "HotVoucherAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/adapter/n2$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/AccountVoucherGameBean;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/view/LayoutInflater;

.field private c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/AccountVoucherGameBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/adapter/n2;->b:Landroid/view/LayoutInflater;

    .line 3
    iput-object p1, p0, Lcom/join/mgps/adapter/n2;->c:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lcom/join/mgps/adapter/n2;->a:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/adapter/n2;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/n2;->c:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/n2;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/n2;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    if-nez p2, :cond_0

    .line 1
    iget-object p2, p0, Lcom/join/mgps/adapter/n2;->b:Landroid/view/LayoutInflater;

    const p3, 0x7f0c039f

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 2
    new-instance p3, Lcom/join/mgps/adapter/n2$a;

    invoke-direct {p3, p0, p2}, Lcom/join/mgps/adapter/n2$a;-><init>(Lcom/join/mgps/adapter/n2;Landroid/view/View;)V

    .line 3
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/adapter/n2$a;

    .line 5
    :goto_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/n2;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/AccountVoucherGameBean;

    invoke-virtual {p3, p1}, Lcom/join/mgps/adapter/n2$a;->a(Lcom/join/mgps/dto/AccountVoucherGameBean;)V

    return-object p2
.end method
