.class Lcom/join/mgps/adapter/o5$a;
.super Ljava/lang/Object;
.source "SimpleCarouselAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/o5;->c(Landroid/view/ViewGroup;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/join/mgps/adapter/o5;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/o5;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/o5$a;->b:Lcom/join/mgps/adapter/o5;

    iput p2, p0, Lcom/join/mgps/adapter/o5$a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/join/mgps/adapter/o5$a;->b:Lcom/join/mgps/adapter/o5;

    invoke-static {p1}, Lcom/join/mgps/adapter/o5;->d(Lcom/join/mgps/adapter/o5;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/join/mgps/adapter/o5$a;->a:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/BannerBean;

    invoke-static {p1, v0}, Lcom/join/mgps/adapter/o5;->e(Lcom/join/mgps/adapter/o5;Lcom/join/mgps/dto/BannerBean;)V

    return-void
.end method
