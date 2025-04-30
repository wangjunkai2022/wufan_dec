.class Lcom/join/mgps/fragment/f$a$a;
.super Ljava/lang/Object;
.source "CardViewPagerFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/f$a;->onSelected(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/join/mgps/fragment/f$a;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/f$a;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/f$a$a;->b:Lcom/join/mgps/fragment/f$a;

    iput p2, p0, Lcom/join/mgps/fragment/f$a$a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/f$a$a;->b:Lcom/join/mgps/fragment/f$a;

    iget-object v0, v0, Lcom/join/mgps/fragment/f$a;->a:Lcom/join/mgps/fragment/f;

    invoke-static {v0}, Lcom/join/mgps/fragment/f;->O(Lcom/join/mgps/fragment/f;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v0

    iget v1, p0, Lcom/join/mgps/fragment/f$a$a;->a:I

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    return-void
.end method
