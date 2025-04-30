.class Lcom/join/mgps/Util/i0$b;
.super Ljava/lang/Object;
.source "ForumUtil.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/Util/i0;->E1(Landroid/view/View;Lcom/join/mgps/Util/IntentDateBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/Util/IntentDateBean;


# direct methods
.method constructor <init>(Lcom/join/mgps/Util/IntentDateBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/i0$b;->a:Lcom/join/mgps/Util/IntentDateBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/i0$b;->a:Lcom/join/mgps/Util/IntentDateBean;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/join/mgps/Util/i0$b;->a:Lcom/join/mgps/Util/IntentDateBean;

    invoke-virtual {v0, p1, v1}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    return-void
.end method
