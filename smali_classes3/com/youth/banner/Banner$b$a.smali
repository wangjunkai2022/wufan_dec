.class Lcom/youth/banner/Banner$b$a;
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
    iput-object p1, p0, Lcom/youth/banner/Banner$b$a;->b:Lcom/youth/banner/Banner$b;

    iput p2, p0, Lcom/youth/banner/Banner$b$a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/youth/banner/Banner$b$a;->b:Lcom/youth/banner/Banner$b;

    iget-object p1, p1, Lcom/youth/banner/Banner$b;->a:Lcom/youth/banner/Banner;

    iget-object p1, p1, Lcom/youth/banner/Banner;->a:Ljava/lang/String;

    .line 2
    iget-object p1, p0, Lcom/youth/banner/Banner$b$a;->b:Lcom/youth/banner/Banner$b;

    iget-object p1, p1, Lcom/youth/banner/Banner$b;->a:Lcom/youth/banner/Banner;

    invoke-static {p1}, Lcom/youth/banner/Banner;->j(Lcom/youth/banner/Banner;)Lv2/a;

    move-result-object p1

    iget v0, p0, Lcom/youth/banner/Banner$b$a;->a:I

    invoke-interface {p1, v0}, Lv2/a;->OnBannerClick(I)V

    return-void
.end method
