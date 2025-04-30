.class Lcom/join/mgps/fragment/w3$a;
.super Ljava/lang/Object;
.source "PaPaStandAloneOverSeaFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/w3;->afterViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/fragment/w3;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/w3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/w3$a;->a:Lcom/join/mgps/fragment/w3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/mgps/fragment/w3$a;->a:Lcom/join/mgps/fragment/w3;

    iget-object p1, p1, Lcom/join/mgps/fragment/w3;->d:Lcom/join/mgps/customview/InterceptEventViewPager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/InterceptEventViewPager;->setCurrentItem(I)V

    return-void
.end method
