.class Lcom/join/mgps/customview/ActivityTabView$c;
.super Ljava/lang/Object;
.source "ActivityTabView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/customview/ActivityTabView;->d(Lcom/join/mgps/dto/BtGameBenefitSummary;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dto/BtGameBenefitBean;

.field final synthetic b:Lcom/join/mgps/customview/ActivityTabView;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/ActivityTabView;Lcom/join/mgps/dto/BtGameBenefitBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/ActivityTabView$c;->b:Lcom/join/mgps/customview/ActivityTabView;

    iput-object p2, p0, Lcom/join/mgps/customview/ActivityTabView$c;->a:Lcom/join/mgps/dto/BtGameBenefitBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/mgps/customview/ActivityTabView$c;->b:Lcom/join/mgps/customview/ActivityTabView;

    invoke-static {p1}, Lcom/join/mgps/customview/ActivityTabView;->a(Lcom/join/mgps/customview/ActivityTabView;)Lcom/join/mgps/customview/ActivityTabView$d;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/join/mgps/customview/ActivityTabView$c;->b:Lcom/join/mgps/customview/ActivityTabView;

    invoke-static {p1}, Lcom/join/mgps/customview/ActivityTabView;->a(Lcom/join/mgps/customview/ActivityTabView;)Lcom/join/mgps/customview/ActivityTabView$d;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/customview/ActivityTabView$c;->a:Lcom/join/mgps/dto/BtGameBenefitBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/BtGameBenefitBean;->getJump_url()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/join/mgps/customview/ActivityTabView$d;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
