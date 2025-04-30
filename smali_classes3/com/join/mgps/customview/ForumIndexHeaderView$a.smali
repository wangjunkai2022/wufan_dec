.class Lcom/join/mgps/customview/ForumIndexHeaderView$a;
.super Ljava/lang/Object;
.source "ForumIndexHeaderView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/customview/ForumIndexHeaderView;->f(Lcom/facebook/drawee/view/SimpleDraweeView;Lcom/join/mgps/dto/BannerBean;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/Util/IntentDateBean;

.field final synthetic b:I

.field final synthetic c:Lcom/join/mgps/customview/ForumIndexHeaderView;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/ForumIndexHeaderView;Lcom/join/mgps/Util/IntentDateBean;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/ForumIndexHeaderView$a;->c:Lcom/join/mgps/customview/ForumIndexHeaderView;

    iput-object p2, p0, Lcom/join/mgps/customview/ForumIndexHeaderView$a;->a:Lcom/join/mgps/Util/IntentDateBean;

    iput p3, p0, Lcom/join/mgps/customview/ForumIndexHeaderView$a;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/ForumIndexHeaderView$a;->a:Lcom/join/mgps/Util/IntentDateBean;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/customview/ForumIndexHeaderView$a;->a:Lcom/join/mgps/Util/IntentDateBean;

    invoke-virtual {v0, p1, v1}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 4
    iget v0, p0, Lcom/join/mgps/customview/ForumIndexHeaderView$a;->b:I

    add-int/lit8 v0, v0, 0x1

    .line 5
    invoke-static {p1}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "banner1-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lcom/papa/sim/statistic/p;->r0(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
