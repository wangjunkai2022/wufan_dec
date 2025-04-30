.class Lcom/youth/banner/Banner$b$b;
.super Ljava/lang/Object;
.source "Banner.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youth/banner/Banner$b;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/youth/banner/Banner$b;


# direct methods
.method constructor <init>(Lcom/youth/banner/Banner$b;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/youth/banner/Banner$b$b;->b:Lcom/youth/banner/Banner$b;

    iput p2, p0, Lcom/youth/banner/Banner$b$b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/youth/banner/Banner$b$b;->b:Lcom/youth/banner/Banner$b;

    iget-object p1, p1, Lcom/youth/banner/Banner$b;->a:Lcom/youth/banner/Banner;

    invoke-static {p1}, Lcom/youth/banner/Banner;->k(Lcom/youth/banner/Banner;)Lv2/b;

    move-result-object p1

    iget-object v0, p0, Lcom/youth/banner/Banner$b$b;->b:Lcom/youth/banner/Banner$b;

    iget-object v0, v0, Lcom/youth/banner/Banner$b;->a:Lcom/youth/banner/Banner;

    iget v1, p0, Lcom/youth/banner/Banner$b$b;->a:I

    invoke-virtual {v0, v1}, Lcom/youth/banner/Banner;->L(I)I

    move-result v0

    invoke-interface {p1, v0}, Lv2/b;->OnBannerClick(I)V

    return-void
.end method
